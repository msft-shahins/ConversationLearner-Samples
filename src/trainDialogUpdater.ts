import {cl} from './app'
import { CLMemory } from '@conversationlearner/sdk/lib/CLMemory'
import * as CLM from '@conversationlearner/models'
import {TrainDialogList} from '@conversationlearner/models'
import * as BB from 'botbuilder'
import * as fs from 'fs'
import * as util from 'util'


let userAccount = <BB.ChannelAccount>{ id : 'testUser'}
let conversationReference = <BB.ConversationReference>{activityId: 'testActivity', conversation : <BB.ChannelAccount> {id : 'testConversation'}}
const readFile = util.promisify(fs.readFile)
const writeFile = util.promisify(fs.writeFile)

async function UpdateTrainDialog(appId: string, trainDialogsFile: string) {
    const dialogs = <TrainDialogList>JSON.parse(await readFile(trainDialogsFile, 'utf8'))
    // initialize cl memory
    let clMemory = await CLMemory.InitMemory(userAccount, conversationReference)
    
    // get app source
    let clApp = await cl.clRunner.clClient.GetApp(appId)
    let clAppSource = await cl.clRunner.clClient.GetAppSource(appId, clApp.devPackageId as string)
    let clEntities = clAppSource.entities
    let clActions = clAppSource.actions
    for(let trainDialog of dialogs.trainDialogs)
    {
        // reset bot memory
        await  clMemory.BotMemory.ClearAsync()
        let map = CLM.FilledEntityMap.FromFilledEntities([], clEntities)
        await clMemory.BotMemory.RestoreFromMapAsync(map)

        for (let round of trainDialog.rounds) {
            let text = round.extractorStep.textVariations[0].text
            // map labeled entities to predicted entities
            let predEntities =  CLM.ModelUtils.ToPredictedEntities(round.extractorStep.textVariations[0].labelEntities)
            // call the entity detection callback to get the scorerInput
            let scorerInput = await cl.clRunner.CallEntityDetectionCallback(text, predEntities, clMemory, clEntities)

            for (let [idx, step] of round.scorerSteps.entries()) {
                if(idx == 0)
                {
                    step.input = scorerInput
                }
                let curAction = clActions.filter((a: CLM.ActionBase) => a.actionId === step.labelAction)[0]
                if (curAction) {
                    // update filledEntities based on current state of memory
                    let filledEntityMap = await clMemory.BotMemory.FilledEntityMap()
                    step.input.filledEntities = filledEntityMap.FilledEntities()
                     // Run APIAction to update the FilledEntities
                     if (curAction.actionType === CLM.ActionTypes.API_LOCAL) {
                        const apiAction = new CLM.ApiAction(curAction)
                        await cl.clRunner.TakeLocalAPIAction(apiAction, filledEntityMap, clMemory, clEntities, true)
                    } else if (curAction.actionType === CLM.ActionTypes.END_SESSION) {
                        const sessionAction = new CLM.SessionAction(curAction)
                        let sessionInfo = await clMemory.BotState.SessionInfoAsync();
                        await cl.clRunner.TakeSessionAction(sessionAction, filledEntityMap, true, sessionInfo.userId, null)
                    }
                }    
            }
        }
    }
    await writeFile(trainDialogsFile, JSON.stringify(dialogs))
}

UpdateTrainDialog('940a61e6-91db-4f9b-ae63-133bb83970a2', '.\\src\\trainDialogs.json').then(()=> console.log('Updated TrainDialogs')).catch(err => console.error(err));




