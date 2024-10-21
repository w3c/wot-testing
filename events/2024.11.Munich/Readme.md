# WoT Week at Munich (DRAFT)

The logistics can be found at https://www.w3.org/WoT/IG/wiki/Wiki_for_WoT_Week_2024_planning.
In this folder, technical information is found, such as test plans for features.

The main goal of this plugfest is to test the feasibility of existing and new features of WoT standards.
As a secondary goal, these tests will be put into user scenarios that are understandable by visitors.
Stakeholders from related SDOs are welcome to contribute.

## List of Things that will be available for the PlugFest

| Organization | Things/Devices/System/Tools                   | Physical | Remote | Virtual | Protocol Supported | Infrastructure requirements, e.g., open ports, power sockets, Wifi | Comments                                            |Contact|
|--------------|-----------------------------------------------|----------|--------|---------|--------------------|--------------------------------------------------------------------|-----------------------------------------------------|-------|
| Siemens      | Sentron PAC (energy meter)                    |  x       |        |         | Modbus             | LAN                                                                |                                                     |   tbc |
| Siemens      | Industrial Edge                               |  x       |        |         | OPC UA, HTTP       | LAN, connection to the Internet                                    |                                                     |   tbc |
| Siemens      | Microscope (Openflexure)                      |  x       |        |         | HTTP               | LAN                                                                |                                                     |   @egekorkan |
| TU Munich    | Robot arm                                     |  x       |        |         | HTTP               | 2m high, 4m width; LAN/Wifi (no Internet); should be protected     |                                                     |   @FadySalama |
| TU Munich    | Philips Hue Lamp and Switch                   |  x       |        |         | HTTP               | LAN                                                                |                                                     |   @FadySalama |
| TU Munich    | Diff. rem. devices (raspberry pi,etc)         |          | x      |         | HTTP               | Internet                                                           |                                                     |   @FadySalama |
| TU Munich    | Simulated devices (robot arms)                |          |        | x       | HTTP but flexible  | LAN/Wifi                                                           |                                                     |   @FadySalama |
| Luminem      | Simulated devices (TBC)                       |  x       |        | x       |                    | Laptop to run them locally                                         |                                                     |   @lu-zero |
| Intel        | Services (AI, Speech Recog.)                  |  x       | x      | x       | HTTP?              |                                                                    | Some services can be run locally by someone else    |   @mmccool |
| ArmorSafe    | Cache System 7000                             |  x       |        |         | HTTP?              |                                                                    | Each time someone deposits cash, it emits an event  |   Michael Robins and Denis Ioan |
| Ignite Retail| IP Camera                                     |  x       |        |         |                    |                                                                    |                                                     |   Josh Thomas |
| Uni St. Gallen |  YggDrasil                                  |          |        | x       | HTTP               | LAN                                                                | Working on participant's laptop                     | https://github.com/jeremylemee |
| CALA Munich  | Oscilloscope (Picoscope brand)                |  x       |        |         |                    | LAN                                                                |                                                     |   @VigneshVSV |
| CALA Munich  | Ethernet Camera (IDS GmbH brand)              |  x       |        |         |                    | LAN                                                                |                                                     |   @VigneshVSV |
| ...          |     ...                                       |          |        |         |                    | ...                                                                |  ...                                                |   tbc |

## List of Consumers that will be available for the PlugFest

| Organization | Application                                   | Physical | Remote | Virtual | Protocol Supported | Infrastructure requirements, e.g., open ports, power sockets, Wifi | Comments                                            |Contact|
|--------------|-----------------------------------------------|----------|--------|---------|--------------------|-------------------------------------------------------------------|-----------------------------------------------------|-------|
| IgniteRetail | Command Center                                | x        | x      |         |                    |                                                                    | Can be deployed locally or cloud                    | Josh Thomas |
| TU Munich    | Hololens                                      |  x       |        |         | HTTP               | Wifi                                                               | no sec should be used; QR code to TD is needed      |   tbc |
| UC Dublins   | ASTRA/MAMS Platform                           |  X       |        |         |                    |                                                                    |  Multi agent system platform (only software)        | https://github.com/RemCollier |
| Uni St. Gallen |  YggDrasil                                  |          |        |  X      | HTTP               | ...                                                                |  ...                                                | https://github.com/jeremylemee |
| ...          |     ...                                       |          |        |         |                    | ...                                                                |  ...                                                |   tbc |

Notes: 

* We must clarify which devices are used for which scenarios and context (e.g., OPC UA, Cloud, ECHONET, Smart City, Conexxus etc.).
* We need to clarify which participants can only join remotely. Is there an open connection to the local PlugFest network?
* Detail information about the Things can be provided in specific subfolders of this GitHub (e.g. folders by company name)
* We need to clarify if we need a VPN connection. W3C may provide one.
* We should run a trial run two weeks before the PlugFest.

## WIP - User Scenarios

Different tests we do can be placed into context, e.g., smart cities. 
This way, they can relate better once we present WoT to the visitors.

Some ideas:

* Smart City
  * maybe a topic that can be discussed with the NGSI-LD cooperation
* WoT for Cloud Systems
  * maybe Azure IoT from Microsoft and Oracle Cloud (TBC)
* Plug & Play in Industrial Scenarios
  * includes semantics usage in domain models (e.g., Brick, OPC UA, etc)   
* Retail (David)
  * Correlation of cash depositing on the safe with IP camera detecting the same
  * Showing cash depositing events in a dashboard
  * Refrigerator Temperature monitoring (Ignite Retail and McCool)
  * People counting with different sensors or cameras (Ignite Retail as Consumer, Thing?)
  * Energy Consumption Monitoring (Siemens Energy Meter, Siemens? Gateway, Ignite Retail Consumer)
* Smart Home (McCool)

## WIP - TD Topics

### Existing Features

We should ensure that the existing features the implementers have questions about are correctly specified. All these points are prioritized over new features.

* Additional Responses
  * Error Handling on the application level (Scripting API is connected here)
    * it would be good to have a real-world example  
  * Multiple possible successful responses
    * query-able actions?
    * in Discovery API are examples where multiple responses are provided 
  * Default behavior (is it a normal response or is it an additional one)
* Linking between TDs
* Specifying multiple `@type`s to TDs: This confuses people. We need more guidance.
* Complex actions: Async and sync
* Meta Operations (top-level form operations): Are they implemented correctly? This will be prioritized and identified gaps could be addressed as new meta operations.

### New Features

We should experiment with the new features we are planning and collect implementation experience.
  
* Initial connection
* [Data Mapping:](https://github.com/w3c/wot/blob/main/planning/ThingDescription/td-next-work-items/usability-and-design.md#data-schema-mapping) This topic will be prioritized. It also related to additional responses existing feature mentioned above.
* "Normative" Consumer Behavior: Degradation, Expected behavior. Writing what a Consumer is expected to do for a TD. This will be prioritized, and its results will be used for the Interoperability Test Suite topic below.
* Interoperability Test Suite: Given a TD, can a Consumer application fully interact with it? This strongly relates to the normative consumption above.
* New meta operations

## WIP - Other Topics

* Top-level operation for observing changes to TD (needs further discussion)
* Discovery interface of Scripting API
* AMQP Binding
* OPC UA Binding 
