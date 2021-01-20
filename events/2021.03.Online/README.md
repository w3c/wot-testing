# March 2021 Online WoT Plugfest
Web of Things online plugfest, to be held March 2021.

## Logistics:
* 1-5 March 2021
* Overlapping with IETF Hackathon
* Daily Sync meeting: 9am ET
* WebEx: TBD
* IRC: wot-pf
* VPN?
    - Depends on use cases that need it, e.g. mDNS discovery
    - If IETF hackathon has one... 

## Goals
Plugfest themes:

## Themes
### Semantics
* ASDF integration
   - IETF collaboration (during IETF hackathon...)
* Accessibility support
* OPC-UA alignment

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
