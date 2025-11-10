# OPC UA Binding for Web of Things

## WoT Thing Description for OPC UA servers

<img width="1103" height="478" alt="image" src="https://github.com/user-attachments/assets/a08214d3-1cca-4bdd-92ff-f16154b94c10" />


## OPC UA security metadata in WoT Thing Description
### Option I
The CoffeeMachine [Option I TD](https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/TD/OPC%20UA/1%3ACoffeeMachineA_OptionI.td.json) includes all security definitions in one opcua scheme:

```json
    "securityDefinitions": {
        "opcua_sc": {
            "scheme": "uav:opcua",
            "securityMode": [
                "None",
                "Sign",
                "SignAndEncrypt"
            ],
            "securityPolicy": [
                "None",
                "Basic256Sha256",
                "Aes128_Sha256_RsaOaep",
                "Aes256_Sha256_RsaPss"
            ],
            "userIdentityTokens": [
                "UserName",
                "Certificate",
                "Anonymous"
            ]
        }
    },
    "security": "opcua_sc"
```

### Option II
The Coffee Machine [Option II TD](https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/TD/OPC%20UA/1%3ACoffeeMachineA_OptionII.td.json) defines different schemes for the channel and authendication options. The combo tells you about that both security information needs to be considered:

```json
    "securityDefinitions": {
        "opcuaChannel_sc": {
            "scheme": "uav:channel",
            "securityMode": [
                "None",
                "Sign",
                "SignAndEncrypt"
            ],
            "securityPolicy": [
                "None",
                "Basic256Sha256",
                "Aes128_Sha256_RsaOaep",
                "Aes256_Sha256_RsaPss"
            ]
        },
        "opcuaAuthentication_sc": {
            "scheme": "uav:authentication",
            "userIdentityTokens": [
                "UserName",
                "Certificate",
                "Anonymous"
            ]
        },
        "combo_sc": {
            "scheme": "combo",
            "allOff": [
                "opcuaChannel_sc",
                "opcuaAuthentication_sc"
            ]
        }
    },
    "security": "combo_sc",
```
