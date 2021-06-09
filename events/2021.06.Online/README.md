# June 2021 Testfest

## Logistics
* Previous testfests and plugfests
    - https://github.com/w3c/wot-testing/tree/main/events
* Wiki (includes schedule and webexes)
    - https://www.w3.org/WoT/IG/wiki/F2F_meeting,_June_2021#Testfest

## Data and Results
* [Architecture](Architecture)
* [Profiles](Profiles)
* [Discovery](Discovery)
* [Thing Description](TD)

## Actions/Comments
* TD/TM Testing
   - Known gaps: oauth, body, canonicalization, signing?
       - OAuth2
           - LinkSmart Directory - producer
           - UPM's Directory - producer?
           - node-wot (?) - producer/consumer
           - Node-RED (?) - consumer (of directory)
       - Canonicalization/signing (JWS)
           - Intel (script), node-wot
           - TMs: Siemens
               - Second source of TMs? Volto? Oracle? SDF/Koster?
* Discovery Testing
    - Directory tests - Farshid documenting
    - Self-describing - Intel, Siemens - network API test
    - Introductions
        - DNS-SD - service names, txt records
            - Discoverer: Node-RED, node-wot, webthings-io
            - Discoveree: linksmart directory, Node-RED
        - DID - endpoints
            - method: github?
            - volunteers: Intel, Siemens?
        - CoRE RD - endpoints
            - volunteers: Cristiano, Philipp
    
## To Do:
* Define what an implementation is
    - Per deliverable
    - Can use previous discussion (eg Princeton testfest) as a starting point
    - Profiles
         - Does a implementation (e.g. node-wot) always need to check that a TD satisfies the profile constraints?
    - Discovery
* Describe implementations
    - Per deliverable
    - In each source repo...
* Collect data for each implementation
* Describe testing plan
    - Look at last year's CR transition request for format and previous version
* Index testing tools
* Index report generation tools
* Organize outputs
    - Testing plan for each deliverable
    - Draft implementation report for each deliverable
    - Identification of testing gaps
    - Identification of implementation gaps -> at risk feature markup

## Other work
* Updating and generalizing the report generation scripts
* Updating the TD playground
* Capturing automated tests for directories
