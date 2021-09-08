# WoT Sept 2021 Plugfest/Testfest

## Logistics 
* Date: Sept 27-Oct 1
* Time: 9am-10am (Eastern Time) daily sync meeting
* Location: WebEx: for [Members](https://lists.w3.org/Archives/Member/member-wot-wg/2021Sep/0001.html) and for [IEs](https://lists.w3.org/Archives/Group/group-wot-ie/2021Sep/0000.html)
* VPN: [Instructions](vpn.md)

## Activities

### Implementation Reports

#### Thing Description
* Update implementation descriptions
* Capture validated TDs
* Carry forward older TDs as appropriate
* Identify gaps in testing
* Generate test cases to fill gaps
* Identify features that need manual assertions from implementors

#### Discovery
* Update implementation descriptions
* Collect tests into a single test suite
* Match tests with features
* Identify gaps in testing (features without tests)
* Generate test cases to fill gaps
* Identify features that need manual assertions from implementors

### Exploration

#### ECHONET/WoT Integration

* TMs/ODM for ECHONET Device Descriptions
    - See https://echonet.jp/web_api/ for JSON device descriptions
    - These are very similar to TMs, and also include both JA and EN descriptions, so readable for EN readers
* Generating TDs for ECHONET Lite Web APIs 
    - Plan A: protocol binding and access devices via a transparent proxy
    - Plan B: providing translated web APIs via a translation service ("translating proxy")
        - not clear yet if this will be necessary, TBD
        - e.g. to translate payloads so they can be described with TD data schemas
* Registering ECHONET TDs with a WoT TD Directory service (e.g. LinkSmart)
* Accessing ECHONET devices from one or more WoT consumers (e.g. node-wot or Node-RED)

Note: if we translate ALL the device descriptions, there are about 30 of them, and this will
provide additional testing material and another implementation.  
