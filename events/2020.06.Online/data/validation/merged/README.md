# WoT Testing - June 2020 Online Plugfest 
## TD Validation
### Merged Test Results

Not all features can be tested automatically.
Those that cannot are listed in the 
[manual_template.csv](../../../TDs/manual_template.csv) file in the 
[TDs](../../../TDs) directory.
Each organization should copy this file for each of their TDs, fill it out, and
put it in a file with the same base name as the corresponding TD and in the same
directory.

An organization may also create a CSV file for the entire organization (with the same
name as the subdirectory for the organization and stored at the same level)
if there are results that
are the same for all TDs from that organization.

The validation script will merge the automatic test results and the manual assertions,
combining them into a single CSV file, and place the results in this directory.
