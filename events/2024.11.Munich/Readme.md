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

## Instructions

### Checklist and Tasks

To better prepare for the plugfest, please help us by doing the following:

* Provide brief information about the Things or Consumer applications you will bring to the plugfest in this readme, in the table below.
* Provide your TDs under the `TDs` folder. Group them by implementation, i.e., if `ACME Corporation` has used node-wot to build a device, please put TDs under the `thingweb-nodewot` folder. Of course, if your implementation's WoT stack is built in-house, you can use your company's name as a folder. Make sure to validate your TDs beforehand. You can use a tool like Thingweb Playground at <https://playground.thingweb.io/>.
  * Use the' Documentation' folder to provide additional information about your Thing or Consumer application.
  * Please link to your TD from this Readme's table.
* Provide a markdown file in a new folder under the `Scenarios` folder for the scenarios you plan to test, ideally with others. You can find an example at <https://github.com/w3c/wot-testing/tree/main/events/2024.11.Munich/Scenarios/VoiceControl>
* Prepare a poster (instructions coming soon)
* Prepare the presentation you will make on Wednesday. You can use the template at <https://github.com/w3c/wot/blob/main/PRESENTATIONS/2024-11-wot-week/2024-11-27-WoT-Conference-Presentation.pptx>

### What you should bring with you 

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
| TU Munich    | Big Robot arm (1.6m radius, 10kg capacity)    |  x       |        |         | HTTP               | 2m high, 4m width; LAN/Wifi (no Internet); should be protected     | has own table                                                | @FadySalama | |
| TU Munich    | Small Robot arm                               |  x       |        |         | HTTP               |                                                                    | NEED TABLE                                                   | @FadySalama | |
| TU Munich    | 2 Small Conveyor Belts                        |  x       |        |         | HTTP               |                                                                    | NEED TABLE                                                   | @FadySalama | |
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
