/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, FileStorage, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'

const server = express()
const { bfAppId, bfAppPassword, modelId, ...clOptions } = config
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)
const includeSdk = ['development', 'test'].includes(process.env.NODE_ENV || '')
if (includeSdk) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)

    // Note: Must be mounted at root to use internal /ui paths
    console.log(chalk.greenBright(`Adding /ui routes`))
    server.use(uiRouter)
}

server.use(express.static(path.join(__dirname, '..', 'site')))

const cl = new ConversationLearner(modelId)

cl.AddCallback<number>({
    name: "Add",
    logic: async (memoryManager, arg1: string, arg2: string) => {
        return [arg1, arg2]
            .map(x => parseInt(x))
            .reduce((sum, a) => sum += a, 0)
    },
    render: async result => `Add result is: ${result}`
})

server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        const result = await cl.recognize(context)

        if (result) {
            return cl.SendResult(result);
        }
    })
})

export default server