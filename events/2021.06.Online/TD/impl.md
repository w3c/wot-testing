# What is an Implementation

## Previous Definition
 Each implementation represents a working system
  that either exposes or consumes at least one WoT Thing Description.
  Implementations that expose a network interface
  described by a Thing Description will be referred to as "servers".
  Implementations that consume Thing Descriptions
  will be referred to as "clients".
  Note that these terms will be used with these specific definitions 
  in the following regardless of which device initiates
  network requests.  Normally the client initiates requests and the
  server responds.  However, in some protocols or sub-protocols that
  support push notifications (such as webhooks or MQTT) the usual
  relationship of initiator/responder may be reversed.
  In some cases a given implementation may be used for multiple Things
  and a single Thing may also act as both client and server on
  multiple interfaces.

  We only count systems with mostly independent code bases
  as distinct implementations.
  There are however some cases (documented in the following) where
  implementations shared components but were still considered substantially
  independent implementations.  In cases where a substantial component
  was shared across implementations the features supported by that
  component were only counted once.
  
  ## Previous Definition
 Each implementation represents a working system
  that either exposes or consumes at least one WoT Thing Description.
  Implementations that expose a network interface
  described by a Thing Description will be referred to as "producers".
  Implementations that consume Thing Descriptions
  will be referred to as "consumers".
  Note that these terms will be used with these specific definitions 
  in the following regardless of which device initiates
  network requests.  
  
  Normally the consumer initiates requests and the
  producer responds.  However, in some protocols or sub-protocols that
  support push notifications (such as webhooks or MQTT) the usual
  relationship of initiator/responder may be reversed.
  
  In some cases a given implementation may be used for multiple Things.
  For example, node-wot is an open-source library that is used for
  several systems by different organizations.  From the point of view
  of testing, however, we want to treat all test results from systems
  that use node-wot as being related to a single implementation.
  
  A single system may also act as both producer and consumer on
  multiple interfaces.  In this case, even though it has multiple
  interfaces, it should be treated as a single implementation.

  We only count systems with mostly independent code bases
  as distinct implementations.
  There are however some cases (documented in the following) where
  implementations shared components but were still considered substantially
  independent implementations.  For example, several systems may
  share a third-party library for implementing JSONpath or encryption.
  
## Producers
Need at least 2.
* node-wot
* WebThings
* random Things

## Consumers
Need at least 2.
* node-wot
* Node-RED
* WebThings?

## Processors and Validators
Process TDs but may not invoke interactions.  Example: Directory service, JSON Schema validator.
Do not necessarily count as implementations (e.g. if they only validate or store TDs, but don't invoke interactions, they would not count).
