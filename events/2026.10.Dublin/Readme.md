# Plugfest during the W3C TPAC 2026

## Logistics

- Wiki: https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning
- Participants: https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#Participants_2
- Dates: 24-27 October 2026
- PlugFest Room: TBD
- Breakout Room: TBD (but should be the same room)

## What you should bring with you 

* AC extension cable and multiple socket outlet
* If needed, power travel adapter
* Ethernet cable
* LAN Switch (if possible)
* If possible, WiFi extender or small WLAN router with WiFi to LAN option
  - Siemens should be bringing one already
 
## Demo Scenarios

To be filled asap. Something that can be understood by non-WoT experts.

1. Demo with global VMT tags and devices. Integrating Rob Smith's demo with WoT. To do: name and description, and collaborating devices.

## Technical Topics for PlugFests

Technical topics to gain more experience in a hands-on style.

### Media Streaming

Showcasing the state of the art and coming up with the proposal for integration with WoT, e.g., a binding, new vocabulary terms etc.

* Main driver: Kunihiko Toumura
* Inviting the relevant people: To be extended by Kaz
* Things: Smartphone, RPi with a webcam (Pantilt HAT to be checked by Ege)
* Further information on the analysis: https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/analysis/analysis-media-streaming.md
* MediaMTX to support various streaming protocols and represent those capabilities in TD.
* Showing privacy awareness at the same time

### Media Metadata with WoT

Geolocation and other metadata related to the media.
* Relating to the global VMT tags and including TDs in there. WebVMT is a container format so TDs would fit in there.
* Showing separate access rights (to video and metadata) to increase privacy, accessibility.

### Security

OAuth2 in ECHONET. Basic demonstration plus understanding what is missing in the standards to use the existing authenticated sessions in WoT Consumer applications.

* Main driver: Kazuyuki Ashimura
* Tentative based on ECHONET participation
* Things: TBD
  
### Common Definitions

Showing common definitions usage with Sentron PAC Energy Meter.

* Main driver: Ege Korkan
* Things: TBD
  
### Data Mapping

Examples from the analysis
* ECHONET Lite Web API (if they can join). Or a new binding. How to handle the layering of restricted HTTP Binding for ECHONET Lite Web API? Depends on their participation in the Plugfest with their devices
* Kaz will check with ECHONET and @@@
* Main driver: Christian Glomb
* Things: SentronPAC, EtherNet/IP device, LoRaWAN devices

### TD and AI Agents

Showing scenarios where TD is used to bridge AI Agents into the physical world

* Main driver: Mahda

### Bindings

Main goal for all bindings is to bring devices and test interoperability.

#### LoRaWAN Binding

Ege, Erich, and Warren to bring the devices to test interoperability between Consumer implementations.
* Demonstrating the toolchain to generate the decoders and automation of the onboarding process to Things Network and ChirpStack
* Main driver: Erich and Ege
* Things: TBD
* Consumers: TBD
  
#### Modbus Binding

Demonstrating interoperability between Consumer implementations. SentronPAC from above to be reused
* Main driver: Ege
  
#### Ethernet/IP Binding

Demonstrating interoperability between Consumer implementations. TBD based on the progress of the binding
* Main driver: Erich
     
#### OPC UA Binding

Version 1.0 of the binding tested with node-wot

* evaluating the latest draft of version 1.1
* Main driver: Sebastian

#### Matter Binding

Combining Matter Binding and ECHONET Lite
* Main driver: Kaz (ask to get support from the University)
* Tentative based on ECHONET participation

## Demo devices


| Company   | Things/Devices/System/Tools         | TD Link | Infrastructure requirements, e.g. open ports, power sockets, Wifi | Comments                 |Contact             |
|-----------|-------------------------------------| --- | -------------------------------------------------------------------|--------------------------|--------------------|
| Siemens   |   Thing: SentronPAC4220 Energy Meter | [Link](https://github.com/w3c/wot-testing/blob/main/events/2026.10.Dublin/TDs/Siemens/sentronpac4220.td.json) |Ethernet cable                                                   |                          | Ege Korkan         |
| Siemens   |   Raspberry Pi with PanTilt HAT |   | Wifi / Ethernet cable    |                          | Ege Korkan        |
| Microsoft   |   Rockwell PLC | tbd  |  Ethernet cable     |  tbd    | Erich Barnstedt      |
| Microsoft   |   Siemens S7 PLC | tbd  |  Ethernet cable   |    tbd                      | Erich Barnstedt     |
| Microsoft   |   Industry Raspberry Pi | tbd  |  Ethernet cable    |      tbd                    | Erich Barnstedt      |
| Hitachi   |   Raspberry Pi + Webcam (connected via USB)| tbd  |  Wifi / Ethernet cable    |      tbd                    | Kunihiko Toumura      |
| ...       |   ...                               | ...  | ...                                                             |      ...                    | ...                   |


## List of Consumers that will be available for the PlugFest

| Organization     | Application                                   | Physical | Remote | Virtual | Protocol Supported | Infrastructure requirements, e.g., open ports, power sockets, Wifi | Comments                                                     |Contact|
|------------------|-----------------------------------------------|----------|--------|---------|--------------------|-------------------------------------------------------------------|---------------------------------------------------------------|-------|
| ...              | ...                                           | ...      | ...    | ...     | ...                | ...                                                               | ...                                                           | ...   |


