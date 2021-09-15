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
  - Next steps: 
      - update script to use latest assertion tester (McCool)
          - https://github.com/w3c/wot-testing/blob/main/data/testing/tests/2019-05/update.sh
          - refactored so... assertions package, CLI version
          - [documentation](https://github.com/mmccool/wot-thing-description/tree/testing-test ); also -h option
     - copy CSV result files over to thing-description (McCool)
          - https://github.com/mmccool/wot-thing-description/tree/testing-test
     - update draft report in 
          - https://github.com/w3c/wot-thing-description/pull/1155
     - update manual.csv (Ege) 
          - By June 11
          - everyone updates manual assertions early next week...
     - McCool update report for June 16 and June 18
          - If by June 16 there is an update manual.csv (from Ege), McCool can edit the CSv files to remove the unneeded assertions
* Discovery Testing
    - Directory tests 
        - [https://github.com/farshidtz/wot-discovery-testing Farshid Discovery tests]
        - Need to update to output just CSV files
        - Need to output sub-tests
        - Need to map tests to features/assertions
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
