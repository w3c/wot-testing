# March 2021 Online WoT Plugfest
Web of Things online plugfest, to be held March 2021.
* [Goals](goals/README.md)

## Logistics:
* 1-5 March 2021
* Overlapping with IETF Hackathon
    - See [email from T2TRG](https://lists.w3.org/Archives/Member/member-wot-wg/2021Feb/0014.html)
    - Meetings 10am/11am ET for IETF 
* Daily Sync meeting: 
    - Monday 1 March - 8am ET 
    - Tuesday 2 March - 9am ET
    - Wednesday 3 March - 9am ET
    - Thursday 4 March - 10am ET
    - Friday 5 March - 9am ET
* WebEx: 
    - [IG](https://lists.w3.org/Archives/Member/member-wot-ig/2021Feb/0010.html)
    - [WG](https://lists.w3.org/Archives/Member/member-wot-wg/2021Feb/0010.html)
* IRC: [wot-pf](http://irc.w3.org/?channels=wot-pf)
* Slack: wotpf.slack.com
    - Invitation URL: [IG](https://lists.w3.org/Archives/Member/member-wot-ig/2021Feb/0013.html)/[WG](https://lists.w3.org/Archives/Member/member-wot-wg/2021Feb/0013.html)/[Guests](https://lists.w3.org/Archives/Member/member-wot-guests/2021Feb/0004.html)
* VPN?
    - Depends on use cases that need it, e.g. mDNS discovery
    - IETF hackathon has one, let's see if we can use that (action: McCool to request slot)

## Themes
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

### Discovery
* CoRE RD Introductions
* Semantic/syntactic queries
    - LinkSmart (JSONPath)
    - WoT Semantic Directory (SPARQL)

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

## Tooling
- [Editdor](https://github.com/eclipse/editdor)
     
## Tutorials
Review and update material if necessary.
