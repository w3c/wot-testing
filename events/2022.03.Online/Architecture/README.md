# WoT March 2022 Plugfest/Testfest
## Architecture
Collect data for Architecture.
We will use the Architecture implementation report to centralize all
implementation descriptions.

* [template.csv](template.csv): list of assertions drawn from Architecture spec
* [Results](Results): collection of assertion results, one per implementation
* [ImplDesc](ImplDesc): collection of descriptions of all the implementations, as HTML

TO DO:
- [ ] Copy over template.csv
- [ ] Add link to ImplDesc template
* Use terminology consistent with Architecture's terminology section.
* Unfortunately Exposer/Producer not yet defined per se - under discussion.
* For now suggest: 
    - Exposer - exposes a network interface described by a TD (e.g. a Thing)
    - Producer - creates and makes a TD available (e.g. a tool like edi{TD}or)
    - Discoverer - client-side implementation of WoT Discovery (e.g. Hitachi's node-red prototype)
