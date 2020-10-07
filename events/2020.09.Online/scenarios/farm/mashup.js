const LedMatrix  = require("./ledmatrix");

WoTHelpers.fetch("file://./SenseHat2.json").then( async sense => {
    const senseThing = await WoT.consume(sense);

    let ledMatrix = new LedMatrix(8,8);

    const farmDevices = await WoTHelpers.fetch("http://arces143100.arces.unibo.it:8080/");
    const sprinklers = farmDevices.filter( deviceURL => deviceURL.includes("Sprinkler") );
    const sprinklerThings = []
    
    for (const sprinkler of sprinklers) {
        const td = await WoTHelpers.fetch(sprinkler);
        const thing = await WoT.consume(td);
        const faceId = thing.getThingDescription().title.match(/(\d+)/)[0];
        thing.faceId = faceId;
        sprinklerThings.push(thing);
    }

    setInterval(async () => {
        console.log("Syncing status");
        for (const sprinklerThing of sprinklerThings) {
            const status = await sprinklerThing.readProperty("status");

            ledMatrix.setFaceStatus(sprinklerThing.faceId, status === "on")
        }
        senseThing.writeProperty("pixels", ledMatrix.toArray());
        console.log("Done status");
    }, 2000);
})