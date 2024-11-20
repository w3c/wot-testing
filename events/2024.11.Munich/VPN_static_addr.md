# IP address allocation table for Plugfest VPN

In plugfest VPN network, the DHCP server dynamically allocates IP addresses between 192.168.30.128 to 250.  
If you would like to use statically allocated IP addresses, please secure your addresses
by updating this markdown file and making a pull request.

| IP Address | Description |
| --- | --- |
|192.168.30.1       | Gateway         |
|192.168.30.2-9     | Reserved for administrative purpose        |
|192.168.30.10      | ECHONET Consortium |
| ...               | ...             |
|192.168.30.127     | free                  |
|192.168.30.128-250 | allocated by DHCP     |
|192.168.30.251-255 | Reserved for administrative purpose        | 
