# W3C Web of Things (WoT) Sept 2021 Plugfest/Testfest
This event combined testing of existing specifications with prototypes of new systems.

## Testing

### Thing Description
* Recategorized implementations by codebase rather than organization
* Captured validated TDs
* Generated updated input data for implementation report generator
* Used as initial set of test TD for CR transition testing

### Discovery
A test suite exists but needs further development and
tooling support.

## Plugfest Projects

Details of individual project definitions and results are available in the following locations:
* [Results directory](https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/RESULTS)
* [Issue tracker](https://github.com/w3c/wot-testing/labels/Plugfest%202021.09)
* [F2F presentation](https://github.com/w3c/wot/blob/main/PRESENTATIONS/2021-10-online-f2f/2021-10-11-WoT-OpenDay-McCool.pdf)

### ECHONET Lite Web API/WoT Integration

#### Participants
* Van Cu PHAM - Japan Advanced Institute of Science and Technology, ECHONET Consortium
* Kunihiko Toumura - Hitachi
* Michael Koster

#### Description and Purpose
* Demonstration and the ability to access ECHONET devices from one or more WoT consumers (e.g. Node-RED (Tomura), node-wot)
* In this PlugFest, we provided an intermediary that provides translated web APIs via a translation service ("translating proxy"). 
* The intermediary translates payloads so that they can be described with TD data schemas. 
* See https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/Projects/ECHONET/20210917_Plugfest_ECHONETControllerUpdated.pdf

* TMs/ODM for ECHONET Device Descriptions (T.B.C. by Koster)
  * See https://echonet.jp/web_api/ for JSON device descriptions. 
  * These are very similar to TMs, and also include both Japanese and English descriptions, so are readable for English readers
* Generation of TDs for ECHONET Lite Web APIs.

### Node-RED

#### Participants
* Kunihiko Toumura - Hitachi
* Michael McCool - Intel

#### Description and Purpose
* Test WoT Discovery integration 
  * MDNS introductions
  * TDD queries
  * Semantic/keyword searches
* Retail use case (Connexxus)
* Will be used to exercise ECHONET
* Use of Node-RED as a client
  * ECHONET Web API provides only servers

### Node-WoT
####
Participants: 
* Sebastian Kaebisch - Siemens
* Daniel Peintner
* Ege Korkan - TUM
* Cristiano Aguzzi

#### Description and Purpose
* Discovery integration
* Use as client for ECHONET above
   * Using VPN to simulate local network
* Evaluate new action models
   * Multiple operations
   * Hypermedia approach

### Geospatial (Meta)Data
#### Participants
* Michael McCool - Intel

#### Description and Purpose
* Test encoding of geospatial data in TDs using extension
  * Semantic extension - ontology, etc.
  * Query extension to TDDs - collaborate with OGC, IEEE, SDW, etc.
  * Introduction mechanisms - Spatial DNS - IETF collab
* SPARQL queries in TDD?
  * Prototype spatial search using brute-force filtering.

### NHK
* WoT device emulator (Android App)
  * Generates web apis based on TD
  * Behaves in a WebView web app
  * https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/Projects/NHK/README.md

## Network configuration
![Plugfest network](./plugfestnet.svg)
