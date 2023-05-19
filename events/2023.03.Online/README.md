# WoT Testfest
**NOTE:** Testing is now closed for the charter ending in 2023 and for Discovery, TD 1.1, and Architecture 1.1.
This file is now only being used to track resolution of the remaining at-risk items prior to PR transition,
not to prioritize or track further testing.  Likewise data/input_2022 is closed except for bug-fixes and implementation
descriptions.

## OLD HEADER
Purpose: Gather implementation experience for Profiles,
and gather additional implementation experience for other deliverables.

**However:** There are many at-risk items still outstanding for the TD and Discovery deliverables,
and these need to be resolved by early May to resolve them prior to our PR transition for
these documents.  **The Testfest should gather as much testing experience as possible to
resolve at-risk items in these documents.**

For instructions on how to submit results, please see data/input_2022, under the individual
directory for each deliverable.

## Priorities
Resolving the following assertions should be prioritized for each deliverable.
Note: these priorities were assigned by task forces and during the testing call.  If anyone in the WG disagrees with these
priorities they should email team-wot@w3.org or attend the Testfest to ask for a revision (or submit a PR against this README).

### Architecture
See the [WoT Architecture 1.1 Developer Meeting Presentation](https://docs.google.com/presentation/d/16Ow5rPjnojdl693pqkOhoc5bNCBIMOYZvJQC9wHZGsk/edit?usp=sharing)
for explanations of each at-risk assertion and current status.
The number before each assertion is the number of implementations still needed to resolve them.

List of assertions to resolve (low priority):
* (1) [arch-security-consideration-hal-refuse-unsafe](https://w3c.github.io/wot-architecture#arch-security-consideration-hal-refuse-unsafe)
    - Resolution: downgrade
    - Also add some informative text explaining what a HAL is, how to implement it (some options), need for HW interlocks as well
    - PR: https://github.com/w3c/wot-architecture/pull/911

Additional assertions which however have problems and we will retire without attempting to test:
* (1) [arch-security-consideration-use-psk](https://w3c.github.io/wot-architecture#arch-security-consideration-use-psk)	
    - It was problematic anyway; see https://github.com/w3c/wot-architecture/issues/900
    - Resolution: downgrade (SHOULD -> should) and reword (preshared keys -> certificates), add extra informative text
    - PR: https://github.com/w3c/wot-architecture/pull/909
* (2) [arch-security-consideration-dtls-1-3](https://w3c.github.io/wot-architecture#arch-security-consideration-dtls-1-3) 
    - Was difficult to test due to lack of DTLS 1.3 libraries
    - Resolution: downgrade (SHOULD -> should)
    - PR: https://github.com/w3c/wot-architecture/pull/910

### Thing Description
See [WoT Thing Description 1.1 Developer Meeting Presentation](https://docs.google.com/presentation/d/1OZeLR0-qAw01R1UloTG25xQjc5LFuwvRP9o50QVo660/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

List of assertions to resolve.   

#### High Priority
All high-priority assertions have been resolved.  See https://github.com/w3c/wot-thing-description/pull/1813

#### Medium Priority
* (1) [privacy-immutable-id-as-property](https://w3c.github.io/wot-thing-description#privacy-immutable-id-as-property) 
    - Resolution: downgrade (SHOULD -> should)
    - PR: https://github.com/w3c/wot-thing-description/pull/1826

#### Lower Priority
Less-used features, guidelines
* (2) [td-security-oauth2-device-flow](https://w3c.github.io/wot-thing-description#td-security-oauth2-device-flow) 
    - Resolution: remove
    - PR: https://github.com/w3c/wot-thing-description/pull/1828
* (2) [security-context-secure-fetch](https://w3c.github.io/wot-thing-description#security-context-secure-fetch) 
    - Resolution: downgrade (SHOULD -> should)
    - PR: https://github.com/w3c/wot-thing-description/pull/1827

### Discovery
See [WoT Discovery Developer Meeting Presentation](https://docs.google.com/presentation/d/1HEI1uObGJdXEddWbg2vWFz_LjiCL44yHGac8EPUzGUs/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

The number before each assertion is the number of implementations still needed to resolve them.

#### High Priority
List of higher-priority assertions with at least one implementation:
* (1) [tdd-registrationinfo-expiry-config](https://w3c.github.io/wot-discovery#tdd-registrationinfo-expiry-config) 
    - Resolution: downgrade (MAY -> may)
    - PR: https://github.com/w3c/wot-discovery/pull/482

These are in support of internationalization, and were added based on wide review, so should be a relatively high
priority.
* (2) [tdd-http-alternate-language](https://w3c.github.io/wot-discovery#tdd-http-alternate-language) 
    - Resolution: downgrade, reorganize; note is technically redundant (as assertion) but informative statements useful.
    - PR: https://github.com/w3c/wot-discovery/pull/483 
* (1) [tdd-validation-response-lang](https://w3c.github.io/wot-discovery#tdd-validation-response-lang) 
    - Resolution: downgrade, reorganize; note is technically redundant (as assertion) but informative statements useful.
    - PR: https://github.com/w3c/wot-discovery/pull/483 

#### Medium Priority
This is needed because if diff is ignored, result will be different than expected.
However, it should be very easy to implement (if an implementation does not support diff, it just has to say so).
Note that diff itself IS satisfied by other implementations already, so this is for those that do NOT implement it!
* (2) [tdd-notification-data-diff-unsupported](https://w3c.github.io/wot-discovery#tdd-notification-data-diff-unsupported) 
    - Resolution: downgrade, reword
    - PR: https://github.com/w3c/wot-discovery/pull/484

#### Lower Priority
These have one implementation but are in security considerations and can be converted into "guidelines", so are
a lower priority.
* (1) [sec-tdd-query-watchdog](https://w3c.github.io/wot-discovery#sec-tdd-query-watchdog) 
    - Resolution: downgrade SHOULD->should
    - PR: https://github.com/w3c/wot-discovery/pull/486
* (1) [sec-tdd-intro-no-multicast](https://w3c.github.io/wot-discovery#sec-tdd-intro-no-multicast) 
    - Resolution: downgrade SHOULD NOT -> should not
    - PR: https://github.com/w3c/wot-discovery/pull/486
* (1) [sec-self-proxy](https://w3c.github.io/wot-discovery#sec-self-proxy) 
    - Resolution: downgrade MAY -> may
    - PR: https://github.com/w3c/wot-discovery/pull/486

These have two but are also in security/privacy considerations and can be converted into "guidelines", so are also
lower priority: McCool - downgrade
* (2) [sec-tdd-throttle-queries](https://w3c.github.io/wot-discovery#sec-tdd-throttle-queries)
    - Resolution: downgrade SHOULD -> should
    - PR: https://github.com/w3c/wot-discovery/pull/486
* (2) [sec-tdd-limit-query-complexity](https://w3c.github.io/wot-discovery#sec-tdd-limit-query-complexity)
    - Resolution: downgrade SHOULD -> should
    - PR: https://github.com/w3c/wot-discovery/pull/486
* (2) [sec-tdd-intro-limit-response-size](https://w3c.github.io/wot-discovery#sec-tdd-intro-limit-response-size)
    - Resolution: downgrade SHOULD -> should
    - PR: https://github.com/w3c/wot-discovery/pull/486
* (2) [sec-tdd-intro-throttling](https://w3c.github.io/wot-discovery#sec-tdd-intro-throttling)
    - Resolution: downgrade SHOULD -> should
    - PR: https://github.com/w3c/wot-discovery/pull/486
* (2) [priv-loc-disable-public-directories](https://w3c.github.io/wot-discovery#priv-loc-disable-public-directories)
* (2) [priv-loc-anonymous-tds](https://w3c.github.io/wot-discovery#priv-loc-anonymous-tds) - Intel?
* (2) [priv-loc-gen-ids](https://w3c.github.io/wot-discovery#priv-loc-gen-ids) - Intel?
* (2) [priv-loc-explicit-strip](https://w3c.github.io/wot-discovery#priv-loc-explicit-strip)
* (2) [priv-query-anon](https://w3c.github.io/wot-discovery#priv-query-anon)

This is for security bootstrapping with OAuth, would be useful for onboarding:
* (2) [exploration-secboot-oauth2-flows](https://w3c.github.io/wot-discovery#exploration-secboot-oauth2-flows) 
    - Resolution: Remove, along with related discussion of using OAuth2 for security bootstrapping
    - PR: https://github.com/w3c/wot-discovery/pull/485

This one is IMPOSSIBLE to satisfy:
* (-) [introduction-dns-sd-service-name-directory-udp](https://w3c.github.io/wot-discovery#introduction-dns-sd-service-name-directory-udp)
    - Resolution: reorganize, "reserved" informative statements, etc.
    - PR: https://github.com/w3c/wot-discovery/pull/472

## Logistics:
* These will be IG calls, using the #wot-pf IRC channel
* Date: <strike>Week of April 3</strike> Week of April 24
* Times: 
   - 3 days
   - 1h meeting a day
   - Tuesday at 9am Eastern (Use Cases call)
   - Wed at 9am Eastern (Testing call)
   - Thursday at 8am Eastern (Architecture call)
* Logistics: 
   - Reuseexisting call logistics:
       - Tuesday - [Use Case](https://www.w3.org/events/meetings/34554f1f-4033-474a-933d-ad4244f5a25b/20230425T080000)
       - Wednesday - [Testing](https://www.w3.org/events/meetings/0f4fbf77-e620-4ec1-865a-28d5d2f4fe38/20230426T090000)
       - Thursday - [Architecture](https://www.w3.org/events/meetings/7e8cb7d2-3be4-46d2-96a5-4ae08da07125/20230427T060000)
   - Will also include external attendees, e.g. from the Dev Meetings
       - However, since an IG call, be need to invite them as "Guests"
   - Will set up a mailing list for external attendees and will email logistics and instructions
       - To join this list, need a (free) [W3C account](https://www.w3.org/accounts/request), then email it to [team-wot@w3.org](mailto:team-wot@w3.org) to get added 

## Scope
- Submissions of test results as CSV files in PRs on wot-testing under data/input_2022
- Clean up and merge test results that have been submitted as PRs
- Updates of Implementation Reports

## To Do
- DONE: Update instructions on how to submit results (CSV files and TDs into data/input_2022) (Ege)
- DONE: Make sure testing tools are up to date with latest set of assertions (Ege, Fady)
- DONE: Allocate and confirm logistics (Kaz)
- Confirm invitation list and availability, esp for external attendees (Ege, Kaz)
- Create mailing list for external attendees (Kaz)

