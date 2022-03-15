# WoT March 2022 Plugfest/Testfest
- [ ] Capture test results (put in [Results](Results/README.md))
- [ ] Describe each implementation (put in [Architecture/ImplDesc](../Architecture/ImplDescs))
- [ ] Create a CSV file listing the assertions that can be tested automatically.

The [template.csv] file contains a list of all the current assertions in the Discovery
specification.  The "null" entries should be changed to "pass" or "fail" for each
implementation and a modified copy, named after the implementation, placed in the 
Results directory.  The implementation report generator will then read these and tabulate
the number of each for all implementations.  It is ok to include manual as well
as automatically tested assertions in the same file.  Later on (see above) we can
use a list of those that are automatically tested to structure the implementation 
report.
