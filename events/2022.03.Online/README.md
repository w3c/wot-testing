# WoT March 2022 Plugfest/Testfest

* Scheduled for 14-18 March 2022.
* [Testfest meetings: 8am Eastern time](https://www.w3.org/groups/wg/wot/calendar)
* [Plugfest meetings: 9am Eastern time](https://www.w3.org/groups/wg/wot/calendar)
* [WebEx](https://lists.w3.org/Archives/Member/member-wot-ig/2022Mar/0002.html)

## Preparations for the Testfest

### General

*  Capture implementation descriptions
   * [template](events/templates/impldesc.html)
*  Setting up systems (Beginning of March):
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
