# OPC UA Binding for Web of Things

## Big picture of the WoT Thing Description for OPC UA servers

<img width="1103" height="478" alt="image" src="https://github.com/user-attachments/assets/a08214d3-1cca-4bdd-92ff-f16154b94c10" />


## OPC UA security metadata in WoT Thing Description
### Option I
The [Option I TD](https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/TD/OPC%20UA/1%3ACoffeeMachineA_OptionI.td.json) includes all security definitions in one opcua scheme:

```json
    "securityDefinitions": {
        "opcua_sc": {
            "scheme": "opcua",
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

