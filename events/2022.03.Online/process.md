# Process for Updating Test Results
To do:
- clarify role of tools directory, wot-tools repo, location of test data for release, where documentation goes, etc.

## Automated Processes

### Assertion Extractor
Script that extracts assertions from specification and puts them in `template.csv` under each repo's `testing` directory.
See
- https://github.com/w3c/wot-architecture/blob/main/testing/extract.js - uses URL
- https://github.com/w3c/wot-architecture/blob/main/testing/extractFile.js - uses Filename, adds sorting
- https://github.com/w3c/wot-tools - where various tools SHOULD live
- https://github.com/egekorkan/wot-thing-description/blob/main/.github/workflows/assertion-sync.yml
To do:
- Fix/move script to wot-tools (Ege)
- Update current PR to use script (Ege)
- Set up PRs to add automations to each repo (Ege)
- IR Report generator will NOT update template.csv (McCool)
- Remote assertions.csv (McCool)

### Assertion Tester for TD
Run JSON Schema and point-checking scripts to automate testing for TDs.

To do:
- Set up to run automatically in wot-testing repo and update Results directory contents (Fady)

### How to

To test a single TD implementation, use the following command after installing playground:
`node thingweb-playground/packages/cli/index.js -t TD -i myimplementation/TDs/ -o Results/myimplementation -a`

This creates a csv file under Results folder with the name `myimplementation.csv`

If the `manual.csv` of the implementation exists, it should be included with the `-m myimplementationManual.csv` option at the end, e.g.
`node thingweb-playground/packages/cli/index.js -t TD -i myimplementation/TDs/ -o Results/myimplementation -a -m myimplementationManual.csv`

To test a single TM implementation, use the following command after installing playground:

`node thingweb-playground/packages/cli/index.js -t TM -i myimplementation/TMs/ -o Results/myimplementation -a -m myimplementationManual.csv`

If you have tested an implementation for TM and TD, you should merge their results. To do so:

`node thingweb-playground/packages/cli/index.js --merge-only Results/tdresults.csv Results/tmresults.csv -o Results/myimplementation`

You can also put more than 2 csv files to be merged.

For the case of Ditto, an example of all the commands can be seen below:

```bash
node ~/git/thingweb-playground/packages/cli/index.js -t TM -i Ditto/TMs/ -o Results/ditto2 -a -m Ditto/ditto.csv
node ~/git/thingweb-playground/packages/cli/index.js -t TD -i Ditto/TDs/ -o Results/ditto1 -a -m Ditto/ditto.csv
node ~/git/thingweb-playground/packages/cli/index.js --merge-only Results/ditto1.csv Results/ditto2.csv -o Results/ditto
```

## Manual Processes

### Copying Testing Outputs to Appropriate Repos
Just before updating the Implementation Report, 
result files, testimonials, and implementation descriptions need to be copied to the 
testing/inputs subdirectory in each repo.
This *could* be automated but is currently done as part of the next step.

### Implementation Report Generator
A script is run to update the Implementation Report.  This SHOULD eventually be checked
into wot-tools but for reasons it can't but McCool will run when needed.
Then a PR is updated/created with the new IR and the updated input files.

