# WoT Plugfest Scenarios

In this folder, we collect the detailed description of scenarios to be tested in plugfest. They typically involve multiple devices from different manufacturers.
Please create one markdown document per scenario you are working on in a folder here.

Different tests we do can be placed into context, e.g., smart cities. 
This way, they can relate better once we present WoT to the visitors.

Some ideas:

* Smart City
  * TBD 
* WoT for Cloud Systems
  * maybe Azure IoT from Microsoft and Oracle Cloud (TBC)
* Plug & Play in Industrial Scenarios
  * includes semantics usage in domain models (e.g., Brick, OPC UA, etc)   
* Retail (David)
  * Correlation of cash depositing on the safe with IP camera detecting the same
  * Showing cash depositing events in a dashboard
  * Refrigerator Temperature monitoring (Ignite Retail and McCool)
  * People counting with different sensors or cameras (Ignite Retail as Consumer, Thing?)
  * Energy Consumption Monitoring (Siemens Energy Meter, Siemens? Gateway, Ignite Retail Consumer)
* Smart Home (McCool)
  * Voice control of different devices like Hue and sayWoT! bridged devices (KNX IoT devices)

* Technical Purposes of individual organizations
  * Siemens KNX IoT Devices: Testing interoperability and good understanding of their TDs from Consumers.
  * Hitachi Sensor: Testing ZeroMQ Binding
  * OpenFlexure Microscope: Long running actions
  * Siemens S7: OPC UA Binding demonstrations
  * Siemens Sentron PAC: Modbus Binding
  * Siemens TargetV device: MQTT Binding
  * Siemens sayWoT! Servient: Testing binding interoperability (MQTT, Modbus, OPC UA, S7, CoAP and more)
  * TUM Big Robot Arm: Showing it working with Hololens and digital twin inside the hololens
  * TUM Hue Devices: Showing rules/mashups with other devices
  * TUM Hololens: Checking visual interactions with devices (that use HTTP). Maybe there will be the option to build mashups and check them working.
  * TUM Small Robot Arm and Conveyor Belt: Test different mashup scenarios
  * Armorsafe: Checking interoperability with IgniteRetail Control center
  * Luminem Devices: Checking if the software stack works on more constrained devices (ESP32, banana pi)
  * Hitachi: Testing the discovery implementation
  * Thingweb dart_wot: Identifying shortcomings and testing in real life with others
  * McCool: AI Service integration
