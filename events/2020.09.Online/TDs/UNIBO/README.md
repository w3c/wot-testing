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

The second set is published as a live application at http://arces143100.arces.unibo.it/. The application is a simulated farm IoT deployment called WoT Farm. Currently, there are only two type of devices: SoilSensors and Sprinkles. Please see the [roadmap](https://github.com/relu91/WoTSimFarm#wot-farm-simulator) for planned future updates. If you have any suggestions or bug to report use the [github issue tracker](https://github.com/relu91/WoTSimFarm/issues). Any contribution is welcomed!



