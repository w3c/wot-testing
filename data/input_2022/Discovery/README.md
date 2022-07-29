# WoT Discovery 2022 Test Data 
- [ ] Capture test results (put in [Results](Results/README.md))
- [ ] Describe each implementation (put in [Architecture/ImplDesc](../Architecture/ImplDescs))
- [ ] Capture name and activity status of each implementation in [active.csv](active.csv)
- [ ] Create a CSV file, manual.csv, listing the assertions that can were asserted manually.

The [template.csv](template.csv) file contains a list of all the current assertions in 
the WoT Discovery specification.  
* The "null" entries should be changed to "pass" or "fail" for each
  implementation and a modified copy, named after the implementation, placed in the 
  Results directory.  
* The implementation report generator will then read these and tabulate
  the number of each for all implementations.  
* It is ok to include manual as well as automatically tested assertions in the same file.  
* Later on (see above) we can use a table of the assertions that are manual to structure the 
  implementation report.
