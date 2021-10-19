# Siemens - September 2021 Online TestFest

We expose the following virtual *online* things (with [node-wot](https://github.com/eclipse/thingweb.node-wot/)):
* [Smart-Coffee-Machine](http://plugfest.thingweb.io:8083/smart-coffee-machine)
* [TestThing](http://plugfest.thingweb.io:8083/testthing)
* [Multilanguage Counter](http://plugfest.thingweb.io:8083/counter)
* [Smart Charging with Web of Things](https://github.com/sebastiankb/wot-smart-charging)

**TODO** We plan to have a thing running that allows to control actions (e.g., monitor status, cancel action, ...). Moreover, 2 different variants for this work are planned to explore the possibilities:
* based on [WoT Profile](https://w3c.github.io/wot-profile/#actions)
* based on [Hypermerdia Control v3](https://github.com/w3c/wot-thing-description/tree/main/proposals/hypermerdia-control-3)

## WebUIs

Moreover, there are several Web UIs available:
* [Generic WebUI](http://plugfest.thingweb.io/webui/)
* [Smart Coffee Machine - Property Live Monitor](http://plugfest.thingweb.io/examples/smart-coffee-machine.html)
* [Counter UI](http://plugfest.thingweb.io/examples/counter.html)
* [WoT-FXUI](http://plugfest.thingweb.io:8088/test/fullscreen/default)


## Geolocation of WoT Things

See [map demo](https://danielpeintner.github.io/wot-pages/2021.03.Online/geolocation-ui.html).
Mockup code geolocation-ui.html

TODOs:
* autopopulate map with markers from Plugfest TDs (see `L.marker()` calls in geolocation-ui.html)