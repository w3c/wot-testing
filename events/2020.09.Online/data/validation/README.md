# WoT Testing - September 2020 Online Plugfest 
## TD Validation

* [TD validation reports](auto) The thingweb playground
  validation tool can generate CSV files for each TD that indicates what 
  features that TD uses.  
* [template.csv](template.csv): A list of all the features that can be
  included in a final report.  This includes both automatically tested
  and manually asserted features.
* [TD merged validation reports](merged) For features
  that cannot be automatically tested, manual assertions should be made 
  corresponding to each TD.  These will be given alongside the TDs.
  This directory contains the results of merging the automatic 
  validation results and the manual assertions.  The merged results
  will be used for the final report.
  Those that cannot be tested automatically are listed in the 
  [manual template CSV](../../manual.csv) file.
  Each organization should copy this file for each of their TDs, fill it out, and
  put it in a file with the same base name as the corresponding TD and in the same
  directory in the [TD archive](../../TDs).
  An organization may also create a CSV file for the entire organization (with the same
  name as the subdirectory for the organization and stored at the same level)
  if there are results that
  are the same for all TDs from that organization.
  The validation script will merge the automatic test results and the manual assertions
  combining them into a single CSV file.
