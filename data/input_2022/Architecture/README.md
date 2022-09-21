# WoT March 2022 Plugfest/Testfest
## Architecture
Collect data for Architecture.
We will use the Architecture implementation report to centralize all
implementation descriptions.

* [template.csv](template.csv): list of assertions drawn from Architecture spec
* [Results](Results): collection of assertion results, one per implementation
* [Impl](Impl): collection of descriptions of all the implementations, as HTML
    - [Template](https://github.com/w3c/wot-testing/blob/main/events/templates/TestImplementation/impl.html)
* [Testimonials](Testimonials): per-organization testimonials, as HTML
    - [Template](https://github.com/w3c/wot-testing/blob/main/events/templates/TestImplementation/testimonial.html)
    
## Procedure
The specific procedure is as follows:
1. For each implementation, make a copy of the template.csv at https://github.com/w3c/wot-testing/blob/main/data/input_2022/Architecture/template.csv.
2. Rename it to reflect each implementation, ideally using the same name as used elsewhere i.e. for TD inputs, for example “node-wot.csv”
3. Fill in the entries with “pass”, “fail”, “not-impl” or “null”. 
    - If you feel an assertion is implied by another specification that your implementation already satisfies then you can mark such assertions as “pass”. 
    - If you do not *understand* an assertion mark it as “not-impl” and put “do not understand” in the comment field.  We can search for these later and see if the assertions themselves need revision. 
    - Please do look at the spec itself to see if an assertion makes more sense in context. They sometimes do not stand alone very well.
4. Make a PR with the new CSV file here: https://github.com/w3c/wot-testing/tree/main/data/input_2022/Architecture/Results
