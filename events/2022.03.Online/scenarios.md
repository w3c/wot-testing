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
    - Industrial/commercial devices
        - More convincing of value prop than DIY devices
    - Shelly Door/Window 2
        - API docs: https://shelly-api-docs.shelly.cloud/
        - Supports MQTT, CoAP, or HTTP
            - HTTP API does have some webhooks for events; digest authentication (but no TLS, so)
            - CoAP API has some extensions, header mods; call it "CoIoT"; protocol binding needed
            - MQTT can be plain or over Web Socket
        - Unfortunately no security support on any protocol
            - Except for digest auth on HTTP, which is easy to break with a protocol sniffer
        - Gen2 API (some Shelly devices, but not this one) 
          do support setting PSK/CA bundle
            - Gen 2 devices also use JSONRPC API
            - Most of the available Gen2 devices are power monitors/switches
        - MQTT brokers (e.g. Mosquitto) *do* support PSK security
        - Sort of slow with MQTT
            - default periodic update interval is 30s
            - update interval is configurable (more frequent -> less battery)
        - HTTP has a tendency to go to sleep, have to wake with button
            - Mostly useful for setup, in fact some settings only available this way
        - Anyhow, I've integrated this with MQTT and HA, in theory a WoT MQTT TD could be written to connect to it
    - https://store.ncd.io/product/iot-temperature-humidity-sensor/
        - Expensive, but has fully documented MQTT API
        - Supports security (PSK)
    - Philips Hue - RGB
        - Bulb itself is Zigbee
        - Hub supports bridge to HTTP
    - Shelly also has an RGB interface with a documented API
        - But, Gen 1 like Door/Window 2, so no security

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

 
