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

### Architecture
See the [WoT Architecture 1.1 Developer Meeting Presentation](https://docs.google.com/presentation/d/16Ow5rPjnojdl693pqkOhoc5bNCBIMOYZvJQC9wHZGsk/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

List of priority assertions to resolve:
* [arch-security-consideration-hal-refuse-unsafe](https://w3c.github.io/wot-architecture#arch-security-consideration-hal-refuse-unsafe)

### Thing Description
See [WoT Thing Description 1.1 Developer Meeting Presentation](https://docs.google.com/presentation/d/1OZeLR0-qAw01R1UloTG25xQjc5LFuwvRP9o50QVo660/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

List of priority assertions to resolve.

These are the assertions with at least one implementation:
* [td-producer-mixed-direction](https://w3c.github.io/wot-thing-description#td-producer-mixed-direction)
* [sec-body-name-json-pointer](https://w3c.github.io/wot-thing-description#sec-body-name-json-pointer)
* [sec-body-name-json-pointer-creatable](https://w3c.github.io/wot-thing-description#sec-body-name-json-pointer-creatable)
* [sec-body-name-json-pointer-array](https://w3c.github.io/wot-thing-description#sec-body-name-json-pointer-array)
* [sec-body-name-json-pointer-type](https://w3c.github.io/wot-thing-description#sec-body-name-json-pointer-type)
* [td-security-uri-variables-distinct](https://w3c.github.io/wot-thing-description#td-security-uri-variables-distinct)
* [td-security-oauth2-client-flow](https://w3c.github.io/wot-thing-description#td-security-oauth2-client-flow)
* [td-security-oauth2-client-flow-no-auth](https://w3c.github.io/wot-thing-description#td-security-oauth2-client-flow-no-auth)
* [td-security-oauth2-device-flow](https://w3c.github.io/wot-thing-description#td-security-oauth2-device-flow)
* [tm-versioning-1](https://w3c.github.io/wot-thing-description#tm-versioning-1)
* [security-server-auth-td](https://w3c.github.io/wot-thing-description#security-server-auth-td)
* [security-context-secure-fetch](https://w3c.github.io/wot-thing-description#security-context-secure-fetch)
* [security-oauth-limits](https://w3c.github.io/wot-thing-description#security-oauth-limits)
* [security-remote-context](https://w3c.github.io/wot-thing-description#security-remote-context)
* [privacy-immutable-id-as-property](https://w3c.github.io/wot-thing-description#privacy-immutable-id-as-property)

### Discovery
See [WoT Discovery Developer Meeting Presentation](https://docs.google.com/presentation/d/1HEI1uObGJdXEddWbg2vWFz_LjiCL44yHGac8EPUzGUs/edit?usp=sharing)
for explanations of each at-risk assertion and current status.

List of higher-priority assertions with at least one implementation:
* [discoverer-fetch-tdd](https://w3c.github.io/wot-discovery#discoverer-fetch-tdd) - Intel
* [discoverer-fetch-links](https://w3c.github.io/wot-discovery#discoverer-fetch-links) - Intel
* [discoverer-fetch-iteration](https://w3c.github.io/wot-discovery#discoverer-fetch-iteration) - Intel
* [discoverer-track](https://w3c.github.io/wot-discovery#discoverer-track) - Intel
* [introduction-direct-directory-description](https://w3c.github.io/wot-discovery#introduction-direct-directory-description) - Intel
* [exploration-link-description-type](https://w3c.github.io/wot-discovery#exploration-link-description-type) 
* [exploration-link-description-link](https://w3c.github.io/wot-discovery#exploration-link-description-link) 
* [exploration-secboot-401](https://w3c.github.io/wot-discovery#exploration-secboot-401) - Intel
* [exploration-secboot-auth](https://w3c.github.io/wot-discovery#exploration-secboot-auth) - Intel
* [tdd-absolute-time](https://w3c.github.io/wot-discovery#tdd-absolute-time) - Intel
* [tdd-registrationinfo-expiry-config](https://w3c.github.io/wot-discovery#tdd-registrationinfo-expiry-config) - Intel
* [tdd-http-representation-alternate-output](https://w3c.github.io/wot-discovery#tdd-http-representation-alternate-output) 
* [tdd-things-list-pagination-order-utf-8](https://w3c.github.io/wot-discovery#tdd-things-list-pagination-order-utf-8) 

The following also have one implementation but need CoAP:
* [introduction-dns-sd-service-name-udp](https://w3c.github.io/wot-discovery#introduction-dns-sd-service-name-udp) 
* [exploration-server-coap-size2](https://w3c.github.io/wot-discovery#exploration-server-coap-size2) 

These have one implementation but are in security considerations and can be converted into "guidelines", so are
a lower priority.
* [sec-tdd-query-watchdog](https://w3c.github.io/wot-discovery#sec-tdd-query-watchdog) 
* [sec-tdd-intro-no-multicast](https://w3c.github.io/wot-discovery#sec-tdd-intro-no-multicast) 

These have two but are also in security/privacy considerations and can be converted into "guidelines", so are also
lower priority:
* sec-tdd-throttle-queries
* sec-tdd-limit-query-complexity
* sec-tdd-intro-limit-response-size
* sec-tdd-intro-throttling
* sec-self-proxy
* priv-loc-disable-public-directories
* priv-loc-anonymous-tds
* priv-loc-gen-ids
* priv-loc-priv-dir-access
* priv-loc-explicit-care
* priv-loc-explicit-strip
* priv-query-anon

These are in support of internationalization, and were added based on wide review, so should be a relatively high
priority.
* tdd-http-error-response-lang - Intel, Logilab
* tdd-http-alternate-language - Intel
* tdd-validation-response-lang - Intel, Logilab

Following are for ordering results.  Some of these are implied by tdd-things-list-pagination-order-utf-8 which is satisfied:
* tdd-things-list-pagination-order - Logilab
* tdd-things-list-pagination-orderable - Logilab
* tdd-things-list-pagination-order-nextlink - Logilab

This is for security bootstrapping, should also be implied by exploration-secboot-401 and exploration-secboot-auth that are satisfied:
* security-bootstrapping-endpoints - Intel

This is for security bootstrapping with OAuth, would be useful for onboarding:
* exploration-secboot-oauth2-flows

This is needed because if diff is ignored, result will be different than expected.
However, it should be very easy to implement (if an implementation does not support diff, it just has to say so).
Note that diff itself IS satisfied by other implementations already, so this is for those that do NOT implement it!
* tdd-notification-data-diff-unsupported - Intel, Logilab

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

