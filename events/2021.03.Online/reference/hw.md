# WoT Reference Platforms
Categories: 
* a "large" device able to consume TDs, perform orchestration, and host a directory service;
* a "small" device able to be integrated into battery-operated IoT controllers directly integrated into smart things;
* a "minimum" device which is the smallest and cheapest hardware capable of being integrated into a WoT system.
These should align with profile requirements (see https://github.com/w3c/wot-profile/issues/68).

## Large Reference Hardware Platform
- Everything the "small" can do
- Capable of running node-wot under Node.js (v15); see https://github.com/eclipse/thingweb.node-wot/actions/runs/551792528
- Capable or running node-red
- Capable of running multiple orchestration services as instance of node-wot
- Capable of running a WoT directory service and supporting discovery (mDNS, SD)
- Capable of more sophisticated RDF processing
- Capable of acting as a proxy or as a shadow for other WoT Things (e.g. as a hub)
- Capable of running a web server (e.g. NGNIX)
- Optional: running a web browser (e.g. Chromium, Firefox, etc.) 
- Optional: capable of hosting a dashboard interface (display, keyboard, mouse/touch screen)
- Note: may run headless in many use cases, HUI is optional
- Capacities: 512MB to 1GB RAM and 4GB Flash
- Example: RaspPi 3B+ or better; RaspPi0 is adequate for some things (1GB memory minimum)

## Small Reference Hardware Platform
- Has network connectivity and TCP/IP stack
- Capable of natively running RESTful interface over HTTP or CoAP
- Capable of TLS or DTLS encryption
- Capable of minimum security (at least passwords, ideally tokens)
- Self-describing (can provide its own TD and/or register TD with a directory service)
- Capable of basic consumption of core profile TDs
    - Controller can discover devices to control and access them
    - Ex: a switch can find devices with iot:Switch capabilities and turn them on and off
- Simple I/O devices: switches, I2C, UART ports, LEDS, maybe a small display
- Capacities: 512KB RAM and 1M Flash
- Example: ESP32-based NodeMCU or M5Stack

- Notes: 
    - Profiles is looking at 64KB as a minimum requirement
    - Philipp is working with the Nordic NRF-52832, which can do some of the above, and has 32KB RAM and 256KB flash, but would probably not be consuming TDs (need to understand use cases)
    - Hardware acceleration widely available for some relevant features (e.g. signing, TLS, etc.)

## Minimum Reference Hardware Platform
- Not required to self-host own TD
- Has network connectivity but may not be TCP/IP
- Generally requires a hub for protocol translation to integrate with HTTP-based WoT systems
- Example: Zigbee Light Switch
