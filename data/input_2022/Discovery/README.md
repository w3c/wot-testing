# WoT Discovery 2022 Test Data 

* Latest full assertions list is [here, in wot-discovery/testing/template.csv](https://github.com/w3c/wot-discovery/blob/main/testing/template.csv) (this is automatically generated from the index.html whenever I update the implementation report)
* Latest *manual* assertion list is [here, in wot-discovery/testing/manual.csv](https://github.com/w3c/wot-discovery/blob/main/testing/manual.csv).  This is manually maintained and should be revised whenever the set of automatically tested assertions changes, or there are new assertions that we do not have automatic tests for.
* New results for an implementation should be put [here, in wot-testing/data/input_2022/Discovery](https://github.com/w3c/wot-testing/tree/main/data/input_2022/Discovery).  I will copy csv files out of the Results directory to wot-discovery when I update the reports; the directories for each implementation can have separate files for automatic and manual results but these should be combined for the version in Results.
* Implementation descriptions should go [here, in wot-testing/data/input_2022/Architecture/Impls](https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Impls).  Identify an implementation as for discovery with a "TD_directory", "TD_server", or "discoverer" type.

- [ ] Capture test results (put in [Results](Results/README.md))
- [ ] Describe each implementation (put in [Architecture/ImplDesc](../Architecture/ImplDescs))
- [ ] Capture name and activity status of each implementation in [active.csv](active.csv)

For each CSV file:
* The "null" entries should be changed to "pass" or "fail" for each
  implementation and a modified copy, named after the implementation, placed in the 
  Results directory.  
* If a feature is *optional*, then "not-impl" may also be used if it is not implemented.
* The implementation report generator will then read these and tabulate
  the number of each for all implementations.  
* It is ok to include manual as well as automatically tested assertions in the same file.  
* Later on (see above) we can use a table of the assertions that are manual to structure the 
  implementation report.
* You can use directories named after each implementation to organize results and keep manual
  and automatically tested results separate but these should be merged into a single
  file in Results.
