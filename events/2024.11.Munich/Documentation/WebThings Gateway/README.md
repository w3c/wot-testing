# WebThings Gateway

[WebThings Gateway](https://webthings.io/gateway/) is an open source Web of Things gateway which bridges a range of smart home protocols to the Web of Things.

The Thing Descriptions shared in the TDs folder were generated by an instance of an early preview of WebThings Gateway 2.0 which can be accessed at https://plugfest.webthings.io.

WebThings Gateway 2.0 acts as a Producer of WoT Thing Descriptions and implements:

- WoT Thing Description 1.1
  - OAuth2SecurityScheme
- WoT Profiles
  - HTTP Basic Profile
  - HTTP SSE Profile
- WoT Discovery
  - Direct Introduction Mechanism
  - Well-Known URIs Introduction Mechanism
  - ThingDirectory & Directory Service API
  - OAuth2 Security Bootstrapping using WWW-Authenticate headers and Authorization Server Metadata

Note that gateway.td.json is a new top-level Thing Description hosted by the gateway at `/` and `/.well-known/wot` which describes the gateway itself and the features of the Directory Service API it exposes.

The gateway uses HTTP Bearer Authentication via Oauth2. I will provide both a username and password (for the HTML web interface) and a bearer token (for the HTTP API) on the WoT Working Group members mailing list. The Bearer token should be provided in an HTTP `Authorization` header or `jwt` query string in all API requests.

Note that HTTP API requests must also specify an `Accept` header with a value of `application/json` or `application/td+json`, otherwise you will receive an HTML response by default.

User documentation for WebThings Gateway can be found at https://webthings.io/docs/

WebThings Gateway 2.0 uses Node.js 20 and runs on a production quality [Ubuntu Core](https://ubuntu.com/core) base operating system inside [snap](https://snapcraft.io/) containerisation.

Please email team@webthings.io with any questions.