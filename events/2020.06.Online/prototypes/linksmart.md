# LinkSmart Thing Directory
This is a prototype implementation for WoT Thing Directory service, a catalog of Thing Descriptions. The Directory API is not yet standardized.

The directory is currently under development, showcasing different proposals. At the time of writing (v1.0.0-beta.12), it offers the following features:

* Service Discovery
  * DNS-SD registration (`_wot._tcp` type and `_directory` subtype)
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

[More information](https://github.com/linksmart/thing-directory/blob/master/README.md)

## Demo instances
#### Cloud
A cloud instance has been prepared for the plugfest with **public read access**: [Demo Wiki](https://github.com/linksmart/thing-directory/wiki/Demo)

#### Local
There is also a local instance, which can be [discovered with DNS-SD](https://github.com/linksmart/thing-directory/wiki/Discovery-with-DNS-SD) inside the [VPN](../tools/vpn.md). Browse for instances of type `_wot._tcp` and subtype `_directory`.

CLI Examples:

Linux:
```bash
# Browse and resolve
$ avahi-browse _directory._sub._wot._tcp --resolve
+ vpn_tun0 IPv4 Plugfest Local Thing Directory                _wot._tcp            local
= vpn_tun0 IPv4 Plugfest Local Thing Directory                _wot._tcp            local
   hostname = [iot-linksmart-white.local]
   address = [192.168.30.132]
   port = [8081]
   txt = ["version=v1.0.0-beta.15" "td=/td"]
```
macOS (windows):
```bash
# Browse
% dns-sd -B _wot._tcp,_directory                   
Browsing for _wot._tcp,_directory
DATE: ---Tue 16 Jun 2020---
12:30:54.741  ...STARTING...
Timestamp     A/R    Flags  if Domain               Service Type         Instance Name
12:30:54.750  Add        2   5 local.               _wot._tcp.           Plugfest Local Thing Directory
^C

# Lookup (Resolve)
% dns-sd -L "Plugfest Local Thing Directory" _wot._tcp local
Lookup Plugfest Local Thing Directory._wot._tcp.local
DATE: ---Tue 16 Jun 2020---
12:31:04.753  ...STARTING...
12:31:04.754  Plugfest\032Local\032Thing\032Directory._wot._tcp.local. can be reached at iot-linksmart-white.local.:8081 (interface 5)
 td=/td version=v1.0.0-beta.15
^C
```
