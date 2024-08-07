# WoT Week at Munich (DRAFT)

The logistics can be found at https://www.w3.org/WoT/IG/wiki/Wiki_for_WoT_Week_2024_planning.
In this folder, technical information is found, such as test plans for features.

The main goal of this plugfest is to test the feasibility of existing and new features of WoT standards.
As a secondary goal, these tests will be put into user scenarios that are understandable by visitors.

## WIP - User Scenarios

Different tests we do can be placed into context, e.g. smart cities. 
This way, once we present WoT to the visitors, they can relate better.
Some ideas:

* Smart City
  * maybe a topic which can be discussed with the NGSI-LD cooperation
* WoT for Cloud Systems
  * maybe Azure IoT from Microsoft and Oracle cloud (tbc)
* Plug & Play in Industry Scenarios
  * includes semantics usage in domain models (e.g., Brick, OPC UA, etc)   
* Retail (David)
 * David will check with a company if they could join the PlugFest. The cash systems seems to use AMQP  

## WIP - TD Topics

### Existing Features

We should make sure that the existing features that the implementers have questions about are specified correctly. All these points are prioritized over new features.

* Additional Responses
  * Error Handling on the application level (Scripting API is connected here)
    * would be good to have real world example  
  * Multiple possible successful responses
    * query-able actions?
    * in Discovery API are examples where multiple responses are provided 
  * Default behavior (is it a normal response or is it an additional one)
* Linking between TDs
* Specifying multiple `@type`s to TDs: This is confusing to people. We need more guidance.
* Complex actions: Async and sync
* Meta Operations (top-level form operations): Are they implemented correctly. This will be prioritized and idenfied gaps can be addressed as new meta operations.

### New Features

We should experiment on the new features we are planning and collect implementation experience.
  
* Initial connection
* [Data Mapping:](https://github.com/w3c/wot/blob/main/planning/ThingDescription/td-next-work-items/usability-and-design.md#data-schema-mapping) This topic will be prioritized. It also related to additional responses existing feature mentioned above.
* "Normative" Consumer Behavior: Degradation, Expected behavior. Writing what a Consumer is expected to do for a TD. This will be prioritized and its results will be used for the Interoperability Test Suite topic below.
* Interoperability Test Suite: Given a TD, can a Consumer application fully interact with it? Strongly relates to normative consumption above.
* New meta operations
* OPC UA Binding

## WIP - Other Topics

* Top-level operation for observing changes to TD (needs further discussion)
* Discovery interface of Scripting API
* AMQP Binding 

## List of devices that will be available for the PlugFest

| Company   | Things/Devices/System/Tools         | Infrastructure requirements, e.g. open ports, power sockets, Wifi | Comments           |Contact|
|-----------|-------------------------------------|-------------------------------------------------------------------|--------------------|-------|
| Siemens    |      Sentron PAC (energy meter)    | LAN                                                               | Modbus             |   tbc |
| Siemens    |      Industrial Edge               | LAN, connection to the Internet                                   | OPC UA, HTTP       |   tbc |
| ...        |     ...                            | ...                                                               |                    |   tbc |

Note: We need to clearify which devices are used for which scenarios and context (e.g., OPC UA, Cloud, ECHONET, Smart City, Conexxus etc.). Steakholders from related SDOs are welcome to contribute. 


### WoT WG/IG Setups

### External Setups

If you want to showcase your use cases, you can do so. You can join the Plugfest activity (Monday and Tuesday) to test your setup together with others.

