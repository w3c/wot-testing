# LinkSmart Thing Directory
This is a prototype implementation for WoT Thing Directory service, a catalog of Thing Descriptions. The Directory API is not yet standardized.

A local cloud instance has been prepared for the plugfest with **public read access**: [Demo Wiki](https://github.com/linksmart/thing-directory/wiki/Demo)

It is also possible to setup a local deployment and try out the DNS-SD discovery: [Deployment Instructions](https://github.com/linksmart/thing-directory/wiki/Deployment)

The directory is currently under development, showcasing different proposals. At the time of writing (v1.0.0-beta.12), it offers the following features:

* Service Discovery
  * DNS-SD registration
* RESTful API
  * HTTP API
    * Thing Description (TD) CRUD, listing, and validation
    * XPath 3.0 and JSONPath expressions for filtering, navigating, and querying parts of JSON objects during TD listing
    * TD validation against WoT TD JSON Schema 
    * JSON-LD response format (except for JSON fragments)
    * Request authentication (Bearer/Basic) and HTTP path/method-based authorization
    * Documentation with OpenAPI Specifications and Swagger UI
* Persistent Storage
  * LevelDB 

For more information, check out the [README](https://github.com/linksmart/thing-directory/blob/master/README.md)