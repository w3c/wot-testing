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
* Date: Dec 12-15
* Time: 1h / day
   - 8am Eastern Monday and Tuesday (on Monday, replaces Security call)
   - 9am Eastern Wednesday (replaces Testing call)
   - 10am Eastern Thursday
* W3C Calendar: {mccool to add calender entry and link}
* WebEx: {kaz to allocate webexes and add email link}
* VPN: none (not needed to resolve remaining gaps)

## Goals and Priorities
* Complete Implementation Reports for TD 1.1, Discovery, and Architecture 1.1
   - Collect final test cases and results (e.g. manual assertions)
   - Focus on resolving at-risk items
   - Capture/Update Implementation Descriptions
   - Gather Testimonials - perhaps a separate document -> main call

* WoT Profile

   Determine participants - assign assertions to participants Who will provide results? 
   Baseline validation can be done via TD compliance - all TD assertions must hold
   
   We need actual device implementations, not necessarily fully profile compliant
   People need to provide test results as a csv file in the well known format (as before)

   - Define testing/assertion capture procedure
   -- two kinds of entites that are used for tests: consumer / thing
   -- Test the Profile contract
   -- What to test manually / automatically?
   -- Clarifying specification requirements, check feasibility and implementability of each assertion one by one
   
   - Generate TDs that have all operations
   
   - Testcases: Consumer-Thing
   1. standalone test of consumer assertions:
   -- support of all security schemes
   -- behavior handling of async actions - can a consumer query the action status, handle id?
   
   2. standalone test of thing assertions:
   -- Proper usage of problem details 
   
   3. test of Profile contracts
   
   - Capture implementation descriptions, including which do which profiles
   - Capture testing/assertion results
   - Draft the implementation report

   - Need to clarify the dependency of Profile assertions - Profile defines clarifications on other WoT specs, which are tested there.
   - Profile tests should focus on additional clarifications of the profile only.
