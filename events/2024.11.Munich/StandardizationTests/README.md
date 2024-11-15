# WoT Standardization Tests

Some features of the WoT standards will be tested in the plugfest. Below you can find some of the ideas.

## TD Topics

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
