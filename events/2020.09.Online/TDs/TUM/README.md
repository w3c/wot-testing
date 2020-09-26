# TUM Devices

## General Setup

We have a room with controlled lighting where different WoT devices are placed on two desks.
Both the lights and the devices of Desk 1 are regularly turned off everyday from 4am to 6am UTC+2. This can be modified upon request.
The devices are in a local network over WiFi or Ethernet and are bridged over a custom reverse proxy to the public Internet but with Basic Auth.
There are live streams available and more information is available below.
The devices on Desk 1 are more simple devices that can be used by multiple Consumers at the same time.
The devices on Desk 2 are more complex and interacting with them at the same time as another Consumer can cause problems.
More information on the devices are below.  

The streams and TDs of devices are available at our homepage at https://esiremotelab.esi.ei.tum.de/.

## Authentication for the Web Page

The page linked above needs authentication to access the streams and the streams.
Contact ege.korkan@tum.de to obtain access rights.
These credentials do not give interaction authentication with the devices, you will be provided with a second set of credentials.

We track the usage of the website via Matomo. By requesting access, you agree on the collection of anonymous information about the session.

## Live Streams

We have 3 cameras pointing at the devices on two desks. 1 camera for Desk 1 and 2 for Desk 2.
The streams are provided via WebRTC which requires you to have ports open on 50000 to 502000. 
We did not have any issues regarding scalability after one semester of teaching.

## Physical Devices

**Note:** Photos will be uploaded on 28.09.2020

### Desk1


- HueColorLight
- HueDaylight
- HueDimmerSwitch
- HueIndoorSensor
- HueOutdoorSensor
- PanTiltHat
- RainbowHAT
- SenseHat
- UnicornPHat


**Note on Philips Hue Devices:** The lights are bridged over the Hue Bridge and we do not change their APIs in any way. The responses returned from the devices (which is the Hue Bridge) have always 2XX code, even if the light is not even screwed in.
You have to parse the responses if you want to handle such states.
In other words, do not put any meaning into the status codes.


### Desk2

- Uarm
- InfraredSensor
- ConveyorBelt
- DobotMagician



## Simulations

We have multiple virtual Coffee machines simulated on HTTP and CoAP.
CoAP and HTTP instances are all accessible over the IP address 129.187.45.174 but with different port numbers of course.

Expected Behavior: The property values are generated at each request and are random. 
Similarly, if there is an action that will send output, it is automatically generated.
Events are emitted at pre-configured intervals of around 8 and 10 seconds. 
This can be changed if requested.

For each protocol, there are 16 instances but this can be increased to 1000+ if needed.
Also, if you have a device whose TD is available and you want a simulation, simply send the TD and the event emission intervals.

### HTTP

The list of TDs can be found at http://129.187.45.174:8080
One example would be http://129.187.45.174:8080/Virtual-Coffee-Machine_1_1 until 1_16

### CoAP

The list of TDs can be found at coap://129.187.45.174:5683
One example would be coap://129.187.45.174:5683/Virtual-Coffee-Machine_2_1  until 2_16

### Implementation details

They are made possible via [shadow-thing](https://github.com/tum-esi/shadow-thing)