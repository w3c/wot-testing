# WoT March 2022 Plugfest/Testfest

## Prework
- [ ] Update Implementation Report draft
- [ ] Update template.csv
- [ ] Update manual.csv 

## Testfest
- [ ] Capture test results (maintained in [Inputs](Inputs) and [Results](Results))
- [ ] Describe each implementation (put in [Architecture/ImplDesc](../Architecture/ImplDescs))
- [ ] Capture name and activity status of each implementation in [active.csv](active.csv)


The [template.csv](https://github.com/w3c/wot-discovery/blob/main/testing/template.csv) file contains a list of all the current assertions in 
the WoT Discovery specification. The [manual.csv](https://github.com/w3c/wot-discovery/blob/main/testing/manual.csv) contains a list of assertions that aren't covered by farshidtz's [directory testing tool](https://github.com/farshidtz/wot-discovery-testing/tree/main/directory).
* The "null" entries should be changed to "pass" or "fail" for each
  implementation and a modified copy, named after the implementation, placed in the 
  Results directory.  
* The implementation report generator will then read these and tabulate
  the number of each for all implementations.  
* It is ok to include manual as well as automatically tested assertions in the same file.
* Later on (see above) we can use a table of the assertions that are manual to structure the 
  implementation report.
