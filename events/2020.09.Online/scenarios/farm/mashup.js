const off = [0,0,0];
WoTHelpers.fetch("file://./SenseHat2.json").then( async sense => {
    const senseThing = await WoT.consume(sense);

    let ledMatrix = createMatrix(8,8);
    
    let faces = {
        "0":{
            faceX : 0,
            faceY : 0,
            color: [255, 0, 0]
        },
        "1": {
            faceX: 4,
            faceY: 0,
            color: [0, 255, 0]
        },
        "2": {
            faceX: 0,
            faceY: 4,
            color: [0, 0, 255]
        },
        "3": {
            faceX: 4,
            faceY: 4,
            color: [255, 255, 255]
        }
    }

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
            const faceData = faces[sprinklerThing.faceId]
            const color = status === "on" ? faceData.color : off;

            colorizeFace(ledMatrix,faceData.faceX,faceData.faceY,color);
        }
        senseThing.writeProperty("pixels", flattenMatrix(ledMatrix));
        console.log("Done status");
    }, 2000);

    
   

})

function colorizeFace(matrix,faceX,faceY,color) {
    for (let i = 0 + faceX; i < faceX + 4 && i < matrix.length; i++) {
        for (let j = 0 + faceY; j < faceY + 4 && j < matrix[i].length; j++) {
            matrix[i][j] = color
        }
    }  
}

function createMatrix(rows,columns) {
    let result = [];
    for (let i = 0; i < rows; i++) {
        result[i] = Array(columns);
        for (let j = 0; j < result[i].length; j++) {
            result[i][j] = off;
        }
    }
    return result;
}

function flattenMatrix(matrix) {
    let result = [];
    let w = 0;
    for (let i = 0; i < matrix.length; i++) {
        for (let j = 0; j < matrix[i].length; j++) {
            result[w++] = matrix[i][j];
        }
    }
    return result;
}