﻿{"trainDialogs":[],"actions":[{"actionId":"53919dc4-1ee9-471d-9af9-4cec7eae04bb","createdDateTime":"2019-05-09T17:58:02.060973+00:00","actionType":"SET_ENTITY","payload":"{\"entityId\":\"54ece478-a4ce-4fc3-b4bd-d30a308b9837\",\"enumValueId\":\"c6e51138-8a10-4869-a1aa-b5ffbc95fc89\"}","isTerminal":false,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[],"entityId":"54ece478-a4ce-4fc3-b4bd-d30a308b9837","enumValueId":"c6e51138-8a10-4869-a1aa-b5ffbc95fc89"},{"actionId":"4844115b-5d8f-49b3-820c-208495196704","createdDateTime":"2019-05-09T17:58:02.0612438+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What size drink would you like?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[]},{"actionId":"15990e39-a555-48c0-aaca-0d4d8a09437b","createdDateTime":"2019-05-09T17:58:02.0612602+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What size fries would you like?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[]},{"actionId":"ccb6911b-5e03-4aa7-be88-616ddbf4d780","createdDateTime":"2019-05-09T17:58:02.0612671+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Would you like any condiments?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[]},{"actionId":"3f810a13-4e2a-4e86-b011-5b455e45380c","createdDateTime":"2019-05-09T17:58:02.0612735+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Ok, I have an order for a \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"54ece478-a4ce-4fc3-b4bd-d30a308b9837\",\"name\":\"drinkSize\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$drinkSize\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" drink and \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"21175018-7eee-465b-998a-35b848c93d7e\",\"name\":\"friesSize\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$friesSize\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" fries. Is that correct?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["54ece478-a4ce-4fc3-b4bd-d30a308b9837","21175018-7eee-465b-998a-35b848c93d7e"],"requiredEntities":["54ece478-a4ce-4fc3-b4bd-d30a308b9837","21175018-7eee-465b-998a-35b848c93d7e"],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[]},{"actionId":"ba2eadaf-f89c-455d-bcfd-680a91abd185","createdDateTime":"2019-05-09T17:58:02.0612834+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Ok, your order number is 58. Please wait over there.\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[]},{"actionId":"39d3eca5-6b2a-4d10-a46c-c740811ded3e","createdDateTime":"2019-05-09T18:46:56.8384893+00:00","actionType":"SET_ENTITY","payload":"{\"entityId\":\"54ece478-a4ce-4fc3-b4bd-d30a308b9837\",\"enumValueId\":\"05dadd04-3639-46e7-88f2-c73cdb975dec\"}","isTerminal":false,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[],"entityId":"54ece478-a4ce-4fc3-b4bd-d30a308b9837","enumValueId":"05dadd04-3639-46e7-88f2-c73cdb975dec"},{"actionId":"6d86dfc8-adf4-4fce-aa92-6d6e12622329","createdDateTime":"2019-05-09T18:48:12.5390213+00:00","actionType":"SET_ENTITY","payload":"{\"entityId\":\"21175018-7eee-465b-998a-35b848c93d7e\",\"enumValueId\":\"4a162c7a-892b-4bd5-a4f3-7fa5a5c8e2de\"}","isTerminal":false,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[],"entityId":"21175018-7eee-465b-998a-35b848c93d7e","enumValueId":"4a162c7a-892b-4bd5-a4f3-7fa5a5c8e2de"},{"actionId":"bf74f3a1-f92b-4a25-8459-dc3151759a5a","createdDateTime":"2019-05-09T18:48:49.9815247+00:00","actionType":"SET_ENTITY","payload":"{\"entityId\":\"2fad5b5e-b8cf-418b-8256-bb7d48f782de\",\"enumValueId\":\"5cc2ab83-c79a-4068-a724-86e5190e2463\"}","isTerminal":false,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[],"entityId":"2fad5b5e-b8cf-418b-8256-bb7d48f782de","enumValueId":"5cc2ab83-c79a-4068-a724-86e5190e2463"},{"actionId":"fcf18657-f7db-4c87-acb8-28ca58c2ef80","createdDateTime":"2019-05-09T18:49:18.0066953+00:00","actionType":"SET_ENTITY","payload":"{\"entityId\":\"c7bede06-915a-4d16-922b-e1d49f226799\",\"enumValueId\":\"45643732-5c60-4efc-8161-bd26aab1b8aa\"}","isTerminal":false,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[],"requiredConditions":[],"negativeConditions":[],"entityId":"c7bede06-915a-4d16-922b-e1d49f226799","enumValueId":"45643732-5c60-4efc-8161-bd26aab1b8aa"}],"entities":[{"entityId":"54ece478-a4ce-4fc3-b4bd-d30a308b9837","createdDateTime":"2019-05-09T17:58:02.0608563+00:00","entityName":"drinkSize","entityType":"ENUM","isMultivalue":false,"isNegatible":false,"enumValues":[{"enumValueId":"c6e51138-8a10-4869-a1aa-b5ffbc95fc89","enumValue":"SMALL"},{"enumValueId":"5e898619-bbbd-4f65-9aaf-50c9957d6ef7","enumValue":"MEDIUM"},{"enumValueId":"05dadd04-3639-46e7-88f2-c73cdb975dec","enumValue":"LARGE"},{"enumValueId":"e9622036-aff9-4034-ab5d-723e1dd0f6b5","enumValue":"DELETABLE"}]},{"entityId":"21175018-7eee-465b-998a-35b848c93d7e","createdDateTime":"2019-05-09T17:58:02.0608885+00:00","entityName":"friesSize","entityType":"ENUM","isMultivalue":false,"isNegatible":false,"enumValues":[{"enumValueId":"4a162c7a-892b-4bd5-a4f3-7fa5a5c8e2de","enumValue":"SMALL"},{"enumValueId":"d2187870-b131-4442-a2ca-b053b61d0488","enumValue":"MEDIUM"},{"enumValueId":"f6d81556-682c-4745-a6f7-8e76a8167553","enumValue":"LARGE"}]},{"entityId":"c7bede06-915a-4d16-922b-e1d49f226799","createdDateTime":"2019-05-09T17:58:02.0609299+00:00","entityName":"orderConfirmation","entityType":"ENUM","isMultivalue":false,"isNegatible":false,"enumValues":[{"enumValueId":"45643732-5c60-4efc-8161-bd26aab1b8aa","enumValue":"YES"},{"enumValueId":"c4a67735-8b0e-40b4-a0e1-6f0901e14e91","enumValue":"NO"}]},{"entityId":"2fad5b5e-b8cf-418b-8256-bb7d48f782de","createdDateTime":"2019-05-09T17:58:02.0609575+00:00","entityName":"condimentsConfirmation","entityType":"ENUM","isMultivalue":false,"isNegatible":false,"enumValues":[{"enumValueId":"43959145-4633-45b3-9d37-417635df67d4","enumValue":"YES"},{"enumValueId":"5cc2ab83-c79a-4068-a724-86e5190e2463","enumValue":"NO"}]}],"packageId":"15c3da82-4f49-4064-8bbb-59790153650b"}