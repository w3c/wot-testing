# PlugFest Scenarios

## Profile Testing
* Oracle simulated devices - using "profile" member (needed for TD testing)
* Need others; property-only devices are relatively easy
* Can later also use these with profile-compliance
    - ECHONET TDs might be candidates, but not in current event
    - But have then from Sept Plugfest last year... should ask if we can use them

## Retail Test Case/Demo
* Connexxus 
    - proposal for May event, demo
    - presentation deadline: April-ish
* Devices
    - Door Switch (sensor, ultimately battery powered)
    - Temp Sensor (sensor, *maybe* battery powered)
    - RGB Light
* Easy to do with M5Stack (ESP-based) 
    - HTTP for now -> TDs, intel-esp
    - Node-RED
* First round (plugfest goals)
    - VLAN nosec
    - HTTP
    - always powered
    - M5Stack "emulators"
    - Demo interfaces
    - Node-RED integration and discovery
* Second round
    - PSK security
    - MQTT on M5Stack
    - battery-powered sleeping 
    - Node-RED and PSK?
    - Secure hub for access (using reverse proxy in the cloud, etc)
* Third round
    - Industrial devices
    - Shelly door sensor, MQTT.  Security?
    - https://store.ncd.io/product/iot-temperature-humidity-sensor/
    - Philips Hue - RGB, (Zigbee through hub to HTTP)

## Home Assistant Integration
* Add-on to expose TDs for Home Assistant entities via WoT Directory

## Others

* telemetry use cases
   - retail use case does include some that could be extended to deal
     with industrial, battery powered, and mqtt constraints
* TD for a cloud service
* TD for an event listener thing (Consumer)
* digital twins
* scenarios that go beyond the trusted local network scenarios
* industrial scenarios
* battery powered devices

 
