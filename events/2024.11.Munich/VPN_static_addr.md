# IP address allocation table for Plugfest VPN

In plugfest VPN network, the DHCP server dynamically allocates IP addresses between 192.168.30.128 to 250.  
If you would like to use statically allocated IP addresses, please secure your addresses
by updating this markdown file and making a pull request.

| IP Address | Description |
| --- | --- |
|192.168.30.1       | Gateway         |
|192.168.30.2-9     | Reserved for administrative purpose        |
|192.168.30.10      | ECHONET Consortium |
|192.168.30.11      | AI Services (McCool/Intel) |
| ...               | ...             |
|192.168.30.127     | free                  |
|192.168.30.128-250 | allocated by DHCP     |
|192.168.30.251-255 | Reserved for administrative purpose        | 

Note from McCool: I *wanted* to set up the above IP address for AI services but could not 
get it to work.  For now I am using DHCP and have been assigned the IP address
192.168.30.138 - hopefully it will stick.
