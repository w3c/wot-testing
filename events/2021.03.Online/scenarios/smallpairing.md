# Pairing and Small Device TD Consumption
See https://github.com/w3c/wot-security/issues/166#issuecomment-779237352

Use case for consuming TDs on constrained devices example:

A light switch (controller) connecting to a light (actuator) using peer-to-peer pairing.
Process: switch does mDNS discovery, gets TDs from self-describing devices
Switch would already have to have authorization and keys... (e.g. have gone through an onboarding process and be configured with appropriate keys)
Determines if a TD is a light by looking for a particular @type (e.g. OneDM class), or the peer-to-peer exploration could support filtering (query parameters)
OneDM class means there will be a particular property for turning light on and off
Extract the URL from that property
Rest of the TD would be ignored and the TD would be processed in a streaming fashion.
