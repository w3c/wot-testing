# Dec 2022 Testfest 

W3C testing requires demonstrating the implementability of a specification by more than one implementation. This implies
that all normative assertions of the specification need to be verified. 
If an assertion cannot be verified by two implementations, it is "at risk".
In this case, either the implementation(s) have to be improved, or the assertion needs to be adapted or removed.

Testing, that is, verification of assertions, does not need to be automated. 
If testing is not automatic implementers need to manually state
that an assertion is satisfied (or not) by their implementation.  In the following this is done with CSV
files.  In general, the "Status" entry for each assertion should be one of the following values:
* "null" (no information, the default),
* "pass" (assertion is satisfied), 
* "not-impl" (feature associated with the assertion is not implemented; only used for unimplemented optional features) and 
* "fail" (assertion is demonstrably false for the implementation, i.e. a mandatory feature is not implemented, or a feature is implemented in a way that contradicts the assertion).

The testfest will also confirm interoperability by considering pairwise interoperability of
multiple implementations.  This confirmation will be performed by testing all operations/affordances
indicted in the API specified TD of a Thing by a specific Consumer.

## Logistics
* Date: Dec 12-16
* Time: ?
* WebEx: ?

## Goals and Priorities
* Complete Implementation Reports for TD 1.1, Discovery, and Architecture 1.1
   - Collect final test cases and results (e.g. manual assertions)
   - Focus on resolving at-risk items
   - Capture/Update Implementation Descriptions
* WoT Profile
   - Define testing/assertion capture procedure
   - Capture implementation descriptions, including which do which profiles
   - Capture testing/assertion results
   - Draft the implementation report
