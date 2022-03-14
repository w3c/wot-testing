# WoT March 2022 Plugfest/Testfest

* Scheduled for 14-18 March 2022.
* Testfest meetings: 
   - [M,T,Th,F: 8am Eastern](https://www.w3.org/groups/wg/wot/calendar)
   - [W: 9am Eastern](https://www.w3.org/groups/wg/wot/calendar)
* Plugfest meetings: 
   - [M,T,Th,F: 9am Eastern](https://www.w3.org/groups/wg/wot/calendar)
   - [W: 10am Eastern](https://www.w3.org/groups/wg/wot/calendar)
* [WebEx](https://lists.w3.org/Archives/Member/member-wot-ig/2022Mar/0002.html)
   - Same webex for both calls
* IRC
   - [Testfest: `#wot-tf`](https://irc.w3.org/?channels=wot-tf)
   - [Plugfest: `#wot-pf`](https://irc.w3.org/?channels=wot-pf)

## Preparations for the Testfest

### Participant TO DO

* Submit TDs and/or TMs
   * Put in a subdirectory named after each *implementation*, with `TDs` and `TMs` subdirectories for under that.
   * If more than one organization contributes to an implementation (e.g. for node-wot), include the organization name in the filenames.
   * Use the `.td.jsonld` suffix for TDs and `.tm.jsonld` suffix for TMs; this will automatically invoke a validator based on the TD 1.1 spec (which will block merging the PR if it fails)
   * If you *must* submit a TD or TM that fails validation, use `.jsonld` or even better, `.tm-fail.jsonld` etc.
* Submit CSV file for manual assertions
   * For each deliverable
   * See templates under each deliverable
      * [TD manual assertion template - FIX syntax](TD/manual.csv)
* Submit implementation descriptions
   * [HTML description template](../templates/TestImplementation/impldesc.html)
   * [CSV categories template](../templates/TestImplementation/impl.csv)
* Bring implementations online
   * Directories
   * Things
   * Using VLAN if necessary
* Document active systems 
   * Edit active.csv to indicate URLs, etc.

### System Setup
* VLAN
* Install and run discovery implementations

### TD

*  add Thing Model functionality to assertion tester (23 Feb - Fady and Ege)
*  Draft Implementation report for TD
*  Capture TDs and TMs (Beginning of March)

### Discovery
* check Discovery assertions and needed implementations + Draft Implementation report

### Architecture
*  Draft Implementation report for Architecture
   
## Preparations for the Plugfest

* Define scenarios - PR against scenarios.md
* Document systems

## How to Participate

### __Testfest__

Most devices and services for the Plugfests and Testfests should have TDs, and these
should follow (and be validated against) the published WoT Thing Description
recommendations.  Exceptions (for example, infrastructure services
such as proxies and directories) should be well-documented.

For Things with TDs, please see the setup
instructions for each Plugfest to see how to connect to the VPN (if used)
and register your TDs.
All TDs need to be validated, archived in Github, and (ideally) registered
with a directory service.

### __Plugfest Projects__

For projects during a Plugfest, please do a __Pull Request (PR)__  that contains a directory named after your project under the `Projects` directory of the respective event. This directory should follow the structure of the [ProjectFolderTemplate](../templates/ProjectFolderTemplate). The project should contain a `README.md` file that has the same structure as the template [ProjectStart-README-template.md](../templates/ProjectFolderTemplate/ProjectStart-README-template.md).
The ongoing status and intermediate results of a project should be captured in the discussion of the project's PR
and the final results should be documented in a subdirectory called `Results` containing a `README.md` file that follows the structure of [ProjectResult-README-template.md](../templates/ProjectFolderTemplate/Results/ProjectResult-README-template.md).
