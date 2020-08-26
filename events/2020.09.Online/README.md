# Online Plugfest 

## Logistics
* Dates: Sept 28 to Oct 2
* Meeting Time: 9am-10am ET
   - https://www.timeanddate.com/worldclock/fixedtime.html?msg=WoT+Fall+2020+Plugfest&iso=20200928T09&p1=43&ah=1
* WebEx
   - https://lists.w3.org/Archives/Member/member-wot-wg/2020Aug/0023.html
* Slack 
   - #plugfest channel on https://wotpf.slack.com/
     - (invitation URL will be posted on member-wot-{wg/ig/guests})
* Google Hangout?
   
## Discussion
* Possible demo during Breakouts week, Oct 26-30?
   - Or a video?  Plus Q&A?
* Hackathon?
   - "Use WoT to do something interesting"
   - Goal is developer community engagement and training
   - Needs lots better organization, support, docs, tutorials, etc.
   - PLH has a [docs project](https://www.w3.org/PM/) that is relevant
   - (further discuss in Marketing)
   
### To Do
* Test VPN - server, client (Toumura/McCool)
    - Reorg init.d script to use wlan0 for upstream and eth0 for downstream
    - Make sure server is up, certs are valid, IPs getting assigned, doc static/dynamic IP ranges (done)
    - Test some devices
* Define scenarios, goals, etc.
    - Use the issue tracker
        * Start with the ones below...
    - OneDM integration: https://github.com/w3c/wot-testing/issues/47
        * Enhanced Node-RED integration, eg. semantic categories, semantic/queries queries
        * JSONPath vs. SPARQL
    - Profiles
* Implementations
* Prototypes
    - Semantic proxy
    - NodeRED integration w/ directories
* Requirements
* Services 
    - LinkSmart directory instances (local, global, models/instances, sparql/jsonpath/xpath)
    - Proxy services
    - Gateways (protocol translators)
    - Metadata translators
    - Discoverers (eg read github, register TDs with directory...)
* Tools
    - Validation
    - Report generator

### Setup
* [Setup](setup.md)
* Prework to do before the plugfest.

### Archives
* [TDs](TDs/README.md): TD archive and manual assertion input data.
* [Data](data/README.md): Data captured during the plugfest and report generation tools. 

### Tools
Links to use [useful tools](tools/README.md).

## Testing
* WoT Discovery implementations
   - FPWD should be ready
   - Updated LinkSmart implementation at least
   - Eventually need a second implementation
* Updated TDs, including new features
   - OAuth2 - client and device flows, extensions
   - TD Proofs - ld-proofs signing, including in directories
* Scripting API
   - node-wot
* Edge Computing
   - AI services as Things

## Scenarios
* Retail
   - Conexxus/ORI/EdgeX use case: AI service, virtual devices, Node-RED, discovery, etc.
* Smart City
   - Geolocation: SSN, geolocation data ontology, etc.
