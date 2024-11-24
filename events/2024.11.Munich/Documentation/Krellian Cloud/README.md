# Krellian Cloud

[Krellian Cloud](https://krellian.com/cloud/) is a hosted cloud service which provides real-time data analytics for commercial buildings.

Krellian Cloud provides a WoT Thing Description Directory service and also acts as a Consumer of WoT Thing Descriptions and Things using the HTTP Basic Profile and HTTP SSE Profile.

The Thing Description in cloud.td.json is the top level Thing Description hosted at https://cloud.krellian.com/.well-known/wot which describes the features of the Directory Service API exposed by the cloud service.

In order to use Krellian Cloud you need to register for an early access account at https://cloud.krellian.com. I will provide an invitation code to the Web of Things Working Group members mailing list.

User documentation for Krellian Cloud can be found at https://docs.krellian.com/

Krellian Cloud uses HTTP Bearer authentication using JSON Web Tokens (JWT). Once you are logged in it's possible to extract your personal JWT from the Authorization header on authenticated HTTP requests using browser developer tools.

Krellian Cloud is implemented in Node.js with a MongoDB database acting as an object store and time-series database. It is hosted on Amazon AWS.

Please email ben@krellian.com with any questions.