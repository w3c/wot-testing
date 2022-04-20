# Process for Updating Test Results

## Automated Processes

### Assertion Extractor
Script that extracts assertions from specification and puts them in `template.csv` under each repo's `testing` directory.
See
- https://github.com/w3c/wot-architecture/blob/main/testing/extractFile.js
- https://github.com/w3c/wot-tools
- https://github.com/egekorkan/wot-thing-description/blob/main/.github/workflows/assertion-sync.yml
To do:
- Fix/move script to wot-tools
- Update current PR to use script (Ege)
- Set up PRs to add automations to each repo

### Assertion Tester for TD
Run JSON Schema and point-checking scripts to automate testing for TDs.

To do:
- Set up to run automatically in wot-testing repo and update Results directory contents (Fady)

## Manual Processes

### Copying results to Appropriate Repos

### Implementation Report Generator
