# Setup instruction for SoftEther VPN client

NOTE: This instaruction asumes using linux on Raspberry Pi. `testuser/pftest` is an example for User ID and password.

## 1. Download VPN bridge from SoftEther Download Center
- go to https://www.softether-download.com/en.aspx?product=softether
- Select Software -> SoftEther VPN (Freeware)
- Select Component -> SoftEther VPN Client
- Select Platform -> Linux
- Select CPU -> ARM EABI (32bit)
- Download newest file
- (as of April 5th, newest file is: https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.34-9745-beta/softether-vpnclient-v4.34-9745-beta-2020.04.05-linux-arm_eabi-32bit.tar.gz )

## 2. Extract downloaded archive file

```
% tar zxf softether-....tar.gz

% cd vpnclient
```

## 3. Build

```
% make
```

## 3.5. Add static route for VPN server (only for Linux)

To avoid looping, set static route for VPN server.  For example:
```
% sudo ip route add xxx.xxx.xxx.xxx via yyy.yyy.yyy.yyy dev zzz0
```
where 
- xxx.xxx.xxx.xxx: IP address of Softether VPN server
- yyy.yyy.yyy.yyy: Default gateway of your local network
- zzz0: Interface name which is connected to your local network. 

[Further information](https://www.softether.org/4-docs/1-manual/B._Troubleshooting_and_Supplemental/11.1_Troubleshooting#11.1.27_My_VPN_connection_is_disconnected_when_I_designate_the_Virtual_Network_Adapter_as_the_default_gateway_in_VPN_Client_under_Linux.).

## 4. Start vpnclient

```
% sudo ./vpnclient start
```

## 5. Connect to local VPN client via vpncmd
```
% ./vpncmd /client localhost
vpncmd command - SoftEther VPN Command Line Management Utility
...
Connected to VPN Client "localhost".

VPN Client>
```

Connection has been established with VPN Client "localhost".

## 6. Create a virtual device `vpn_tun0`

```
VPN Client>NicCreate tun0      <----
```

## 7. Create an account for the connection to VPN server

```
VPN Client>AccountCreate pf2020 /SERVER:xxx.xxx.xxx.xxx:443 /HUB:wotpf /USERNAME:testuser /NICNAME:tun0            <---

VPN Client>NicEnable tun0            <---

VPN Client>AccountUsernameSet pf2020 /USERNAME:testuser            <---

VPN Client>AccountPasswordSet pf2020 /PASSWORD:pftest /TYPE:standard            <---

VPN Client>AccountConnect pf2020            <---
```

## 8. Enable DHCP for assign IP address to the interface
You should get IP address from DHCP server

```
% sudo dhclient vpn_tun0

% ip addr show vpn_tun0
```
