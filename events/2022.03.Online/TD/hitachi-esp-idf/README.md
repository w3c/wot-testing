# Hitachi - March 2022 Online Testfest/Plugfest - air quality sensor and accelerometer

![Sensor](./m5.jpg)

## TD Discovery

### [Direct](https://w3c.github.io/wot-discovery/#introduction-direct)

- written URL:
  - http://ktom5stack.local/.well-known/wot-thing-description

### [Well-Known URIs](https://w3c.github.io/wot-discovery/#introduction-well-known)

- fetch well-known URL `/.well-known/wot-thing-description` on host `ktom5stack.local`, port 80

### [DNS-Based Service Discovery](https://w3c.github.io/wot-discovery/#introduction-dns-sd)

1. browse `_wot._tcp` service on local network.  for example:
```
% avahi-browse -r _wot._tcp
+   eth0 IPv4 ktom5stack                                    _wot._tcp            local
=   eth0 IPv4 ktom5stack                                    _wot._tcp            local
   hostname = [ktom5stack.local]
   address = [192.168.30.129]
   port = [80]
   txt = ["td=/.well-known/wot-thing-description" "type=Thing"]

```
2. retrieve TD using above information
```
% curl http://192.168.30.129/.well-known/wot-thing-description > hitachi-acc-air.td.jsonld
```

### [CoRE Link Format and CoRE Resource Directory](https://w3c.github.io/wot-discovery/#introduction-core-rd)
Not yet implemented.

### [DID Documents](https://w3c.github.io/wot-discovery/#introduction-did)
Not yet implemented.

### If you can't get a TD ...

- [TD for Sensor](./TDs/hitachi-acc-air.td.jsonld)

## Authentication

no_sec

## API for Sensor

* `GET /air`: current air quality
  - returns: `{"tvoc":176,"eco2":507}`
    - tvoc = Total Volatile Organic Compounds (ppb)
    - eco2 = Effective Carbon Dioxide (ppm)
* `GET /accel`: accelerometer
  - returns: `{"x":0.014160,"y":1.007324,"z":0.096924}`
    - x,y,z = acceleration (G)
* mDNS advertisement `ktom5stack._wot._tcp`
