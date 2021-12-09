# Node-RED integration (SPARQL query)

## Description

* Directory-based discovery (using SPARQL) and auto-population

## Participants

* Kunihiko Toumura (@k-toumura)

## Activities

* [x] Check availability of Things and Directories
* [x] Create UI for querying Directory from Node-RED
* [x] Test auto-population feature using participating Things

Current implementation uses following simple SPARQL query:
```sparql
PREFIX td: <https://www.w3.org/2019/wot/td#>
PREFIX dc: <http://purl.org/dc/terms/>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
SELECT DISTINCT ?id ?title ?desc
WHERE {
    ?id rdf:type td:Thing;
        dc:title ?title;
        dc:description ?desc.
    FILTER(contains(?desc, "${query}")).
}
LIMIT 100
```
(`${query}` = input from Node-RED search UI)

## Related Documents and Links
* [Draft result](https://github.com/k-toumura/document-for-wot/blob/master/2021-10-01-nodered-directory-ktoumura.pdf)

* The slides used in Openday (Oct 11) can be found below:
   * [PowerPoint](https://github.com/w3c/wot/blob/main/PRESENTATIONS/2021-10-online-f2f/2021-10-11-WoT-F2F-Openday1-ktoumura.pptx)
   * [PDF](https://github.com/w3c/wot/blob/main/PRESENTATIONS/2021-10-online-f2f/2021-10-11-WoT-F2F-Openday1-ktoumura.pdf)