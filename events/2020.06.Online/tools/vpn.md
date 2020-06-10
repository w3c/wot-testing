# VPN setup information

## 1. overview

The online plugfest network configuration is shown in this description. The VPN server is Softether VPN Server and runs on AWS.
This network is 192.168.30.0/24 and has 2 areas for the device/PC for fixed IP addresses and for unfixed addresses allocated by DHCP.
If you needs fixed IP addresses, you must check the [IP address table](ip.csv) and get it in advance.

The following information for the actual connection will be sent, if you need. Please send your reqeust to the mailing list.
Information needed to connect
- User ID/password (if you have prefed user id name, send it with the request)
- Server address
- PSK (for L2TP)

## 2. How to setup for your sites

There are four ways to connect to a VPN network. Please choose good ways that suits your condition from these.
If you connect device/PCs to the VPN one by one, Softether VPN Client or L2TP/IPSec are better. 
If you connect your local network with multiple device/PCs to the VPN, Softether VPN Bridge or OpenVPN are better.
.
- [SoftEther VPN client](vpn_softetherclient.md)
- L2TP/IPSec client
- [SoftEther VPN bridge](vpn_softetherbridge.md)
- OpenVPN client
