# Thing Model Definitions from Siemens based on [edi{TD}or](https://eclipse.github.io/editdor/)

In the following a couple of Thing Model definitions are provided that uses the new features as defined in the latest [TD Spec](https://w3c.github.io/wot-thing-description/#thing-model) 

## Smart Coffee Machine 
  * [TM tm:required](./TMs/siemens-Smart-Coffee-Machine-TM.tm.jsonld)
  * [TM tm:optional](./TMs/siemens-Smart-Coffee-Machine-TM-optional.tm.jsonld)
  * [TD](./TDs/siemens-Smart-Coffee-Machine-TD.td.jsonld)
  * Features used: model (versioning), placeholder, required, type (in TD), optional (experimental)
  
## OneDM - OMA LwM2M Light Control
  * [SDF](https://github.com/one-data-model/playground/blob/master/sdfObject/sdfobject-light_control.sdf.json)
  * [LwM2M-Light-Control-TM](./TMs/siemens-LwM2M-Light-Control-TM.tm.jsonld) Converted with [SDF-to-TM](https://github.com/roman-kravtsov/sdf-object-converter) tool 
  * [MyLight TM extends LwM2M-Light-Control-TM](./TMs/siemens-MyLight-Extends-LwM2M.tm.jsonld)
  * [TD instance from type MyLight TM](./TDs/siemens-MyLight-Extends-LwM2M.td.jsonld)
  * Features used: required, extend, type (in TD)

## Vorto - DistanceSensor
  * TM from a DistanceSensor coming from Vorto (see page [here](https://github.com/w3c/wot-testing/tree/main/events/2021.03.Online/TMs/Vorto), (*old* repo!!))
  * [My DistanceSensor](./TMs/siemens-MyDistanceSensor-Extends-VortoModel.tm.jsonld)
  * [TD instance from type My DistanceSensor](./TDs/siemens-MyDistanceSensor-Extends-VortoModel.td.jsonld)
  * Features used: required, extend, overwrite number type, title and description

## Composition TMs 
  * A [Smart Ventilator TM](./TMs/siemens-SmartVentilator.tm.jsonld) consists of a [Ventilator TM](./TMs/siemens-Ventilator.tm.jsonld) and [LED TM](./TMs/siemens-LED.tm.jsonld)
    * Generated TDs with relation types like collection, item, and type: [Smart Ventilator TD](./TDs/siemens-SmartVentilator.td.jsonld),  [Ventilator TD](./TDs/siemens-Ventilator.td.jsonld), and [LED TD](./TDs/siemens-LED.td.jsonld)
  * Smart Manufacturing: Bottle filling line 
    * Top level [Bottle filling line TM](./TMs/siemens-BottleFillingLine.tm.jsonld)
    * Sub level [Bottle filling TM](./TMs/siemens-BottleFilling.tm.jsonld)
    * Sub level [Bottle capping TM](./TMs/siemens-BottleCapping.tm.jsonld)
    * Sub level [Sprayhead TM](./TMs/siemens-Sprayhead.tm.jsonld)

![image](https://user-images.githubusercontent.com/13832739/135072267-40e9bf1a-d034-4daf-ba35-2b370864349d.png)




