# Discovery Testing



## Types of implementations

These are all the types of discovery implementations. Each implementation from the group would correspond to one or more of the listed types below

In all types of implementations, there can be Consumer (subject to change, it is the entity that finds a TD) and Producer (subject to change, it is the entity that register/advertise a TD).

### Introduction mechanism

How a TD can be found without relying on a TD directory.

- [Direct (QR Code or similar)](https://w3c.github.io/wot-discovery/#introduction-direct)
- [Well-Known URIs](https://w3c.github.io/wot-discovery/#introduction-well-known)
- [DNS-Based Service Discovery](https://w3c.github.io/wot-discovery/#introduction-dns-sd)
- [CoRE Link Format and CoRE Resource Directory](https://w3c.github.io/wot-discovery/#introduction-core-rd)
- [DID Documents (no implementations so far)](https://w3c.github.io/wot-discovery/#introduction-did)

### Exploration mechanisms

How a TD can be found by relying on a TD directory.

- Directory:
  - SPARQL
  - JSON Path
  - XPath

## Implementations

The sections below can be externalized into MD files per implementation

### MyImplementation1

Type: Introduction  / Exploration 
Further Type Specific Information : Network - Core RD OR MDNS OR X
Role: Consumer / Producer
Description: Textual information
Link to implementation:
Link to testing data:
