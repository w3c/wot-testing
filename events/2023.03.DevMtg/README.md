# WoT At-Risk Assertion Resolution Meeting - March 2023

- Summarize new work on deliverables
- Review and explain at-risk items
- Gather implementation experience and resolve at-risk items

NOTE: this meeting is not about promoting WoT to newcomers, it is
about gathering experience from existing implementers so we can retire
at-risk features. So we probably we want a targeted invitation list,
and don't want to promote it on twitter, etc.
(Changing name to capture this).

Invitations to:

- Presenters in CG meetings
- SDO collaborators, e.g. ECHONET
- Existing WG/IG members - implementation owners

SCOPE: it may not even be possible to cover all deliverables and assertions,
we will need to prioritize. Only 1h long!

## Logistics

Separate TD, Architecture, and Discovery calls.
WoT WG members will already have access to the call logistics.
Non-members, please see the instructions below for each event.

### TD Call

- [Slides explaining TD At-Risk Items](https://docs.google.com/presentation/d/1OZeLR0-qAw01R1UloTG25xQjc5LFuwvRP9o50QVo660/edit?usp=sharing)
- EN: Reuse second hour of TD slot: 3/29 15:00 UTC
  - 29 March 2023, 15:00 UTC - (see also [timeanddate](https://www.timeanddate.com/worldclock/converter.html?iso=20230329T150000&p1=137&p2=43&p3=tz_at&p4=1440&p5=136&p6=195&p7=101&p8=33&p9=236&p10=248))
  - Reuse TD WebEx
- JP: 28 March 2023, 14:00 JST

### Architecture Call

- [Slides explaining Architecture At-Risk Items]([link](https://docs.google.com/presentation/d/16Ow5rPjnojdl693pqkOhoc5bNCBIMOYZvJQC9wHZGsk/edit?usp=sharing))
- EN: Reuse Architecture slot: 4/13 10:00 UTC (tentative)
  - 13 April 2023, 10:00 UTC - (see also [timeanddate](https://www.timeanddate.com/worldclock/converter.html?iso=20230413T100000&p1=137&p2=43&p3=tz_at&p4=1440&p5=136&p6=195&p7=101&p8=33&p9=236&p10=248))
  - Reuse Architecture WebEx
- JP: TBD

Non-WoT members who wish to participate should send an request to 
[team-wot@w3.org](mailto:team-wot@w3.org) by April 12.

### Discovery

- EN: Reuse Discovery slot: 4/17 14:00 UTC 
  - 17 April 2023, 14:00 UTC - (see also [timeanddate](https://www.timeanddate.com/worldclock/converter.html?iso=20230417T140000&p1=137&p2=43&p3=tz_at&p4=1440&p5=136&p6=195&p7=101&p8=33&p9=236&p10=248))
  - Reuse Discovery WebEx
- JP: TBD

Non-WoT members who wish to participate should send an request to 
[team-wot@w3.org](mailto:team-wot@w3.org) by April 14.

## At-Risk Assertion Reviews

- [Architecture 1.1](link.md) - Lagally/McCool (see however https://github.com/w3c/wot-testing/pull/533)
- [Thing Description 1.1](link.md) - Ege (see however https://github.com/w3c/wot-thing-description/pull/1758)
- [Discovery](link.md) - McCool
- [Profiles](link.md) - Lagally/Francis

## Contribution Instructions

Before you do any contribution, please make sure to check if your implementation has been already listed. Others could have created inputs or results for your implementation.

### Contribution to any specification

Any WoT implementation contributes to the Architecture specification. Thus, please follow the following steps that explain how to contribute to the Architecture specification.

- Provide an implementation description to <https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Impls>. You can find examples linked there; look at node-wot in particular for an example. Make sure that the name of the implementation is the same across all possible contributions.
- Provide a testimonial (from your company's AC rep) at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Testimonials>. You can find examples linked there.
- Fill the [architecture assertions](https://github.com/w3c/wot-architecture/blob/main/testing/assertions.csv) manually and submit it at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Results> with the name of your implementation in the filename.

### Contribution to Discovery specification

- If it is a new implementation, create a folder with an appropriate name in both <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD> and <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD>. Note that folders group inputs for implementations, not organizations. Relate implementations to organizations if necessary in the implementation description.
- If you have a TDD implementation:
  - Provide the TDs of your TDD to the TD specification at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD> in the directory of your implementation under a folder called `TDs`. These TDs will be used to generate the automatic results for the TD test result.
  - Fill in the TD [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) for the TD specification and submit it under the implementation's directory in <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD>. This file is needed for the TD manual results, and is for the TD spec, NOT the WoT Discovery spec. This file should not be inside the `TDs` folder.
- If you have a TDD implementation: Automatically test your implementation with <https://github.com/farshidtz/wot-discovery-testing> and submit the automatic results at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/Discovery> under a directory for your implementation.
- For ANY discovery implementation (including TDD, TD Server, and Discoverer implementations), fill the Discovery [manual.csv](https://github.com/w3c/wot-discovery/blob/main/testing/manual.csv). Note that this is for the WoT Discovery spec, not the TD spec. It should be submitted like the automatic results above.

### Contribution to TD specification

- If it is a new implementation, create a folder with an appropriate name in <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD>. Note that folders are for implementations, not organizations. Relate implementations to organizations if necessary in the implementation description.
- Provide the TDs and TMs of your implementation to the TD specification at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD>. You need to group them in a folder under your implementation name. These TDs will be used to generate the automatic results. You can see a contribution with both TD and TM at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD/Ditto>. NOTE: if your implementation is a pure consumer and does not have TDs, skip this step.
- Fill in the [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) submit it. This file is needed for the manual results. This file should go in the folder of your implementation. Please look at <https://github.com/w3c/wot-testing/blob/main/data/input_2022/TD/README.md> to get help on how to fill this file most efficiently.
- Update [batchValidation.sh](https://github.com/w3c/wot-testing/blob/main/data/input_2022/TD/batchValidation.sh) to use your input data, if necessary. Note: make sure the suffixes are correct and are picked up by the script!
- [Example contribution: `intel-nodejs`](https://github.com/w3c/wot-testing/pull/312)

### Contribution to Profiles specification

- Provide the TDs of your implementation to the TD specification at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/TD>. You need to group them under your implementation name, like `intel-nodejs/TDs`. These TDs will be used to generate the automatic results.
- Fill in the [manual.csv](https://github.com/w3c/wot-thing-description/blob/main/testing/manual.csv) for the TD specification and submit it there. This file is needed for the manual results. This file should go in the folder of your implementation.
- ALSO provide the TDs of your implementation at <https://github.com/w3c/wot-testing/tree/main/data/input_2022/Profiles>. Group it under your implementation, mimicking the file structure of the TD. In this directory also include your [manual.csv](https://github.com/w3c/wot-profile/blob/main/testing/manual.csv) results for Profiles.
