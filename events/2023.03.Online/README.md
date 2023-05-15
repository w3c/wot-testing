# WoT Testfest
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

Additional assertions which however have problems and we will retire without attempting to test:
* (1) [arch-security-consideration-use-psk](https://w3c.github.io/wot-architecture#arch-security-consideration-use-psk)	
* (2) [arch-security-consideration-dtls-1-3](https://w3c.github.io/wot-architecture#arch-security-consideration-dtls-1-3)

### Thing Description
See [WoT Thing Description 1.1 Developer Meeting Presentation](https://docs.google.com/presentation/d/1OZeLR0-qAw01R1UloTG25xQjc5LFuwvRP9o50QVo660/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

List of assertions to resolve.   

#### High Priority
All high-priority assertions have been resolved.  See https://github.com/w3c/wot-thing-description/pull/1813

#### Medium Priority
* (1) [security-server-auth-td](https://w3c.github.io/wot-thing-description#security-server-auth-td)

#### Lower Priority
Less-used features, guidelines
* (2) [td-security-oauth2-device-flow](https://w3c.github.io/wot-thing-description#td-security-oauth2-device-flow)
* (2) [security-context-secure-fetch](https://w3c.github.io/wot-thing-description#security-context-secure-fetch)
* (1) [security-remote-context](https://w3c.github.io/wot-thing-description#security-remote-context)
* (1) [privacy-immutable-id-as-property](https://w3c.github.io/wot-thing-description#privacy-immutable-id-as-property)

### Discovery
See [WoT Discovery Developer Meeting Presentation](https://docs.google.com/presentation/d/1HEI1uObGJdXEddWbg2vWFz_LjiCL44yHGac8EPUzGUs/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

The number before each assertion is the number of implementations still needed to resolve them.

#### High Priority
List of higher-priority assertions with at least one implementation:
* (1) [discoverer-fetch-tdd](https://w3c.github.io/wot-discovery#discoverer-fetch-tdd) - Intel
* (1) [discoverer-fetch-links](https://w3c.github.io/wot-discovery#discoverer-fetch-links) - Intel
* (1) [discoverer-fetch-iteration](https://w3c.github.io/wot-discovery#discoverer-fetch-iteration) - Intel
* (1) [discoverer-track](https://w3c.github.io/wot-discovery#discoverer-track) - Intel
* (1) [exploration-link-description-type](https://w3c.github.io/wot-discovery#exploration-link-description-type) 
* (1) [exploration-link-description-link](https://w3c.github.io/wot-discovery#exploration-link-description-link) 
* (1) [tdd-registrationinfo-expiry-config](https://w3c.github.io/wot-discovery#tdd-registrationinfo-expiry-config) - Intel
* (1) [tdd-things-list-pagination-order-utf-8](https://w3c.github.io/wot-discovery#tdd-things-list-pagination-order-utf-8) 

These are in support of internationalization, and were added based on wide review, so should be a relatively high
priority.
* (1) [tdd-http-error-response-lang](https://w3c.github.io/wot-discovery#tdd-http-error-response-lang) - Intel, Logilab
* (2) [tdd-http-alternate-language](https://w3c.github.io/wot-discovery#tdd-http-alternate-language) - Intel
* (2) [tdd-validation-response-lang](https://w3c.github.io/wot-discovery#tdd-validation-response-lang) - Intel, Logilab

Following are for ordering results.  Some of these are implied by tdd-things-list-pagination-order-utf-8 which is satisfied:
* (2) [tdd-things-list-pagination-order](https://w3c.github.io/wot-discovery#tdd-things-list-pagination-order) - Logilab
* (2) [tdd-things-list-pagination-orderable](https://w3c.github.io/wot-discovery#tdd-things-list-pagination-orderable) - Logilab
* (2) [tdd-things-list-pagination-order-nextlink](https://w3c.github.io/wot-discovery#tdd-things-list-pagination-order-nextlink) - Logilab

#### Medium Priority
The following also have one implementation but need CoAP:
* (1) [introduction-dns-sd-service-name-udp](https://w3c.github.io/wot-discovery#introduction-dns-sd-service-name-udp) 
* (1) [exploration-server-coap-size2](https://w3c.github.io/wot-discovery#exploration-server-coap-size2) 

This is needed because if diff is ignored, result will be different than expected.
However, it should be very easy to implement (if an implementation does not support diff, it just has to say so).
Note that diff itself IS satisfied by other implementations already, so this is for those that do NOT implement it!
* (2) [tdd-notification-data-diff-unsupported](https://w3c.github.io/wot-discovery#tdd-notification-data-diff-unsupported) - Intel, Logilab

#### Lower Priority
These have one implementation but are in security considerations and can be converted into "guidelines", so are
a lower priority.
* (1) [sec-tdd-query-watchdog](https://w3c.github.io/wot-discovery#sec-tdd-query-watchdog) 
* (1) [sec-tdd-intro-no-multicast](https://w3c.github.io/wot-discovery#sec-tdd-intro-no-multicast) 

These have two but are also in security/privacy considerations and can be converted into "guidelines", so are also
lower priority:
* (2) [sec-tdd-throttle-queries](https://w3c.github.io/wot-discovery#sec-tdd-throttle-queries)
* (2) [sec-tdd-limit-query-complexity](https://w3c.github.io/wot-discovery#sec-tdd-limit-query-complexity)
* (2) [sec-tdd-intro-limit-response-size](https://w3c.github.io/wot-discovery#sec-tdd-intro-limit-response-size)
* (2) [sec-tdd-intro-throttling](https://w3c.github.io/wot-discovery#sec-tdd-intro-throttling)
* (1) [sec-self-proxy](https://w3c.github.io/wot-discovery#sec-self-proxy)
* (2) [priv-loc-disable-public-directories](https://w3c.github.io/wot-discovery#priv-loc-disable-public-directories)
* (2) [priv-loc-anonymous-tds](https://w3c.github.io/wot-discovery#priv-loc-anonymous-tds)
* (2) [priv-loc-gen-ids](https://w3c.github.io/wot-discovery#priv-loc-gen-ids)
* (2) [priv-loc-explicit-strip](https://w3c.github.io/wot-discovery#priv-loc-explicit-strip)
* (2) [priv-query-anon](https://w3c.github.io/wot-discovery#priv-query-anon)

This is for security bootstrapping with OAuth, would be useful for onboarding:
* (2) [exploration-secboot-oauth2-flows](https://w3c.github.io/wot-discovery#exploration-secboot-oauth2-flows)

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

