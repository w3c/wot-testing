# July 2022 Testfest
To focus *completely* on testing and completing the Implementation Reports.
We also need to focus on gaps where features are at risk.
Output will be final updates to at-risk item lists for CR Transition resolutions planned for Aug 3.
Profiles should be stabilized enough for testing.

Note: this will be a WoT IG event.  We can have contributors who are not WoT members but they have to be
invited as IG guests.  However, this is only the case if they are contributing to the Implementation report,
e.g. with an Implementation Description, targeting the CR candidate deliverables, etc.  Experimental
implementations that do not contribute to the test results should be deferred to the next *plugfest*.

# Important Notes about Policy
* PRs for additional input should go into data/input_2022 not into this directory as in previous plugfests.
* The `{Deliverable}_manual.csv` in this directory is a snapshot taken at the start of the event and should be used for
  input data and PRs generated during the event.  However, please refer to the respective repos to
  find the most recent version.  

# Logistics:
* Date: 25-29 July 2022
* Duration: 1h
* Time: (tentative; to be finalized July 20)
   - 8am Eastern/12pm UTC Monday and Tuesday
   - 9am Eastern/1pm UTC Wednesday (moved from 7am to avoid conflict with Profile)
   - 8am Eastern/12pm UTC Thursday, and Friday (moved from 10am Eastern - to confirm)
* WebEx: See [W3C Calendar](https://www.w3.org/groups/wg/wot/calendar)
* Slack: Toumura has resent invites; see [email](https://lists.w3.org/Archives/Member/member-wot-ig/2022Jul/0001.html)
* Hangouts: none
* VLAN: Toumura has confirmed is up; see [email](https://lists.w3.org/Archives/Member/member-wot-ig/2022Jul/0001.html)
* Other
   - Details to follow

## Preparation
- Organize instructions in appropriate README.md files and index (McCool/Fady)
- Draft and review implementation descriptions (McCool)
- Ensure manual.csv files are up to date (McCool to copy from 06.2022)

## Contributions
If you are participating in the testfest, please do the following:

### Contribution to any specification
- Provide an implementation description to https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Impls. You can find examples linked there; look at node-wot in particular for an example. Make sure that the name of the implementation is the same across all possible contributions.
- Provide a testimonial (from your company's AC rep) at https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Testimonials. You can find examples linked there.

### Contribution to Discovery specification
- If it is a new implementation, create a folder with an appropriate name in both https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD and https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD.  Note that folders group inputs for implementations, not organizations.  Relate implementations to organizations if necessary in the implementation description. 
- If you have a TDD implementation: Provide the TDs of your TDD to the TD specification at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD in the appropriate directory. These TDs will be used to generate the automatic results for the TD test result.
- If you have a TDD implementation: Fill in the TD [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) for the TD specification and submit it under the implementation's directory in https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD. This file is needed for the TD manual results, and is for the TD spec, NOT the WoT Discovery spec.
- If you have a TDD implementation: Automatically test your implementation with https://github.com/farshidtz/wot-discovery-testing and submit the automatic results at https://github.com/w3c/wot-testing/tree/main/data/input_2022/Discovery under a directory for your implementation. 
- For ANY discovery implementation (including TDD, TD Server, and Discoverer implementations), fill the Discovery `manual.csv` (https://github.com/w3c/wot-discovery/blob/main/testing/manual.csv). Note that this is for the WoT Discovery spec, not the TD spec.  It should be submitted like the automatic results above.

### Contribution to TD specification
- If it is a new implementation, create a folder with an appropriate name in https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD.  Note that folders are for implementations, not organizations.  Relate implementations to organizations if necessary in the implementation description.
- Provide the TDs and TMs of your implementation to the TD specification at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD . You need to group them in a folder under your implementation name. These TDs will be used to generate the automatic results. You can see a contribution with both TD and TM at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD/Ditto.  NOTE: if your implementation is a pure consumer and does not have TDs, skip this step.
- Fill in the [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) submit it. This file is needed for the manual results. This file should go in the folder of your implementation.
- Update batchValidation.sh to use your input data, if necessary.  Note: make sure the suffixes are correct and are picked up by the script!
- [Example contribution: `intel-nodejs`](https://github.com/w3c/wot-testing/pull/312)

### Contribution to Profiles specification
  - Provide the TDs of your implementation to the TD specification at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD . You need to group them under your implementation name, like `intel-nodejs/TDs`. These TDs will be used to generate the automatic results.
  - Fill in the [manual.csv](https://github.com/w3c/wot-testing/blob/main/events/2022.07.Online/TD/manual.csv) for the TD specification and submit it there. This file is needed for the manual results. This file should go in the folder of your implementation.
  - ALSO provide the TDs of your implementation at https://github.com/w3c/wot-testing/tree/main/data/input_2022/Profiles. Group it under your implementation, mimicking the file structure of the TD.  In this directory also include your [manual.csv](https://github.com/w3c/wot-profile/blob/main/testing/manual.csv) results for Profiles.

### Gaps and Issues
Please create an issue for any gaps that you are working on during the Testfest, and label them with `Testfest 2022.07`:
- [Testfest 2022.07](https://github.com/w3c/wot-testing/labels/Testfest%202022.07)

## Other Updates 
After the input data has been updated as above, the following also needs to be done (by editors):

- Merge new inputs from event into data/input_2022
- Generate results
    - Discovery generates these directly
    - TD generates these using batchValidation script (run manually)
- Copy results over to appropriate delivery repo
    - testing/inputs/results
- Update Implementation Report Drafts
    - [TD](https://github.com/w3c/wot-thing-description/pull/1522)
    - [Discovery](https://github.com/w3c/wot-discovery/pull/331)




