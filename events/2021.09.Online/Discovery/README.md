Siemens in cooperation with Logilab provides a Thing Description Directory endpoint for discovery testing:
- https://siemens-wot.demo.logilab.fr/
- Using Apache Jena Fuseki as triple-store database
- Partially implementing TDD API

```javascript
{
   "@context":[
      "http://www.w3.org/ns/td",
      "https://w3c.github.io/wot-discovery/context/discovery-context.jsonld"
   ],
   "@type":"DirectoryDescription",
   "title":"Thing Description Directory (TDD)",
   "version":{
      "instance":"1.0.0-alpha"
   },
   "securityDefinitions":{
      "no_sec":{
         "scheme":"nosec"
      }
   },
   "security":"no_sec",
   "base":"https://siemens-wot.demo.logilab.fr",
   "actions":{
      "createTD":{
         "description":"Create a Thing Description",
         "uriVariables":{
            "id":{
               "title":"Thing Description ID",
               "type":"string",
               "format":"iri-reference"
            }
         },
         "forms":[
            {
               "href":"/td/{id}",
               "htv:methodName":"PUT",
               "contentType":"application/td+json",
               "response":{
                  "description":"Success response",
                  "htv:statusCodeValue":201
               },
               "additionalResponses":[
                  {
                     "description":"Invalid serialization or TD",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":400
                  }
               ],
               "scopes":"write"
            },
            {
               "href":"/td",
               "htv:methodName":"POST",
               "contentType":"application/td+json",
               "response":{
                  "description":"Success response",
                  "htv:headers":[
                     {
                        "description":"TD ID or System-generated UUID (version 4) URN",
                        "htv:fieldName":"Location",
                        "htv:fieldValue":""
                     }
                  ],
                  "htv:statusCodeValue":201
               },
               "additionalResponses":[
                  {
                     "description":"Invalid serialization or TD",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":400
                  }
               ],
               "scopes":"write"
            }
         ]
      },
      "updateTD":{
         "description":"Update a Thing Description",
         "uriVariables":{
            "id":{
               "title":"Thing Description ID",
               "type":"string",
               "format":"iri-reference"
            }
         },
         "forms":[
            {
               "href":"/td/{id}",
               "htv:methodName":"PUT",
               "contentType":"application/td+json",
               "response":{
                  "description":"Success response",
                  "htv:statusCodeValue":204
               },
               "additionalResponses":[
                  {
                     "description":"Invalid serialization or TD",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":400
                  }
               ],
               "scopes":"write"
            }
         ]
      },
      "deleteTD":{
         "description":"Delete a Thing Description",
         "uriVariables":{
            "id":{
               "title":"Thing Description ID",
               "type":"string",
               "format":"iri-reference"
            }
         },
         "forms":[
            {
               "href":"/td/{id}",
               "htv:methodName":"DELETE",
               "response":{
                  "description":"Success response",
                  "htv:statusCodeValue":204
               },
               "additionalResponses":[
                  {
                     "description":"TD with the given id not found",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":404
                  }
               ],
               "scopes":"write"
            }
         ]
      }
   },
   "properties":{
      "retrieveTD":{
         "description":"Retrieve a Thing Description",
         "uriVariables":{
            "id":{
               "title":"Thing Description ID",
               "type":"string",
               "format":"iri-reference"
            }
         },
         "forms":[
            {
               "href":"/td/{id}",
               "htv:methodName":"GET",
               "response":{
                  "description":"Success response",
                  "htv:statusCodeValue":200,
                  "contentType":"application/td+json"
               },
               "additionalResponses":[
                  {
                     "description":"TD with the given id not found",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":404
                  }
               ],
               "scopes":"read"
            }
         ]
      },
      "retrieveTDs":{
         "description":"Retrieve all Thing Descriptions",
         "forms":[
            {
               "href":"/td",
               "htv:methodName":"GET",
               "response":{
                  "description":"Success response",
                  "htv:statusCodeValue":200,
                  "contentType":"application/ld+json"
               },
               "scopes":"readAll"
            }
         ]
      },
      "searchSPARQL":{
         "description":"SPARQL semantic search",
         "uriVariables":{
            "query":{
               "title":"A valid SPARQL 1.1. query",
               "type":"string"
            }
         },
         "forms":[
            {
               "href":"/search/sparql?query={query}",
               "htv:methodName":"GET",
               "response":{
                  "description":"Success response",
                  "htv:statusCodeValue":200
               },
               "additionalResponses":[
                  {
                     "description":"Query not provided or contains syntax errors",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":400
                  }
               ],
               "scopes":"search"
            },
            {
               "href":"/search/sparql",
               "htv:methodName":"POST",
               "response":{
                  "description":"Success response",
                  "contentType":"application/sparql-results+json",
                  "htv:statusCodeValue":200
               },
               "additionalResponses":[
                  {
                     "description":"JSONPath expression not provided or contains syntax errors",
                     "contentType":"application/problem+json",
                     "htv:statusCodeValue":400
                  }
               ],
               "scopes":"search"
            }
         ]
      }
   }
}
```
