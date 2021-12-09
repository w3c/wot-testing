# UPM / WoT Hive directory

## Description

From the Ontology Engineering Group at the Universidad Politécnica de Madrid (UPM) we have implemented a Thing Description Directory following the current discovery specification called WoT Hive.

* The [documentation](https://github.com/oeg-upm/wot-hive/wiki), source code, and latest releases are available in the [WoT Hive github](https://github.com/oeg-upm/wot-hive/).
* Find a deployed WoT Hive in this [link](https://wothive.linkeddata.es/api/things)
    * Behind this deployment we are using a RDF4J triplestore that does not support identifiers like `900de665-6a0b-4d48-abcb-2fb457015ba1`, instead add a prefix like `uuid:900de665-6a0b-4d48-abcb-2fb457015ba1`. This issue is due to the triplestore used by the WoT Hive not the directory itself, other triplestores support the former ids.  
* For a quick local docker deploy
  
````yaml
version: '2'
services:
  triplestore:
    image: acimmino/helio-cloud-rdf4jstore:latest
    ports:
      - '4567:4567'
  wothive:
    image: acimmino/wot-hive:latest
    ports:
      - '9000:9000'
````

## Participants

* Andrea Cimmino Arriaga (@AndreaCimminoArriaga)
