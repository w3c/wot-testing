# TUM Devices

## Simulations

We have multiple virtual Coffee machines simulated on HTTP, CoAP and MQTT (soon online?).
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

### MQTT

Details to be provided later.

### Implementation details

They are made possible via [shadow-thing](https://github.com/tum-esi/shadow-thing)

## Physical Devices