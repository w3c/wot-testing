# WoT Week at Munich

The logistics can be found at https://www.w3.org/WoT/IG/wiki/Wiki_for_WoT_Week_2024_planning.
In this folder, technical information is found, such as test plans for features.

The main goal of this plugfest is to test the feasibility of existing and new features of WoT standards.
As a secondary goal, these tests will be put into user scenarios that are understandable by visitors.
Stakeholders from related SDOs are welcome to contribute.

## Provided Infrastructure

Hardware:

* 3 times 8-Port Switches
* 2 times 24-Port Switches
* Router and WiFi Access Point
* 2 times 20m Ethernet Cables

Network:

* If you are **not** in the Plugfest network, you need to join Siemens Guest network by asking for a Siemens employee to be your contact person. Please give the email of Siemens employee you know in the login page. If you need to make a video conference with someone, please use this option to not strain the plugfest network.
* All devices that join the Plugfest network can connect to the public internet as a client.
* All devices in the Plugfest network can act as a server in the local network.
* Use the VPN instructions provided at https://lists.w3.org/Archives/Group/group-wot-plugfest/ to become part of the VPN.
* To be configured: All devices that join the Plugfest network will be part of the VPN setup.

## What you should bring with you 

* Extension cable and multiple socket outlet
* If needed, power travel adapter
* Ethernet cable
* If possible, WiFi extender or small WLAN router with WiFi to LAN option


## List of Things that will be available for the PlugFest

| Organization | Things/Devices/System/Tools                   | Physical | Remote | Virtual | Protocol Supported | Infrastructure requirements, e.g., open ports, power sockets, Wifi | Comments                                                     | Contact | TD Link |
|--------------|-----------------------------------------------|----------|--------|---------|--------------------|--------------------------------------------------------------------|--------------------------------------------------------------|-------|--|
| Siemens      | Sentron PAC (energy meter)                    |  x       |        |         | Modbus             | LAN                                                                | Table 1                                                      |   tbc | | 
| Siemens      | Industrial Edge                               |  x       |        |         | OPC UA, HTTP       | LAN, connection to the Internet                                    | Table 1                                                      | Christian Glomb | |
| Siemens      | Microscope (Openflexure)                      |  x       |        |         | HTTP               | LAN                                                                | Table 1                                                      | @egekorkan | https://github.com/w3c/wot-testing/blob/main/events/2024.11.Munich/TDs/openflexure/microscope.td.jsonld |
| Siemens      | Thread Border Router                          |  x       |        |         | KNX IoT            |                                                                    | Table 1                                                      | @mkovatsc | |
| Siemens      | Temperature, Humidity and CO2 Sensor          |  x       |        |         | KNX IoT            |                                                                    | Table 1                                                      | @mkovatsc | |
| Siemens      | Radiator Valve Actuator                       |  x       |        |         | KNX IoT            |                                                                    | Table 1                                                      | @mkovatsc | |
| Siemens      | Room Controller Unit                          |  x       |        |         | KNX IoT            |                                                                    | Table 1                                                      | @mkovatsc | |
| Siemens      | S7-1500 connected with conveyor belt and lamp |  x       |        |         | OPC UA             | LAN                                                                | Table 1                                                      | @sebastiankb | |
| Siemens      | Temperature, Humidity, and CO2 Sensor (Dev. version) |  x       |        |   | HTTP               | WiFi                                                               | Table NEED                                                   | Haoyu Ren, Darko Anicic, @mahdanoura| |
| TU Munich    | Robot arm                                     |  x       |        |         | HTTP               | 2m high, 4m width; LAN/Wifi (no Internet); should be protected     | has own table                                                | @FadySalama | |
| TU Munich    | Philips Hue Lamp and Switch                   |  x       |        |         | HTTP               | LAN                                                                | Table 2                                                      | @FadySalama | |
| TU Munich    | Diff. rem. devices (raspberry pi,etc)         |          | x      |         | HTTPS              | Internet                                                           | Table 2                                                      | @FadySalama | |
| TU Munich    | Simulated devices (robot arms)                |          |        | x       | HTTP but flexible  | LAN/Wifi                                                           | Table 2                                                      | @FadySalama | |
| Luminem      | Simulated devices (TBC)                       |  x       |        | x       | HTTP               | Laptop to run them locally                                         | No Table needed                                              | @lu-zero | |
| Luminem      | esp32c3 [demo thermometer](https://github.com/wot-rust/wot-esp-demo)                      |  x       |        | x       | HTTP               | a [rust esp32c3 board](https://github.com/esp-rs/esp-rust-board) or compatible, Wifi | No Table needed | @lu-zero | |
| Intel        | Services (AI, Speech Recog.)                  |  x       | x      | x       | HTTP(s)            |                                                                    | Table 3; Some services can be run locally by someone else    | @mmccool | |
| ArmorSafe    | Cache System 7000                             |  x       |        |         | HTTP               |                                                                    | Table 3; Each time someone deposits cash, it emits an event  | Michael Robins and Denis Ioan | |
| Ignite Retail| IP Camera                                     |  x       |        |         |                    |                                                                    | Table 3                                                      | Josh Thomas | |
| Uni St. Gallen |  YggDrasil                                  |          |        | x       | HTTP               | LAN                                                                | Table 4; Working on participant's laptop                     | https://github.com/jeremylemee | |
| CALA Munich  | Oscilloscope (Picoscope brand)                |  x       |        |         | HTTP               | LAN                                                                | Table 5                                                      | @VigneshVSV | |
| CALA Munich  | Ethernet Camera (IDS GmbH brand)              |  x       |        |         | HTTP               | LAN                                                                | Table 5                                                      | @VigneshVSV | |
| CALA Munich  | Linear Stage (something like a stick can be mounted)  |  x      | |         | HTTP               | LAN                                                                | Table 5                                                      | @VigneshVSV | |
| Hitachi      | Small sensor  device                          |  x       |        |         | HTTP, ZeroMQ       | LAN                                                                | Table 6                                                      | Kunihiko Toumura | |
| Archeion     | Some RPis with Sensors                        |  x       |        |         | HTTP               | LAN                                                                | Table 8                                                      | Cristiano Aguzzi | |
| Christian Paul | Small devices like e-paper display, sensors |  x       |        |         | HTTP               | LAN                                                                | Table 8                                                      | @Jaller94 | |
| Christian Paul | Godot (game engine) Things                  |          |        | x       | WS, HTTP           | LAN                                                                | Table 8                                                      | @Jaller94 |
| ...          |     ...                                       |          |        |         |                    | ...                                                                |  ...                                                         |   tbc | |

## List of Consumers that will be available for the PlugFest

| Organization     | Application                                   | Physical | Remote | Virtual | Protocol Supported | Infrastructure requirements, e.g., open ports, power sockets, Wifi | Comments                                                     |Contact|
|------------------|-----------------------------------------------|----------|--------|---------|--------------------|-------------------------------------------------------------------|---------------------------------------------------------------|-------|
| IgniteRetail     | Command Center                                | x        | x      |         |                    |                                                                    | Table 3; Can be deployed locally or cloud                    | Josh Thomas |
| TU Munich        | Hololens                                      |  x       |        |         | HTTP               | Wifi                                                               | Table 2; no sec should be used; QR code to TD is needed      | Fady Salama |
| UC Dublin        | ASTRA/MAMS Platform                           |  X       |        |         |                    |                                                                    | Table 4; Multi agent system platform (only software)         | https://github.com/RemCollier |
| Uni St. Gallen   |  YggDrasil                                    |          |        |  X      | HTTP               | ...                                                                | Table 5;                                                     | https://github.com/jeremylemee |
| Hitachi          | Discoverer Application                        |  x       |        |         | tbc                |                                                                    | Table 6                                                      | Kunihiko Toumura |
| Eclipse Thingweb | Cross-platform app (using `dart_wot`)         | x        |        |  X      | HTTP, CoAP, MQTT   | WiFi                                                               | Table 4                                                      | @JKRhb |
| Microsoft        | OPC Publisher                                 | x        |        |  X      | OPC UA             | LAN or Wifi                                                        | Table 7                                                      | @barnstee |
| OPC Foundation   | UA Edge Translator                            | x        |        |  X      | OPC UA             | LAN     or Wifi                                                    | Table 7                                                      | @barnstee |
| Erich Barnstedt  | UA Cloud Publisher                            | x        |        |  X      | OPC UA             | LAN     or Wifi                                                    | Table 7                                                      | @barnstee |
| CALA Munich      | WoT GUI Application (using node-wot)          | x       |        |          | HTTP (possibly add others) | LAN                                                        | Table 5                                                      | @VigneshVSV |
| Archeion         | Asset Tracking Platform(using node-wot)       | x       |        |          | HTTP (possibly add others) | LAN                                                        | Table 8                                                      | @relu91 |
| Christian Paul   | WoT Wrench                                    | x       |        |          | HTTP (experimental WS and SSE) | LAN                                                        | Table 5                                                  | @Jaller94 |
| Siemens          | sayWoT! Gateway on a Siemens IoT2020          | x       |        |          | HTTP north, many southbound | LAN                                                       | NEED Table                                                   | Mahda Noura |
| ...              |     ...                                       |          |        |         |                    | ...                                                                |  ...                                                         | tbc |

Notes: 

* We must clarify which devices are used for which scenarios and context (e.g., OPC UA, Cloud, ECHONET, Smart City, Conexxus etc.).
* We need to clarify which participants can only join remotely. Is there an open connection to the local PlugFest network?
* Detail information about the Things can be provided in specific subfolders of this GitHub (e.g. folders by company name)
* We need to clarify if we need a VPN connection. W3C may provide one.
* We should run a trial run two weeks before the PlugFest.

## WIP - User Scenarios

Different tests we do can be placed into context, e.g., smart cities. 
This way, they can relate better once we present WoT to the visitors.

Note: Please create PRs with your own folder at https://github.com/w3c/wot-testing/tree/main/events/2024.11.Munich/Scenarios

Some ideas:

* Smart City
  * 
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
  * Voice control of different devices like Hue and sayWoT! bridged devices (KNX IoT devices)

* Technical Purposes
  * Siemens KNX IoT Devices: Testing interoperability and good understanding of their TDs from Consumers.
  * Hitachi Sensor: Testing ZeroMQ Binding
  * OpenFlexure Microscope: Long running actions
  * Siemens S7: OPC UA Binding demonstrations
  * Siemens Sentron PAC: Modbus Binding
  * Siemens TargetV device: MQTT Binding
  * Siemens sayWoT! Servient: Testing binding interoperability (MQTT, Modbus, OPC UA, S7, CoAP and more)
  * TUM Big Robot Arm: Showing it working with Hololens and digital twin inside the hololens
  * TUM Hue Devices: Showing rules/mashups with other devices
  * TUM Hololens: Checking visual interactions with devices (that use HTTP). Maybe there will be the option to build mashups and check them working.
  * TUM Small Robot Arm and Conveyor Belt: Test different mashup scenarios
  * Armorsafe: Checking interoperability with IgniteRetail Control center
  * Luminem Devices: Checking if the software stack works on more constrained devices (ESP32, banana pi)
  * Hitachi: Testing the discovery implementation
  * Thingweb dart_wot: Identifying shortcomings and testing in real life with others
  * McCool: AI Service integration

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

## WIP - Discovery/Registry Topics
* tbc


## WIP - Other Topics

* Top-level operation for observing changes to TD (needs further discussion)
* Discovery interface of Scripting API
* AMQP Binding
* OPC UA Binding 
