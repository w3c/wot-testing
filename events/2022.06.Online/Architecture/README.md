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
    
TO DO:
- [ ] Copy over template.csv
- [x] Add link to ImplDesc template
- [ ] Use terminology consistent with Architecture's terminology section.
    * Unfortunately Exposer/Producer not yet defined per se - under discussion.
    * For now suggest 
        - Consumer - see Arch
        - Exposer - exposes a network interface described by a TD (e.g. a Thing)
        - Producer - creates and makes a TD available (e.g. a tool like edi{TD}or) (under discussion, might change, eg. to "Generator", but for now...)
        - Discoverer - client-side implementation of WoT Discovery (e.g. Hitachi's node-red prototype)
        - TM Manipulator - implementations that manage TMs, offline or online 
        - *Intermediary - e.g. Proxy (but... do we even want these if they are not Consumers or Exposers?
             - and if they are simply both Consumers and Exposers, can just list both...
        - Tool - e.g. TM editor/generators, tools to convert formats, e.g. DM to TD script ("TD Producer")
    * Can also have more than one in an implementation, e.g. "consumer exposer" instead of "servient"

