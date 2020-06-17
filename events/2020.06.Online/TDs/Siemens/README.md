# Siemens - June 2020 Online Plugfest

### Hypermedia Control Test Thing

See proposal [here](https://github.com/w3c/wot-thing-description/tree/master/proposals/hypermedia-control)

The [thing initially](HypermediaControlThing.jsonld) provides an action to `fade` which takes some time (e.g., 30 seconds).

While the fade action is running the [TD changes](HypermediaControlThing-while-action-running.jsonld) and allows for
* reading the action status (time remaining)
* cancel the action
