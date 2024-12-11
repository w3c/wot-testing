# WoT Standardization Tests

Some features of the WoT standards will be tested in the plugfest. Below you can find some of the ideas.

## TD Topics

### Outcomes

- Multi-part input (https://github.com/w3c/wot-thing-description/issues/1464) and Data streaming seems to be a new use case. Issue that McCool rebirthed with many answer in the last week: https://github.com/w3c/wot-thing-description/issues/1044. Same is brought up in Roman Binkert's slides.
- Sleepy devices and non-confirmable: https://github.com/w3c/wot-thing-description/issues/2059 and https://github.com/w3c/wot-binding-templates/issues/389
  - Daniel: At the beginning of TF, there was a demand to describe "old" data that the sensor measured some time ago. Ege: MQTT with retain has the same issue
- (from Connexxus?) How to deal with invalid data according to data schema. Describing the perfect coverage requires complex data schemas, which is difficult to understand.
- (from Cris) How to recommend Thing implementations to think of the Consumer application that needs to process the data (array of transactions example).
- External Schema support: David Ezell has asked for it. Existing issue: https://github.com/w3c/wot-thing-description/issues/1249.
- Unclear guidance on eventing
- `type` vs `@type` issue is present again (Daniel's slides). Needs priority and follow-up with JSON-LD
- Writeproperty with returned values: Jan has brought it up again. Issue 875: https://github.com/w3c/wot-thing-description/issues/875
- Human Readable data being actually important (Toumura-san) for plugfests: Possible for LLMs too
- URI Schemes for protocols that use unauthorized characters: OPC UA (https://github.com/eclipse-thingweb/node-wot/pull/1335#issuecomment-2527964513), MQTT (https://github.com/w3c/wot-binding-templates/issues/292)


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

## Discovery/Registry Topics

* tbc

## Other Topics

* Top-level operation for observing changes to TD (needs further discussion)
* Discovery interface of Scripting API
* AMQP Binding
* OPC UA Binding
* ZeroMQ Binding
