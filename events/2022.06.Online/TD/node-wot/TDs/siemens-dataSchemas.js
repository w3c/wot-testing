let multipleInteger5;
let multipleNumber2_5;
let restrictedInteger;
let restrictedNumber;
let restrictedString;
WoT.produce({
    title: "dataSchemas",
    description: "dataSchemas example Thing",
    support: "git://github.com/eclipse/thingweb.node-wot.git",
    "@context": [
        "https://www.w3.org/2019/wot/td/v1",
        "https://www.w3.org/2022/wot/td/v1.1"
    ],
    properties: {
        multipleInteger5: {
            type: "integer",
			multipleOf: 5,
        },
        multipleNumber2_5: {
            type: "number",
			multipleOf: 2.5,
        },
        restrictedInteger: {
            type: "integer",
			exclusiveMinimum: 0,
			exclusiveMaximum: 5,
        },
        restrictedNumber: {
            type: "number",
			exclusiveMinimum: 100.0,
			exclusiveMaximum: 1000.0,
        },
        restrictedString: {
			description: "String for ISO language code, 2 alphabetical characters, a dash, and 2 more alphabetical characters, like en-GB",
            type: "string",
			minLength: 2,
			maxLength: 5,
			pattern : "^[a-z]{2}-[A-Z]{2}",
        },
        imageAsBase64: {
            description: "Red dot PNG image in base64 string",
			type: "string",
			contentMediaType: "image/png",
			contentEncoding: "base64",
            observable: false,
            readOnly: true,
        },
    },
})
    .then((thing) => {
        console.log("Produced " + thing.getThingDescription().title);
        // init property values
		multipleInteger5 = 5;
		multipleNumber2_5 = 2.5;
        restrictedInteger = 1;
		restrictedNumber = 100.1;
		restrictedString = "en-GB"
        // set property handlers (using async-await)
		// multipleInteger5
		thing.setPropertyWriteHandler("multipleInteger5", async (val) => {
			// note-wot checks constraints
			// * td-data-schema_multipleOf-IntegerSchema	5
            multipleInteger5 = await val.value();
        });
        thing.setPropertyReadHandler("multipleInteger5", async () => multipleInteger5);
		// multipleNumber2_5
		thing.setPropertyWriteHandler("multipleNumber2_5", async (val) => {
			// note-wot checks constraints
			// * td-data-schema_multipleOf-NumberSchema	2.5
            multipleNumber2_5 = await val.value();
        });
        thing.setPropertyReadHandler("multipleNumber2_5", async () => multipleNumber2_5);
		// restrictedInteger
		thing.setPropertyWriteHandler("restrictedInteger", async (val) => {
			// note-wot checks constraints
			// * td-data-schema_exclusiveMinimum-IntegerSchema	0
			// * td-data-schema_exclusiveMaximum-IntegerSchema	5
            restrictedInteger = await val.value();
        });
        thing.setPropertyReadHandler("restrictedInteger", async () => restrictedInteger);
		// restrictedNumber
		thing.setPropertyWriteHandler("restrictedNumber", async (val) => {
			// note-wot checks constraints
			// * td-data-schema_exclusiveMinimum-NumberSchema	100.0
			// * td-data-schema_exclusiveMaximum-NumberSchema	1000.0
            restrictedNumber = await val.value();
        });
		thing.setPropertyReadHandler("restrictedNumber", async () => restrictedNumber);
		// restrictedString
		thing.setPropertyWriteHandler("restrictedString", async (val) => {
			// note-wot checks constraints
			// * td-data-schema_minLength	2
			// * td-data-schema_maxLength	5
			// * td-data-schema_pattern		^[a-z]{2}-[A-Z]{2}
            restrictedString = await val.value();
        });
		thing.setPropertyReadHandler("restrictedString", async () => restrictedString);
		// supports the following assertions
		// * td-data-schema_contentEncoding
		// * td-data-schema_contentMediaType
        thing.setPropertyReadHandler(
            "imageAsBase64",
            async () =>  "iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg=="
        );
        // expose the thing
        thing.expose().then(() => {
            console.info(thing.getThingDescription().title + " ready");
        });
    })
    .catch((e) => {
        console.log(e);
    });
