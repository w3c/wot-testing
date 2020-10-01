# UNIBO Devices

## General Setup

We provide two sets of Thing Descriptions. The first is published in this folder and it models a typical deployment scenario for structural health monitoring. The set is composed by two devices: a gateway and one imu sensor (usually there are many but here only one is reported as an example). They are installed on a structure which is described by the following jsonld document which is linked in each TDs:
```jsonld
{
   "@context":{
      "name":"http://schema.org/name",
      "description":"http://schema.org/description",
      "image":{
         "@id":"http://schema.org/image",
         "@type":"@id"
      },
      "geo":"http://schema.org/geo",
      "latitude":{
         "@id":"http://schema.org/latitude",
         "@type":"xsd:float"
      },
      "longitude":{
         "@id":"http://schema.org/longitude",
         "@type":"xsd:float"
      },
      "xsd":"http://www.w3.org/2001/XMLSchema#",
      "sosa":"https://opengeospatial.github.io/ELFIE/json-ld/sosa.jsonld"
   },
   "@type":"sosa:Platform",
   "name":"Lazzaretto vertical structure",
   "description":"Vertical structure made of steel bars",
   "image":"https://i.imgur.com/qTwGLt1.jpg",
   "geo":{
      "latitude":"44.513348",
      "longitude":"11.3193218"
   }
}
```
Each device has two Thing Description: one is publicly available while the other can be only accessed with a privileged access. For example, the IMU sensor `imu_sensor_control.td.jsonld` is protect with user and password.  

The second set is published as a live application at http://arces143100.arces.unibo.it/. The application is a simulated IoT farm deployment called WoT Farm. Currently, there are only two type of devices: SoilSensors and Sprinkles. The TDs are generated starting from Thing Models provided in this folder (files with tm-jsonld extension). For your convenience live TDs are also reported here in the `farmTDs` folder. 
Please see the [roadmap](https://github.com/relu91/WoTSimFarm#wot-farm-simulator) for planned future updates. If you have any suggestions or bug to report use the [github issue tracker](https://github.com/relu91/WoTSimFarm/issues). Any contribution is welcomed!

## Points of interests
In the following some topics that might be interesting for the Working Group:
- Static TDs
   - Two TDs with different access level describing the same Device. One can infer that they are interconnect using the link with relational type `san:controlledBy`.
   - Location information is not directly accessible inside the device TD but is linked using `sosa:isHostedBy` relation type. 
   - `imu_sensor.td.jsonld` shows an example of using sosa ontology for data returned by a property (i.e. sosa in a DataSchema)
- WoT Farm
   - Geolocation does not make a lot of sense for virtual devices. Currently, the position is given without any semantic annotation [see here](http://arces143100.arces.unibo.it:8080/SoilSensor0)
   - WoT Farm backend runs completely on `node-wot` (i.e. it is a WoT application)
   - WoT Farm is deployed using docker -> as a result of this plugfest we could provide some guidance about how to set up a WoT application using docker
