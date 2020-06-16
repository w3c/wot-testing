# Setup Instructions for SoftEther VPN Bridge

NOTE: These instructions assume you are using linux on Raspberry Pi.
`testuser/pftest` is a sample User ID and password in the instruction.
This setup is NOT a persistent service; if you reboot, you will have to 
reconfigure it.

## 1. Download VPN Bridge from SoftEther Download Center
- go to https://www.softether-download.com/en.aspx?product=softether
- Select Software -> SoftEther VPN (Freeware)
- Select Component -> SoftEther VPN Bridge
- Select Platform -> Linux
- Select CPU -> ARM EABI (32bit)
- Download newest file
- (as of this writing, newest file is: https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.34-9745-beta/softether-vpnbridge-v4.34-9745-beta-2020.04.05-linux-arm_eabi-32bit.tar.gz )

## 2. Extract Downloaded Archive File

```
% tar zxf softether-....tar.gz

% cd vpnbridge
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

## 4. Start vpnbridge

```
% sudo ./vpnbridge start
```

## 5. Change the Manager Password

```
% ./vpncmd /SERVER localhost
...
Connection has been established with VPN Server "localhost" (port 443).

Please enter the password. To cancel press the Ctrl+D key.

Password: *************          <--- Password for your bridge. not for vpn server

Confirm input: **************    <--- again
```

## 6. Connect Virtual Hub `BRIDGE` with Physical Interface (e.g. `eth0`)

```
VPN Server>BridgeDeviceList      <----
BridgeDeviceList command - Get List of Network Adapters Usable as Local Bridge
eth0
wlan0
VPN Server>BridgeCreate BRIDGE /DEVICE:eth0      <----
```
Physical interface names may vary.  Use a interface name of dedicated network adapter for bridging. 

## 7. Connect Virtual Hub `BRIDGE` to VPN server

```
VPN Server>Hub BRIDGE            <---

VPN Server/BRIDGE>CascadeCreate mybridge /SERVER:xxx.xxx.xxx.xxx:443 /HUB:wotpf /USERNAME:testuser  <---

VPN Server/BRIDGE>CascadePasswordSet mybridge /PASSWORD:pftest /TYPE:standard    <---

VPN Server/BRIDGE>CascadeOnline mybridge   <---
```

## 8. Note for Local Bridging
If you need to connect the machines in VPN from the machine where `vpnbridge` is running,

you should make a bridge,

```
% sudo apt install bridge-utils

% sudo brctl addbr br0
```

create tap interface on step 6 in above,

```
VPN Server>BridgeCreate BRIDGE /DEVICE:svpn /TAP:yes      <----
```

then bridge the tap interface and physical interface (`eth0`) using:

```
% sudo brctl addif br0 tap_svpn

% sudo brctl addif br0 eth0

% sudo ip link set br0 up

% sudo dhclient br0
```

You may adjust DHCP setting for physical interfaces.

Further information about local bridge is [here](https://www.softether.org/4-docs/1-manual/3._SoftEther_VPN_Server_Manual/3.6_Local_Bridges#3.6.11_Points_to_Note_when_Local_Bridging_in_Linux.2C_FreeBSD.2C_Solaris_or_Mac_OS_X).
