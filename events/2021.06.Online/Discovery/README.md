# Discovery Testing



## Types of implementations

These are all the types of discovery implementations. Each implementation from the group would correspond to one or more of the listed types below.
Rather than testing all possible combinations of introduction and exploration, we will test them separately.

In all types of implementations, there can be Consumer (subject to change, it is the entity that finds a TD) 
and Producer (subject to change, it is the entity that register/advertise a TD).

### Introduction mechanism

How a TD can be found without relying on a TD directory.

- [Direct (QR Code or similar)](https://w3c.github.io/wot-discovery/#introduction-direct)
- [Well-Known URIs](https://w3c.github.io/wot-discovery/#introduction-well-known)
- [DNS-Based Service Discovery](https://w3c.github.io/wot-discovery/#introduction-dns-sd)
- [CoRE Link Format and CoRE Resource Directory](https://w3c.github.io/wot-discovery/#introduction-core-rd)
- [DID Documents (no implementations so far)](https://w3c.github.io/wot-discovery/#introduction-did)

Issues:
* we don't have to test every possible introduction mechanism, in particular any introduction mechanism that just
  results in a URL (e.g. QR codes) are covered under "Direct".  
* We do have to explicitly test introduction mechanisms that require special changes
    - DNS-SD adds new service types
    - DID requires new service names
* For DID, we can just do one "method" and there is a simple method that is used for testing that would suffice.
* How to deal with the "two implementations" requirement?  
    - I propose we just have two "discoverer" implementations (e.g. two devices that attempt to use DNS-SD)
    - We don't need two different DNS-SD servers.
    - To do: explain this situation in the implementation report.
    - This is like testing two browsers with a single HTTP server (where HTTP is an IETF specification...)
* "Direct" doesn't actually need testing since the "output" of the introduction phase (a URL) is provided directly

### Exploration mechanisms
How a TD can be found by relying on a TD directory.
Testing should include secure implementations of various types.
Security testing can be limited to "best practices" and "nosec".

#### Directory
The following query types should be tested:
  - SPARQL
  - JSON Path
  - XPath

Issues:
* Only have one implementation that does SPARQL, another that does JSONPath/XPath...
* Testing queries is complex; do we need a full test suite for JSONPath, for instance?  How much do we need to test this?
    - I think we should use a previously tested implementation of a query engine and just do enough testing to ensure it is properly integrated.
* Implementations already have some test suites we can hopefully generalize.  Discuss in Discovery TF.
* We probably DO need two different exploration server implementations for testing, *and* two "discoverer" implementations using them.

#### Peer-to-Peer
Directly retrieving TDs from a device needs to be tested.
Should support "security bootstrapping" using HTTP negotiation.

## Implementations

The sections below can be externalized into MD files per implementation

### MyImplementation1 - Template

* Type: Introduction  / Exploration 
    - Further Type Specific Information : Network - Core RD OR MDNS OR X
* Role: Consumer / Producer / Intermediary
* Description: Textual information
* Implementor: organization
* Link to implementation: URL
* Link to testing data: URL
