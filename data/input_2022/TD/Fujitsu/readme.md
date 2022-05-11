# Fujitsu contoribution
## Sensor unit
Fujitsu sensor unit equiped with temperature, humidity and air pressure sensors. This sensor unit is on our local network and invisible 
because it's connected behindd the proxy.
The TD under TD folder is the thing description of the real device. Discovery service is supported: Well-known URI and mDNS.

## Proxy and Directory service for searching shadow
Fujitsu proxy is working on VPN(192.168.30.130). The proxy rewrites the URL in TD to connect via the proxy without directly accessing 
the device. The TD under porudecedByProxy folder is the thing description of the shodow.
The proxy alos support a directory service for consumers to search the shadows produced inside the proxy. Discovery service is supported: mDNS.
