# Hitachi - March 2021 Online Plugfest

We provide simple LED lamp and sensor.

![LED](./simpleled.gif)
![Sensor](./m5.jpg)

## TD Discovery

### [Direct](https://w3c.github.io/wot-discovery/#introduction-direct)

- written URL:
  - http://ktorpi.local:1880/.well-known/wot-thing-description
  - http://ktom5stack.local/.well-known/wot-thing-description

### [Well-Known URIs](https://w3c.github.io/wot-discovery/#introduction-well-known)

- fetch well-known URL `/.well-known/wot-thing-description` on host `ktorpi.local`, port 1880, or
- fetch well-known URL `/.well-known/wot-thing-description` on host `ktom5stack.local`, port 80

### [DNS-Based Service Discovery](https://w3c.github.io/wot-discovery/#introduction-dns-sd)

1. browse `_wot._tcp` service on local network.  for example:
```
% avahi-browse -r _wot._tcp
+   eth0 IPv4 myRasPiLED                                    _wot._tcp            local
+   eth0 IPv4 ktom5stack                                    _wot._tcp            local
=   eth0 IPv4 ktom5stack                                    _wot._tcp            local
   hostname = [ktom5stack.local]
   address = [192.168.10.115]
   port = [80]
   txt = ["td=/.well-known/wot-thing-description" "type=Thing"]
=   eth0 IPv4 myRasPiLED                                    _wot._tcp            local
   hostname = [ktorpi.local]
   address = [192.168.10.130]
   port = [1880]
   txt = ["type=Thing" "td=/.well-known/wot-thing-description"]

```
2. retrieve TD using above information
```
% curl -u user:pass http://192.168.10.130:1880/.well-known/wot-thing-description > hitachi-led.td.jsonld
% curl http://192.168.10.115/.well-known/wot-thing-description > hitachi-acc-air.td.jsonld
```

### [CoRE Link Format and CoRE Resource Directory](https://w3c.github.io/wot-discovery/#introduction-core-rd)
Not yet implemented.

### [DID Documents](https://w3c.github.io/wot-discovery/#introduction-did)
Not yet implemented.

### If you can't get a TD ...

- [TD for LED](./hitachi-led.td.jsonld)
- [TD for Sensor](./hitachi-acc-air.td.jsonld)

## Authentication

For LED, basic security scheme is supported.

Credential:
- https://lists.w3.org/Archives/Member/member-wot-ig/2020Sep/0030.html
- https://lists.w3.org/Archives/Member/member-wot-wg/2020Sep/0040.html
- https://lists.w3.org/Archives/Member/member-wot-guests/2020Sep/0016.html

## API for LED

* `GET /led`: read status of LED.
  - OFF: `{"value": 0}`
  - ON:  `{"value": 1}`
* `PUT /led`: write status of LED.
  - input value is same as above .
* websocket `/ws/toggled`: emit a LED status when switch is toggled
  - emitting value is same as above.
* mDNS advertisement `myRasPiLED._wot._tcp`

## API for Sensor

* `GET /air`: current air quality
  - returns: `{"tvoc":176,"eco2":507}`
    - tvoc = Total Volatile Organic Compounds (ppb)
    - eco2 = Effective Carbon Dioxide (ppm)
* `GET /accel`: accelerometer
  - returns: `{"x":0.014160,"y":1.007324,"z":0.096924}`
    - x,y,z = acceleration (G)
* mDNS advertisement `ktom5stack._wot._tcp`
