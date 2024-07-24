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
  * maybe a topic which can be discussed with the NGSI-LD cooperation)
* WoT for Cloud Systems
  * maybe Azure IoT from Microsoft and Oracle cloud (tbc)
* Plug & Play in Industry Scenarios
  * Siemens will show some use cases   

## WIP - TD Topics

### Existing Features

We should make sure that the existing features that the implementers have questions about are specified correctly. All these points are prioritized over new features.

* Additional Responses
  * Error Handling on the application level (Scripting API is connected here)
  * Multiple possible successful responses
  * Default behavior
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

## WIP - Setups

### WoT WG/IG Setups

### External Setups

If you want to showcase your use cases, you can do so. You can join the Plugfest activity (Monday and Tuesday) to test your setup together with others.

