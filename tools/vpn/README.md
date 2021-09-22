# VPN Setup Information

## 1. Overview

The online plugfest network configuration is shown in this description.
The VPN server is [SoftEther VPN Server](https://www.softether.org/) and runs on AWS.
This network is 192.168.30.0/24 and has 2 areas for the device/PC 
for fixed IP addresses and for unfixed addresses allocated by DHCP.
If you need fixed IP addresses,
you must check the [IP address table](ip.csv) to reserve it in advance.
The following information for the actual connection will be sent to you as needed.
Please send your request to the mailing list.
Information needed to connect
- User ID/password (if you have preferred user id name, please send it with the request)
- Server IP address (needed for firewall configuration; if you are connecting through an ISP, try using a [service](https://www.get-myip.com/) to find the IP you are connecting from)
- PSK (for L2TP/IPsec)

## 2. How to Setup Your Sites

There are four ways to connect to the SoftEther VPN network.
Please choose a good way that suits your conditions from these.
If you connect device/PCs to the VPN one by one, using the SoftEther VPN Client or L2TP/IPSec are better. 
If you want to connect multiple device/PCs to the VPN,
setting up a SoftEther VPN Bridge or an OpenVPN client is better.
.
- [SoftEther VPN client](vpn_softetherclient.md)
- [L2TP/IPSec client](vpn_l2tp.md)
- [SoftEther VPN bridge](vpn_softetherbridge.md)
- OpenVPN client (To Do)

## 3. VPN Server infomation
- [SoftEther server information on the WG archive (Member-only)](https://lists.w3.org/Archives/Member/member-wot-wg/2021Sep/0006.html)
- [SoftEther server information on the IG archive (Member-only)](https://lists.w3.org/Archives/Member/member-wot-ig/2021Sep/0006.html)
