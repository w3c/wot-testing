# Dec 2022 Testfest 

W3C testing requires demonstrating the implementability of a specification by more than one implementation. This implies
that all normative assertions of the specification need to be verified. 
If an assertion cannot be verified by two implementations, it is "at risk".
In this case, either the implementation(s) have to be improved, or the assertion needs to be adapted or removed.

Testing, that is, verification of assertions, does not need to be automated. 
If testing is not automatic implementers need to manually state
that an assertion is satisfied (or not) by their implementation.  In the following this is done with CSV
files.  In general, the "Status" entry for each assertion should be one of the following values:
* "null" (no information, the default),
* "pass" (assertion is satisfied), 
* "not-impl" (feature associated with the assertion is not implemented; only used for unimplemented optional features) and 
* "fail" (assertion is demonstrably false for the implementation, i.e. a mandatory feature is not implemented, or a feature is implemented in a way that contradicts the assertion).

The testfest will also confirm interoperability by considering pairwise interoperability of
multiple implementations.  This confirmation will be performed by testing all operations/affordances
indicted in the API specified TD of a Thing by a specific Consumer.

## Logistics
* Date: Dec 12-15
* Time: 1h / day
   - 8am Eastern Monday and Tuesday (on Monday, replaces Security call)
   - 9am Eastern Wednesday (replaces Testing call)
   - 10am Eastern Thursday
* W3C Calendar: {mccool to add calender entry and link}
* WebEx: [Member email link](https://lists.w3.org/Archives/Member/member-wot-wg/2022Dec/0002.html), [IE email link](https://lists.w3.org/Archives/Group/group-wot-ie/2022Dec/0002.html)
* VPN: none (not needed to resolve remaining gaps)

## Goals and Priorities
* Complete Implementation Reports for TD 1.1, Discovery, and Architecture 1.1
   - Collect final test cases and results (e.g. manual assertions)
   - Focus on resolving at-risk items
   - Capture/Update Implementation Descriptions
   - Gather Testimonials - perhaps a separate document -> main call
 * Evaluate implementability of the Profile specification
   - Constraints on Things
   - Constraints on Consumers
   - Interoperability constraints

## Contributions
If you are participating in the testfest, please do the following:

### Contribution to any specification
- Provide an implementation description to https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Impls. You can find examples linked there; look at node-wot in particular for an example. Make sure that the name of the implementation is the same across all possible contributions.
- Provide a testimonial (from your company's AC rep) at https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Testimonials. You can find examples linked there.  Note that testimonials are about an organization's support for the specification. Implementation descriptions are about codebases (may be supported by multiple organizations, may be descriptions of "brownfield" implementations or older examples without necessarily having testimonial support.

### Contribution to Discovery specification
- If it is a new implementation, create a folder with an appropriate name in both https://github.com/w3c/wot-testing/tree/main/data/input_2022/Discovery AND https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD.  The first is for Discovery assertions, the second is for related TDs (e.g. Directory service TDs). Note that folders group inputs for implementations, not organizations.  Relate implementations to organizations if necessary in the implementation description. 
- If you have a TDD (directory) implementation: 
    - Provide the TDs of your TDD to the TD specification at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD in the appropriate directory. These TDs will be used to generate the automatic results for the TD test result.
    - Fill in the TD [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) for the TD specification and submit it under the implementation's directory in https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD. This file is needed for the TD manual results, and is for the TD spec, NOT the WoT Discovery spec.
    - Automatically test your implementation with https://github.com/farshidtz/wot-discovery-testing and submit the automatic results at https://github.com/w3c/wot-testing/tree/main/data/input_2022/Discovery under a directory for your implementation.
    - Concatenate the automatic and manual assertions, removing the duplicated header, and submit a file *named after your implementation* to https://github.com/w3c/wot-testing/tree/main/data/input_2022/Discovery/Results.
- For ANY discovery implementation (including TDD, TD Server, and Discoverer implementations):
    - Fill the Discovery `manual.csv` (https://github.com/w3c/wot-discovery/blob/main/testing/manual.csv). Note that this is for the WoT Discovery spec, not the TD spec.  It should be submitted like the automatic results above.

### Contribution to TD specification
- If it is a new implementation, create a folder with an appropriate name in https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD.  Note that folders are for implementations, not organizations.  Relate implementations to organizations if necessary in the implementation description.
- Provide the TDs and/or TMs of your implementation to the TD specification at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD . You need to group them in a folder under your implementation name. These TDs will be used to generate the automatic results. You can see a contribution with both TD and TM at https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD/Ditto.  NOTE: if your implementation is a pure consumer and does not have TDs, skip this step.  Please use .td.jsonld for TDs and .tm.jsonld for TMs.
- Fill in the [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) submit it. This file is needed for the manual results. This file should go in the folder of your implementation.
- Update batchValidation.sh to use your input data, if necessary.  Note: make sure the suffixes are correct and are picked up by the script.  Also make sure you include an argument for the manual.csv for your implementation if you have one.
- [Example contribution: `intel-nodejs`](https://github.com/w3c/wot-testing/pull/312)

NOTE: actually running the script to update the results will be done when the implementation report is generated, it is not necessary to check in files under "Results".  Please do NOT check in ONLY files under Results as they will be overwritten by the script!

### Contribution to Profiles specification
- Fill in the [manual.csv](https://github.com/w3c/wot-profile/blob/main/testing/manual.csv) for the Profile specification and submit it under https://github.com/w3c/wot-testing/tree/main/data/input_2022/Profiles/Results in a file named after your implementation.  For example, if your implementations is intel-nodejs, rename the manual.csv file to "intel-nodejs.csv" and do a PR against Profiles/Results/intel-nodejs.csv.
- ALSO provide the TDs of your implementation in a directory named after your implementation (if you have any, e.g. for Things) under https://github.com/w3c/wot-testing/tree/main/data/input_2022/Profiles/, and also consider contributing them to the TD results (i.e. contribute them in both places).

### Contribution to Architecture specification
- Fill in the [manual.csv](https://github.com/w3c/wot-architecture/blob/main/testing/manual.csv) for the Architecture specification and submit it under https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Results in a file named after your implementation.  For example, if your implementations is intel-nodejs, rename the manual.csv file to "intel-nodejs.csv" and do a PR against Architecture/Results/intel-nodejs.csv.

### Gaps and Issues
Please create an issue for any gaps that you are working on during the Testfest, and label them with `Testfest 2022.12`:
- [Testfest 2022.12](https://github.com/w3c/wot-testing/labels/Testfest%202022.12)

## Other

### Tools
* CSV Change Log Generator
   - The following may be useful to understand changes to CSV files: https://github.com/thingweb/thingweb-playground/tree/master/packages/assertions#csv-change-log-generation

### WoT Profile Testing - Notes

   Determine participants - assign assertions to participants Who will provide results? 
   Baseline validation can be done via TD compliance - all TD assertions must hold
   
   We need actual device implementations, not necessarily fully profile compliant
   People need to provide test results as a csv file in the well known format (as before)

   - Define testing/assertion capture procedure
   -- two kinds of entites that are used for tests: consumer / thing
   -- Test the Profile contract
   -- What to test manually / automatically?
   -- Clarifying specification requirements, check feasibility and implementability of each assertion one by one
   
   - Generate TDs that have all operations
   
   - Testcases: Consumer-Thing
   1. standalone test of consumer assertions:
   -- support of all security schemes
   -- behavior handling of async actions - can a consumer query the action status, handle id?
   
   2. standalone test of thing assertions:
   -- Proper usage of problem details 
   
   3. test of Profile contracts
   
   - Capture implementation descriptions, including which do which profiles
   - Capture testing/assertion results
   - Draft the implementation report

   - Need to clarify the dependency of Profile assertions - Profile defines clarifications on other WoT specs, which are tested there.
   - Profile tests should focus on additional clarifications of the profile only.
