# Hypermedia protocol proposal 3

## Description

Sorry for posting this late, but I couldn't join the last two days of the PF and I didn't have time to create a proper project description. 

In this plug-fest, I played a little bit with the third proposal of the Hypermedia protocol for actions. I created a [repository](https://github.com/relu91/wot-hypermedia-test) with a bunch of testing scripts that I used to evaluate the idea.

Here I'm reporting the consumer side because I think it helps to understand the advantages of this new approach.

### Greenfield

For new WoT aware ExposedThings the consumer can just assume that action may return an ActionDescription and use it to interact further with the action instance.  Notice how no id tracking is need, the code flow is really similar to what the consumer already does for a normal WebThing:

```js
WoTHelpers.fetch("http://localhost:8080/testingactions").then( async td => {
    const thing = await WoT.consume(td);
    
    if (!td.actions.longRunning || td.actions.longRunning.output.model.href !== "http://localhost:8888/model.tm.json") { 
        console.log("Long Running action is synchronous");
        await thing.invokeAction("longRunning");
        return;
    }
    
    console.log("Long Running action is asynchronous");

    const actionInstance = await (await thing.invokeAction("longRunning")).value();
    console.log("Action invoked",actionInstance.id);
    
    // from here on I can use the action as if it is a webthing
    const actionThingHandler = await WoT.consume(actionInstance);
    console.log("Monitoring", actionInstance.id);
    
    const interval = setInterval(async () => {
        try {
            const status = await (await actionThingHandler.readProperty("status")).value();
            console.log("Status", status);
            
            if (status.status === "completed" || status.status === "cancelled") {
                console.log("Action has stopped:", status.status);
                clearInterval(interval);
            }

            if(Math.random() < 0.1){
                // cancel with action with 10% probability
                console.log("Cancelling action");
                await actionThingHandler.invokeAction("cancel");
            }

        } catch (error) {
            console.log("Can't read", error);
        }
        
    }, 1000);

}).catch(e => {
    console.log(e);
});
```

### Brownfield

For brownfield ExposedThings (i.e., devices that already have their own API and we cannot return an Action Description from an API call). The consumer has to do additional operations to obtain the final ActionDescription but I think it is reasonably easy to then interact with the action instance.
Here's the script:

```js
const pointer = require('jsonpointer');

WoTHelpers.fetch("http://localhost:8080/testingactions").then(async td => {
    const thing = await WoT.consume(td);

    if (!td.actions.longRunning || td.actions.longRunning.output.model.href !== "http://localhost:3000/model-brown.tm.json") {
        console.log("Long Running action is synchronous");
        await thing.invokeAction("longRunning");
        return;
    }

    console.log("Long Running action is asynchronous");
    
    if(!td.actions.longRunning.output.model.mappings) {
        console.log("Long Running action has not mappings -> is a green field device skipping");
        console.log("See example: consumer.js");
        return;
    }


    const actionInstance = await (await thing.invokeAction("longRunning")).value();
    console.log("Action invoked", actionInstance.id);

    //Create a "Action Description" from actionInstance and tm
    const tm = await WoTHelpers.fetch(td.actions.longRunning.output.model.href);
    let tmString = JSON.stringify(tm);

    const mappings = td.actions.longRunning.output.model.mappings;
    for (const p in td.actions.longRunning.output.model.mappings) {
        const variable = mappings[p];
        const value = pointer.get(actionInstance, p);
        const exp = new RegExp(`{{${variable}}}`, 'g');

        tmString = tmString.replace(exp, value);

    }
    
    const actionDescriptor = JSON.parse(tmString);
    // action description contains the TD that can be used to interact with the action
    const actionThingHandler = await WoT.consume(actionDescriptor);

    const interval = setInterval(async () => {
        try {
            const status = await (await actionThingHandler.readProperty("status")).value();
            console.log("Status", status);

            if (status.status === "completed" || status.status === "cancelled") {
                console.log("Action has stopped:", status.status);
                clearInterval(interval);
            }

            if (Math.random() < 0.1) {
                // cancel with action with 10% probability
                console.log("Cancelling action");
                await actionThingHandler.invokeAction("cancel");
            }

        } catch (error) {
            console.log("Can't read", error);
        }

    }, 1000);

}).catch(e => {
    console.log(e);
});
```

I want to underline that all of this already works with `node-wot` as it is, no API changes are needed.

## Participants

* Cristiano Aguzzi (@relu91)
