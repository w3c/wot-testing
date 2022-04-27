# Intel - Online Testfest March 2022

## Home Assistant Bridge
Some TDs to access some test devices using the HTTP
[Home Assistant REST API](link) as a bridge/gateway.
These include:
- A Shelly Door-Window 2. 
- An ESPHome Grove device with multiple sensors and actuators.
- An NCD RTD temperature sensor accessed via an MQTT bridge.
- An RGBW LED Strip implemented using ESPHome.
These are semi-automatically generated.  

NOTE: In most cases not all the functionality
is exposed (yet!). 

Some of these devices support multiple sensors and actuators,
but Home Assistant maps each sensor and actuator to a different "entity" and
only some entities have been exposed.  

In particular:
- The Shelly sensor not only detects an open/close condition, 
  but can also sense temperature, vibration,
  tilt, illumination, and its own battery state.  
  However, so far, only the 
  "open-close" binary sensor has been exposed.  
- The RGBW LED Strip is addressable and can be used to display data
  as an ambient display. 
  The current TDs only let you treat it as a single RGBW
  light.
- The ESPHome Grove device has temperature, humidity, a push button, a buzzer,
  and an analog dial input.  It also computes several derived values, such
  as dew point and altitude.  However, currently only temperature and
  the analog dial are exposed.

Also, currently only "states" are exposed (as properties) but not actions (which would
map to "services" in Home Assistant) and events (which require use of a Web Socket
protocol in Home Assistant).

The structure of the Home Assistant data structures is also a little awkward when
expressed in TDs.  In particular the Home Assistant RESTful API does not support
different URLs for different sub-properties, instead it always returns the main
property and all attributes in a single state object.  For example, the RGB light's
main state is "on-off" but it has several other "attributes" like brightness, color, etc.

If you want to access these Things for testing, please contact Michael McCool.
Note that Home Assistant uses bearer tokens (but not OAuth) for access control.

