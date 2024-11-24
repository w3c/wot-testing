# Device Onboarding Scenario

## Involved Devices and Applications

- Siemens Sentron PAC (Modbus/TCP)
- Siemens S7 (OPC UA)
- (potentially other devices available at the Plugfest)
- Industrial Information Hub (IIH) running on Siemens Industrial Edge (running on Siemens Simatic IPC227E)
- Domus Thing Description Directory (https://github.com/eclipse-thingweb/domus-tdd-api) reachable at: http://plugfest.thingweb.io:8081/

## Mashup Explanation

- Plugfest participants (are asked to) upload TDs of their devices to Domus TDD
- TDs are available at: http://plugfest.thingweb.io:8081/things/{id}
- Respective Asset Administration Shell (AAS) Submodel is available at: http://plugfest.thingweb.io:8081/submodels/{id}
- AAS Submodel is formatted as Asset Interfaces Description (AID)
- IIH loads AID of respective device and connects to it (on the Southbound interface)
- For the Northbound interface and thus for visualizing the device's value as AAS Asset Interfaces Mapping Configuration (AIMC) can be deployed on IIH
- Domus TDD can be queried via SPARQL

## Open points, things to be studied during plugfest

- How does Domus TDD behave for different TDs?
- Does conversion to AAS AID work correctly?
- Does Southbound connection to various devices work?
- Can we add other protocols for the Southbound connection?
- How can an AAS AIMC be created (automatically)?

## Results

### Worked

List of devices that can be communicated with:
- Device 1 (TBD)
-

Domus TDD features
-

### Not Worked

- TBC
-
