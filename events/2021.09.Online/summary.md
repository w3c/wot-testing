# WoT Sept 2021 Plugfest/Testfest
This event combined testing of existing specifications with prototypes of new systems.

## Testing

### Thing Description
* Updated implementation descriptions
* Captured validated TDs
* Carried forward older TDs as appropriate
* Identified gaps in testing
* Generated test cases to fill gaps
* Identified features that need manual assertions from implementors

### Other
We need more work on Discovery testing.  A test suite exists but needs further development and
tooling support.

## Plugfest Projects

To do: copy descriptions from 
* [Issue tracker](https://github.com/w3c/wot-testing/labels/Plugfest%202021.09)
* [F2F presentation](https://github.com/w3c/wot/blob/main/PRESENTATIONS/2021-10-online-f2f/2021-10-11-WoT-OpenDay-McCool.pdf)

### ECHONET Lite Web API/WoT Integration

#### Participants
* Van Cu PHAM (Japan Advanced Institute of Science and Technology, ECHONET Consortium)
* Tomura
* Koster (T.B.C.)

#### Results
* Accessing ECHONET devices from one or more WoT consumers (e.g. Node-RED (Tomura), node-wot)
  * In this PlugFest, we provide an intermediary that provides translated web APIs via a translation service ("translating proxy"). The intermediary translates payloads so that they can be described with TD data schemas. See https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/Projects/ECHONET/20210917_Plugfest_ECHONETControllerUpdated.pdf

* TMs/ODM for ECHONET Device Descriptions (T.B.C. by Koster)
  * See https://echonet.jp/web_api/ for JSON device descriptions. These are very similar to TMs, and also include both JA and EN descriptions, so readable for EN readers
Generating TDs for ECHONET Lite Web APIs.

### Node-RED
Participants: Toumura, McCool
* Discovery integration (MDNS + TDD queries)
* Semantic/keyword searches
* Retail use case (Connexxus)
* Will be used to exercise ECHONET
** Use Node-RED as a client
** ECHONET Web API provides only servers

### Node-WoT
Participants: Siemens (Sebastian), Daniel, TUM (Ege), Cristiano
* Discovery integration
* Use as client for ECHONET above
** In which case it needs to be on the VPN
* Evaluate new action models
** Multiple operations
** Hypermedia approach

### Geospatial (Meta)Data
Participants: McCool
* Test encoding of geospatial data in TDs using extension
** Semantic extension - ontology, etc.
** Query extension to TDDs - collaborate with OGC, IEEE, SDW, etc.
** Introduction mechanisms - Spatial DNS - IETF collab
* SPARQL queries in TDD?
** Prototype spatial search using brute-force filtering.

### NHK
* WoT device emulator (Android App)
  * Generates web apis based on TD
  * Behaves in a WebView web app
  * https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/Projects/NHK/README.md

## Network configuration
![Plugfest network](./plugfestnet.svg)
