# Thing Model Definitions from Siemens

In the following a couple of Thing Model definitions are provided that uses the new features as defined in the latest [TD Spec](https://w3c.github.io/wot-thing-description/#thing-model) 

* Smart Coffee Machine 
  * [TM](./Smart-Coffee-Machine-TM.tm.jsonld)
  * [TD](./Smart-Coffee-Machine-TD.td.jsonld)
  * Features used: model (versioning), placeholder, required, type (in TD)
  
* OneDM - OMA LwM2M Light Control
  * [SDF](https://github.com/one-data-model/playground/blob/master/sdfObject/sdfobject-light_control.sdf.json)
  * [LwM2M-Light-Control-TM](./LwM2M-Light-Control-TM.tm.jsonld) Converted with [SDF-to-TM](https://github.com/roman-kravtsov/sdf-object-converter) tool 
  * [MyLight TM extends LwM2M-Light-Control-TM](./MyLight-Extends-LwM2M.tm.jsonld)
  * [TD instance from type MyLight TM](./MyLight-Extends-LwM2M.td.jsonld)
  * Features used: required, extend, type (in TD)

* Vorto - DistanceSensor
  * TM from a DistanceSensor coming from Vorto (see page [here](https://github.com/w3c/wot-testing/tree/main/events/2021.03.Online/TMs/Vorto), (*old* repo!!))
  * [My DistanceSensor](./MyDistanceSensor-Extends-VortoModel.tm.jsonld)
  * [TD instance from type My DistanceSensor](./MyDistanceSensor-Extends-VortoModel.td.jsonld)
  * Features used: required, extend, overwrite number type, title and description





