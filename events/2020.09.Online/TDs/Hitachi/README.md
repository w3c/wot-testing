# Hitachi - September 2020 Online Plugfest

We provide a simple LED lamp.

(implementation details are the same as in the [previous plugfest](../../../2020.06.Online/TDs/Hitachi/README.md))

## TD Discovery

### [Direct](https://w3c.github.io/wot-discovery/#introduction-direct)

- written URL: http://ktorpi.local:1880/.well-known/wot-thing-description
- QR code: ![QR code of above URL](td-url.svg)
- (cf. QR code of full TD + gzip + base64): ![QR code of the full TD](td-full.svg)
  - To extract a TD, execute `cat decoded-data | base64 -d | gzcat` .

### [Well-Known URIs](https://w3c.github.io/wot-discovery/#introduction-well-known)

- fetch well-known URL `/.well-known/wot-thing-description` on host `ktorpi.local` and port 1880.

### [DNS-Based Service Discovery](https://w3c.github.io/wot-discovery/#introduction-dns-sd)

1. browse `_wot._tcp` service on plugfest VPN.  for example:
```
% avahi-browse -r _wot._tcp
+ vpn_vpn IPv4 myRasPiLED                                    _wot._tcp            local
= vpn_vpn IPv4 myRasPiLED                                    _wot._tcp            local
   hostname = [ktorpi.local]
   address = [192.168.30.135]
   port = [1880]
   txt = ["type=Thing" "td=/.well-known/wot-thing-description"]
```
2. retrieve TD using above information
```
% curl -u user:pass http://192.168.30.135:1880/.well-known/wot-thing-description > hitachi-led.jsonld
```

### [CoRE Link Format and CoRE Resource Directory](https://w3c.github.io/wot-discovery/#introduction-core-rd)
Not yet implemented.

### [DID Documents](https://w3c.github.io/wot-discovery/#introduction-did)
Not yet implemented.

### If you can't get a TD ...

please use [this](./hitachi-led.jsonld).

## Authentication

Basic security scheme is supported.

The credential will be posted on member's mailing list.

## API

* `GET /led`: read status of LED.
  - OFF: `{"value": 0}`
  - ON:  `{"value": 1}`
* `PUT /led`: write status of LED.
  - input value is same as above .
* websocket `/ws/toggled`: emit a LED status when switch is toggled
  - emitting value is same as above.
* mDNS advertisement `myRasPiLED._wot._tcp`
