# Siemens / Logilab TDD

## Description

Siemens in cooperation with Logilab provides a Thing Description Directory endpoint for discovery testing:

* https://siemens-wot.demo.logilab.fr/
* Using Apache Jena Fuseki as triple-store database
* Partially implementing TDD API

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

## Participants

* Christian Glomb (@wiresio)
* (@Murloc6)
* Kunihiko Toumura (@k-toumura)
* Ege Korkan (@egekorkan)
* Farshid Tavakolizadeh (@farshidtz)
* Daniel Peintner (@danielpeintner)
* Michael McCool (@mmccool)

## Discussion

* (@wiresio):  
   @k-toumura - thanks for testing the TDD api and giving us feedback!
   Issues we had with: <https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/TD/TDs/Hitachi/hitachi-led.td.jsonld>
  * There is no `"@type": "Thing"` in the TD. Then the framing does not know how to handle this since the Thing is supposed to be the exported element. @Murloc6 - please change the default behavior of our TDD assuming that we are always dealing with things.
  * Unfortunately we are loosing both "title" and "titles" as well as "description" and "descriptions". @Murloc6 - please check whether we can re-generate at least one of them

* (@wiresio):  
  @egekorkan - with respect to "unit" having "%" please see: <https://github.com/w3c/wot-thing-description/issues/1210>

  * "unit" with "%" useful for UI generation
  * However, is interpreted as part of URI in SPARQL
  
* (@Murloc6):  
  In our implementation I remove the `"@type": "@vocab"` from the context defined here : <https://github.com/w3c/wot-thing-description/blob/main/context/td-context-1.1.jsonld#L151>  
  This leads to avoid any error from the SparqlEndpoint but if the value is supposed to be an URI this is not stored as is and we loose the opportunity to query this specific URI from adapted SparqlQuery.  
  Everything is explained here : <https://github.com/w3c/wot-thing-description/issues/1210> with some other reflexion from : <https://github.com/w3c/wot-thing-description/issues/1202>

* (@Murloc6):  
  I tried to import https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/TD/TDs/Hitachi/hitachi-led.td.jsonld into our implementation of the TDD and I reproduced the error with the title/titles that disappear. I discovered that this is because there is no `https://www.w3.org/2019/wot/td/v1 ` in the `@context`. I can consider that this context is mandatory and add it if it is missing.

* (@k-toumura):  
  Thank you for your comment!  I've made a PR for fixing our TDs (#172 ).  
  Examples in current TD Recommendation and Editor's Draft use `http://www.w3.org/ns/td` as `@context` (e.g., [Example 1](https://w3c.github.io/wot-thing-description/#simple-thing-description-sample)).  This is somewhat confusing...

* (@k-toumura):  
  `securityDefinitions` in original TD has not been correctly restored.  For example, [updated our TD](https://github.com/w3c/wot-testing/blob/80c90e4cf2ec01cead7db31057fded5a14a54f89/events/2021.09.Online/TD/TDs/Hitachi/hitachi-led.td.jsonld) contains following `security` and `securityDefinitions`:

  ```json
  "securityDefinitions": {
    "basic_sc": {
      "scheme": "basic",
      "in": "header"
    },
    "no_sc": {
      "scheme": "nosec"
    }
  },
  "security": [
    "basic_sc"
  ],
  ```
  
  After registering above TD, I got following (invalid) TD as a result:

  ```json
  "security": "basic_sc",
  "securityDefinitions": {
    "@none": [
      {
        "@type": "basic",
        "in": "header",
        "td:securityDefinitionForConfiguration": {
          "id": "basic_sc"
        }
      },
      {
        "@type": "nosec",
        "td:securityDefinitionForConfiguration": {
          "id": "no_sc"
        }
      }
    ]
  },
  ```

* (@wiresio):  
  @k-toumura - thanks for reporting!
  There is two challenges:

  * If "security" is an array with just one element, we are not returning the array but just the respective element as value. Although it does not yield to the original TD, it is still valid.
  * "securityDefinitions" is not restored correctly due to the following:
  
  ```json
  "securityDefinitions": {
    "basic_sc": {
      "scheme": "basic"
    }
  },
  "security":["basic_sc"]
  ```
  
  is translated to RDF
  
  ```turtle
  <urn:uuid:123> td:securityDefinitions _:b0 .
  _:b0 a wotsec:BasicSecurityScheme .
  <urn:uuid:123> td:hasSecurityConfiguration <http://base/basic_sc> .
  ```

  which means that the relation between the configuration basic_sc and the definition _:b0 is lost.

  Therefore we propose to add a new relation _td:securityDefinitionForSecurityConfiguration_ to keep it such as:

  `_:b0 td:securityDefinitionForSecurityConfiguration <http://base/basic_sc> .`

  For more details, see this issue: <https://github.com/w3c/wot-thing-description/issues/1193>

  For the plugfest we are using the "@none" fix/workaround and I'd ask you to work-around this, e.g. by string-replacing the incorrect returned "securityDefinitions" with a correct one in your implementation

* (@Murloc6):  
  If it is needed we can disable this workaround for now ?

* (@k-toumura):  
  Thank you for your explanation and consideration.
  I'm going to write a work-around on our code to handle this.

* (@wiresio):  
   Alright, and sorry for needing to work-around a workaround ;-)

* (@farshidtz):  
  I think this is based on the old spec. The context path for the registration API should be /things.

* (@mmcool):  
  See scripts at <https://github.com/w3c/wot-testing/tree/main/events/2020.06.Online/tools/directory-sync> but needs to be updated.  Note this is a CI script that runs on github, just needs to point at new directory service.  @wiresio will do a PR... may need to move the action script to his own repo.

* (@farshidtz):
  > I looked at the script and I discovered that it uses the `/td` routes instead of the `/things` ones. Should we implement both ?

  It's an old script. It should also be changed to `/things`. I'll update them.

* (@wiresio):  
  I deployed a new script running at: <https://github.com/wiresio/wot-testing-directory-sync/actions>

  Unfortunately we have issues uploading several TDs.

* (@k-toumura):  
  [eCar TD](https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/TD/TDs/Siemens/ecar.td.jsonld) doesn't have `id`.  Because of this, each run of crawling script assigns a new `id` to eCar TD, and then there are many eCar TD in TDD. 

* (@danielpeintner):
  > [eCar TD](https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/TD/TDs/Siemens/ecar.td.jsonld) doesn't have `id`. Because of this, each run of crawling script assigns a new `id` to eCar TD, and then there are many eCar TD in TDD.

  I created a PR so that eCar has an id. Hope this helps <https://github.com/w3c/wot-testing/pull/179>

* (@wiresio):  
  Thanks @k-toumura for reporting! This is definitely an issue to be solved.

  Thanks @danielpeintner for helping to fix it during the plugfest!

  ~~Currently we cannot upload several TDs - probably only those which have an array as "@context".~~

* (@farshidtz):  
  > [eCar TD](https://github.com/w3c/wot-testing/blob/main/events/2021.09.Online/TD/TDs/Siemens/ecar.td.jsonld) doesn't have `id`.  Because of this, each run of crawling script assigns a new `id` to eCar TD, and then there are many eCar TD in TDD. 

  In previous plugfests, we handled this by having TTLs that are same as the sync interval. This way, old anonymous TDs would automatically get purged from the directory. 

  In the script, you can see that a `ttl` is injected inside all TDs. This has to change to `registration.ttl`. See https://w3c.github.io/wot-discovery/#example-expirable-enriched-td

* (@wiresio):  
  Thanks @farshidtz - we'll try to introduce a cleanup.

  All TDs should be in TDD now.

* (@wiresio):  
  ~~`/things` is currently taking a long while running into a timeout.~~

  Working now due to using "chunked transfer encoding" :-)

  However, you should be able to retrieve TDs via `/things/{id}` and search via `/search/sparql`.

* (@farshidtz):  
   I've updated the sync script to make it inline with the current spec: <https://github.com/farshidtz/wot-testing-directory-sync>
