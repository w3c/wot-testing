# Test Scenarios

## Directories and Syntactic/Semantic Search
LinkSmart directory service should have support for both JSONPath and SPARQL queries.
It would be good to explore some use cases for this capability, for example, making a better UI in node-RED for
searching TDs.  However, as a prerequisite, we need a collection of annotated TDs.   These need not be "active"
devices, so we can use TDs from previous testing and plugfests, annotate them manually (with OneDM and/or iotschema)
and then consider possible applications.  These might include:
* Improvements to node-gen to categorize generated nodes, e.g. sorting by node type.
* Improve orchestration, e.g. filling "semantic categories" into a script template, e.g. "turn on all the lights"

Note: queries could also just use JSONPath, SPARQL is not necessarily needed.   We want to figure out when we really
need SPARQL and when JSONPath is good enough.
Is there a concrete and useful example where SPARQL is *necessary*?
* Smart City data source search (and other large problems), need to coordinate multiple vocabularies from many vendors, dynamic vocabularies

## Media Content Management
NHK TDs extended with content lists.

## Geolocation Use Cases
* Agricultural (Farming) feedback
* AR games (MEIG; will ask Oct 1)
* Smart City
* Geolocation requirements and definitions
* Plugfest activity: [Visualization and maps](https://github.com/w3c/wot-testing/issues/76) (Siemens)
   - Google Maps (paid...)
   - OpenStreet Maps
   
## Mashups
* Look at [active devices](https://github.com/w3c/wot-testing/blob/master/events/2020.09.Online/active.csv)

## Virtual things and their management
* Proxy collect TDs of the physical devices and generate their virtual devices
* The physical devices on the local network can be discovered and registered to the proxy
* Directory has both of physical and virtual TDs and provide them on request

### Coffee Status and Control
* Take status from Siemens coffee machine, display on TUM matrix
* Push button in TUM, make coffee in Siemens
* Test interop
* Take first set of TUM displays

### Farm Status and Control
* Integrate TUM devices and farm status
* Take second set of TUM displays

## Node-RED Integration
* Updates to node-gen
* NHK node-RED integration

## Examples: Scenarios for TUM Devices

These are the mashup scenarios that were used during the teaching sessions.

### With Simulations

1. Turning of all Coffee Machines (CoAP and HTTP) at 9pm UTC every day.
2. With the press of a keyboard key, all the states of the coffee machines are outputted to the console or screen.
3. A script that calculates the average `maintenance` and `error` event emission times of all coffee machines.

### With Desk1

1. Displaying on the LED Matrix of each SenseHAT the following values:
  1. Average temperature measured by all SenseHATs
  2. Average pressure measured by all SenseHATs
  3. Average humidity measured by all SenseHATs
  4. Average light level measured by all Philips Hue Sensors (2 indoor and 1 outdoor sensor)
2. Communicating with all the Philips Hue Indoor Sensors and RainbowHATs: Display the first two digits of the temperature measured by Philips Hue
indoor sensors with the Celsius unit ('C) on the seven segment display. The RainbowHAT on the left should display the temperature of the sensor on the left, the contrary for the one on the right.
3. Check the motion sensor states every 10 seconds and turn on the LED Matrices of Unicorn pHAT and the Philips Hue Color Lights when there is presence.

### With Desk 2

1. Sort the cubes according to their colours. Sadly, we don't have a color sensor working but you can just assume random colors. Basically take a cube with the black robot, put it on a conveyor belt, run the conveyor belt until the infrared sensor detects the cube, grab it and put it to a location with the white robot. Warning: It is not easy to respect the timing to stop the conveyor belt. You might need to use a 100ms precision timer and stop the belt after some time that you measure.
2. Doing the same above but as an Exposed Thing that exposes the location of the cube to other Consumers.
