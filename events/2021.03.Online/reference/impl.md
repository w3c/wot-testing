# WoT Reference Implementations
An "implementation" fulfills a specific purpose and includes a hardware platform and a software stack.

## Light
- "small" hardware platform
- Function: Binary on/off light (can just be an LED)
- HTTP interface

## Switch
- "small" hardware platform
- Function: physical switch, on/off controller 
- Need to consider how to associate with some other "controlled" Thing
- "Pairing" could be managed through an orchestration service in a hub
- HTTP interface

## Motion Sensor
- "small" hardware platform
- Function: binary sensor (motion detected or not)
- Optional: sensitivity controls
- HTTP interface

##
