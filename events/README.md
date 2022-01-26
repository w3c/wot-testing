# WoT Testing

## Events

Plugfests and other testing event logistics and results.

* __June 2020 Online Plugfest__:
  * June 15 to June 19
  * [Wiki](https://www.w3.org/WoT/IG/wiki/F2F_meeting,_1-12_June_2020,_Online)
  * [Index](2020.06.Online/README.md)
* __September 2020 Online Plugfest__:
  * September 28 to October 2
  * [Index](2020.09.Online/README.md)
* __March 2021 Online Plugfest__:
  * March 1 to March 5
  * [Index](2021.03.Online/README.md)
* __September 2021 Online Plugfest__:
  * September 27 to October 1
  * [Index](2021.09.Online/README.md)

## Results

Project results are found under the `Results` subdirectory of the event's `Projects` directory.

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

For projects during a Plugfest, please do a __Pull Request (PR)__  that contains a directory named after your project under the `Projects` directory of the respective event. This directory should follow the structure of the [ProjectFolderTemplate](./templates/ProjectFolderTemplate). The project should contain a `README.md` file that has the same structure as the template [ProjectStart-README-template.md](./templates/ProjectFolderTemplate/ProjectStart-README-template.md).
The ongoing status and intermediate results of a project should be captured in the discussion of the project's PR
and the final results should be documented in a subdirectory called `Results` containing a `README.md` file that follows the structure of [ProjectResult-README-template.md](./templates/ProjectFolderTemplate/Results/ProjectResult-README-template.md).
