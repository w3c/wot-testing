# March 2021 Online WoT Plugfest
Web of Things online plugfest, to be held March 2021.

## Logistics:
* 1-5 March 2021
* Overlapping with IETF Hackathon
* Daily Sync meeting: 
    - Monday 1 March - 8am ET 
    - Tuesday 2 March - 9am ET
    - Wednesday 3 March - 9am ET
    - Thursday 4 March - 10am ET
    - Friday 5 March - 9am ET
* WebEx: 
    - [IG](https://lists.w3.org/Archives/Member/member-wot-ig/2021Feb/0010.html)
    - [WG](https://lists.w3.org/Archives/Member/member-wot-wg/2021Feb/0010.html)
* IRC: wot-pf
* VPN?
    - Depends on use cases that need it, e.g. mDNS discovery
    - IETF hackathon has one, let's see if we can use that (action: McCool to request slot)

## Goals
* Refine and test new features in specifications
    - Discovery
    - Thing Models
    - MQTT protocol binding
    - OAuth2 and other new security schemes (e.g. combo)
* Interoperability testing
    - Do separate implementations work together
    - Does not need to be new features...
    - Look again at gaps in implementation report, e.g. security
* Tools testing
    - Validating Partial TDs and TD fragments
    - Directory validation - what are requirements?
    - Fuzz testing
* Implementation Report Prework
    - Draft
    - Assertion list
    - Testing planningv (TD, Discovery, Profiles)
* Foundational Material
    - [Reference Hardware Platforms](reference/hw.md)
    - [Reference Implementations](reference/impl.md)
    - Tutorials

## Themes
### Thing Models
* Instantiation of TDs from TMs from two different implementations
    - Oracle, TUM?
* Use of TMs in Directorys - use cases?

### Semantics
* ASDF integration
   - IETF collaboration (during IETF hackathon...)
* Accessibility support
* OPC-UA alignment

### Protocols
* MQTT interop
    - Two separate implementations that can interoperate
* OPC-UA
    - XML examples

### Geolocation
* Geospatial data 
   - Static data in TDs
   - Dynamic data from devices
   - Directory services
   - Link relation types
* Use cases
   - Smart Cities
   - AR
* Collaborations
   - SDW
   - OGC
   
Plan:
1. Define information model for geolocation data (in TDs, static/dynamic) - proposed spec needed.
2. Applications - map, but with better automation this time (depends on 1!)
3. (stretch) Geospatial filters (proposed spec) for discovery (JSON Path filter options) (depends on 1!)
   
### Discovery
* Node-RED Integration
    - Directory-based discovery and autopopulation (in addition to existing mDNS discovery)
    - (stretch goal) keyword-based filtering of results (using JSON Path queries, UI just has keywords to filter on)
* Queries
    - Semantic search - SPARQL
    - Keyword (JSON Path, X Path) search
    - Use cases and applications
* Geospatial queries (prototypes)
    - SPARQL implementation of basic geospatial filters, e.g. proximity
    - Depends on having a standard for location encoding (see above)
    - Non-SPARQL/JSON Path geospatial filters
* AR?
    
Plan:
1. Toumura plans improvements to Node-RED discovery
2. Farshid to spin up LinkSmart directory service as soon as possible
3. Examples for use of queries for various purposes -> spec, tutorial
4. Geospatial: see above

## Scenarios
* Smart Agriculture theme 
     - University of Barcelona online farm simulator
     - Agriculture CG
* Smart Home theme 
     - Technical University of Munich (TUM)
     - Media and Entertainment IG
* Smart Factory theme 
     - Technical University of Munich (TUM)
     - Siemens?
     - Oracle?
     - Schaffler?
* Smart City theme 
     - Singapore
     - Intel
     - Siemens
     - Linked Building Data CG
     
## Tutorials
Review and update material if necessary.
