# Test Scenarios

## Directories and Syntactic/Semantic Search
LinkSmart directory service should have support for both JSONPath and SPARQL queries.
It would be good to explore some use cases for this capability, for example, making a better UI in node-RED for
searching TDs.  However, as a prerequisite, we need a collection of annotated TDs.   These need not be "active"
devices, so we can use TDs from previous testing and plugfests, annotate them manually (with OneDM and/or iotschema)
and then consider possible applications.  These might include:
* Improvements to node-gen to categorize generated nodes, e.g. sorting by node type.
* Improve orchestration, e.g. filling "semantic categories" into a script template, e.g. "turn on all the lights"

Note: queries could also just use JSONPath, SPARQL is not necessarily needed.   We want to figure out when we really
need SPARQL and when JSONPath is good enough.
Is there a concrete and useful example where SPARQL is *necessary*?
* Smart City data source search (and other large problems), need to coordinate multiple vocabularies from many vendors, dynamic vocabularies
