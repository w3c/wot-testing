# WoT Week at Munich

The logistics can be found at https://www.w3.org/WoT/IG/wiki/Wiki_for_WoT_Week_2024_planning.
In this folder, technical information is found such as test plans of features.

## WIP - User Scenarios

Different tests we do can be placed into context, e.g. smart cities. 
This way, once we present WoT to the visitors, they can relate better.
Some ideas:

* Smart City
* WoT for Cloud Systems

## WIP - TD Topics

### Existing Features

We should make sure that the existing features that the implementers have questions about are specified correctly.

* Additional Responses
  * Error Handling on the application level (Scripting API is connected here)
  * Multiple possible successful responses
  * Default behavior
* Linking between TDs
* Specifying multiple `@type`s to TDs: This is confusing to people. We need more guidance.
* Complex actions: Async and sync
* Meta Operations (top-level form operations): Are they implemented correctly

### New Features

We should experiment on the new features we are planning and collect implementation experience.
  
* Initial connection
* Data mapping
* "Normative" Consumer Behavior: Degradation, Expected behavior. Writing what a Consumer is expected to do for a TD.
* Interoperability Test Suite: Given a TD, can a Consumer application fully interact with it? Strongly relates to normative consumption above.
* New meta operations

## WIP - Other Topics

* Top-level operation for observing changes to TD (needs further discussion)
* Discovery interface of Scripting API
