# Farm Status Mashup
This simple WoT application show the [WoT farm](http://arces143100.arces.unibo.it/) sprinkler status on [TUM SenseHat](../../TDs/TUM). 

## instructions
First you need the latest [node-wot](https://github.com/eclipse/thingweb.node-wot/blob/master/examples/security/wot-servient.conf.json) distribution. Install it globally using npm:
```
npm i @node-wot/cli -g
```

Then simply `cd` in this folder and run:
```
wot-servient -f servient.config.json -c mashup.js
```

## output
The led matrix is divided in four regions one for each sprinkler:
![hat_regions](./output.png)

When a sprinkler turns on the corresponding led matrix region lights up.