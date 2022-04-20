# Process for Updating Test Results

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

