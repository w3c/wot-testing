# Testfest
To focus *completely* on testing and completing the Implementation Reports with a focus on Discovery and TD testing.

Note that the Profile spec will still be "mutable".  While we might prototype some tests we will defer detailed testing of Profiles to another
Testfest in mid-July (to be organized).

We also need to focus on gaps where features are at risk.

## Logistics
* Date: 6-10 June 2022
* Time: (See [doodle](https://doodle.com/meeting/participate/id/bmZp0L3d))
   - 8am Eastern/12pm UTC Monday and Tuesday
   - 7am Eastern/11am UTC Wednesday
   - 10am Eastern/2pm UTC Thursday, and Friday
* WebEx: see [W3C Calendar](https://www.w3.org/groups/wg/wot/calendar)
* Slack: Toumura resent invites; see [email](https://lists.w3.org/Archives/Member/member-wot-ig/2022May/0009.html)
* Hangouts: none
* VLAN: Toumura has confirmed is up; see [email](https://lists.w3.org/Archives/Member/member-wot-ig/2022May/0009.html)
* Other
   - Details to follow

## Preparation
- Organize instructions in appropriate README.md files and index 
- Update Implementation Report templates and provide links and instructions (McCool, Ege)

## Contributions

If you are participating in the testfest, please do the following:

- Contribution to any specification
  - Provide an implementation description to https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/Architecture/Impls. You can find examples linked there. Make sure that the name of the implementation is the same across all possible contributions.
  - Provide a testimonial from your company at https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/Architecture/Testimonials. You can find examples linked there.

- Contribution to Discovery specification
  - (if you have a directory) Provide the TDs of your TDD to the TD specification at https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/TD . You need to group them under your implementation name, like `intel-nodejs/TDs`. These TDs will be used to generate the automatic results.
  - (if you have a directory) Fill in the [manual.csv](https://github.com/w3c/wot-testing/blob/main/events/2022.06.Online/TD/manual.csv) for the TD specification and submit it there. This file is needed for the manual results. This file should go in the folder of your implementation.
  - (if you have a directory) Automatically test your implementation with https://github.com/farshidtz/wot-discovery-testing and submit the automatic results at https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/Discovery. Example can be seen at `Inputs/intel-dir`.
  - For any discovery implementation, fill the `manual.csv` (https://github.com/w3c/wot-testing/blob/main/events/2022.06.Online/Discovery/manual.csv). It should be submitted like the automatic results above.

- Contribution to TD specification
  - Provide the TDs and TMs of your implementation to the TD specification at https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/TD . You need to group them under your implementation name, like `intel-nodejs/TDs`. These TDs will be used to generate the automatic results. You can see a contribution with both TD and TM at https://github.com/w3c/wot-testing/tree/main/events/2022.03.Online/TD/Ditto
  - Fill in the [manual.csv](https://github.com/w3c/wot-testing/blob/main/events/2022.06.Online/TD/manual.csv) submit it. This file is needed for the manual results. This file should go in the folder of your implementation.

- Contribution to Profiles specification
  - Provide the TDs of your implementation to the TD specification at https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/TD . You need to group them under your implementation name, like `intel-nodejs/TDs`. These TDs will be used to generate the automatic results.
  - Fill in the [manual.csv](https://github.com/w3c/wot-testing/blob/main/events/2022.06.Online/TD/manual.csv) for the TD specification and submit it there. This file is needed for the manual results. This file should go in the folder of your implementation.
  - Provide the TDs of your implementation at https://github.com/w3c/wot-testing/tree/main/events/2022.06.Online/Profiles. Group it under your implementation, mimicking the file structure of the TD.

More detailed instructions can be found in the READMEs for each deliverable:
- [TD](TD/README.md)
- [Discovery](Discovery/README.md)

Please create an issue for any gaps that you are working on during the Testfest, and label them with `Testfest 2022.06`:
- [Testfest 2022.06](https://github.com/w3c/wot-testing/labels/Testfest%202022.06)

### Old Instructions

[Example contribution: `intel-nodejs`](https://github.com/w3c/wot-testing/pull/312)

To be done during event:
- Capture input data
    - TDs and TMs for the TD deliverable
- Updating manual.csv files for each Implementation
    - Only new or replacement inputs need to be provided
    - Will be merged with old input data
- Generate results
    - Discovery generates these directly
    - TD generates these using batchValidation script, which will be run daily
    - After merging with older input data
- Updating Implementation Report Drafts
    - [TD](https://github.com/w3c/wot-thing-description/pull/1522)
    - [Discovery](https://github.com/w3c/wot-discovery/pull/331)
- Completing Implementation Descriptions 





