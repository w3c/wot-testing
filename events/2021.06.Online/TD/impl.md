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
