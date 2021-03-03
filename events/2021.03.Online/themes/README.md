# WoT Plugfest
## Themes

[Project isssues](https://github.com/w3c/wot-testing/issues?q=is:issue+is:open+label:%22Project+2021-03%22)

### Thing Models
* Instantiation of TDs from TMs from two different implementations
    - Oracle, Siemens, Bosch?
    - ASDF conversion (see below)
* Use of TMs in Directories 
    - use cases?

### Semantics
* ASDF integration
   - IETF collaboration (during IETF hackathon...)
   - ITRF: "convert" between WoT TD/TM and SDF, further developing instance-specific mapping files
   - Project link: https://github.com/roman-kravtsov/sdf-object-converter
* Accessibility support

Future:
* OPC-UA/ECLASS alignment

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
     - DONE: https://github.com/w3c/wot-discovery/pull/114
2. Applications - map, but with better automation this time (depends on 1!)
4. (stretch) Geospatial filters (proposed spec) for discovery (JSON Path filter options) (depends on 1!)
   
### Discovery
* Introductions
    - CoRE RD
* Node-RED Integration
    - Directory-based discovery and autopopulation (in addition to existing mDNS discovery)
    - (stretch goal) keyword-based filtering of results (using JSON Path queries, UI just has keywords to filter on)
* Queries
    - LinkSmart (JSONPath)
    - WoT Semantic Directory (SPARQL)
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
     
## Tutorials
Review and update material if necessary.
