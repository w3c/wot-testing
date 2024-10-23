# Setup Instructions for SoftEther VPN Bridge

NOTE: These instructions assume you are using linux on Raspberry Pi.
`testuser/pftest` is a sample User ID and password in the instruction.
This setup is NOT a persistent service; if you reboot, you will have to
reconfigure it.  

TODO:

- separate static and per-boot parts of instructions
- create a service and a configuration file.

## 1. Download VPN Bridge from SoftEther Download Center

- go to <https://www.softether-download.com/en.aspx?product=softether>
- Select Software -> SoftEther VPN (Freeware)
- Select Component -> SoftEther VPN Bridge
- Select Platform -> Linux
- Select CPU -> ARM EABI (32bit) or ARM 64bit (64bit)
- Download newest file
- As of this writing, newest files are
  - [Stable v4.41-9782 ARM-64bit](https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.41-9782-beta/softether-vpnbridge-v4.41-9782-beta-2022.11.17-linux-arm64-64bit.tar.gz)
  - [Stable v4.41-9782 ARM-32bit](https://www.softether-download.com/files/softether/v4.43-9799-beta-2023.08.31-tree/Linux/SoftEther_VPN_Bridge/32bit_-_ARM_EABI/softether-vpnbridge-v4.43-9799-beta-2023.08.31-linux-arm_eabi-32bit.tar.gz)
- Alternatively, it can download form github
  - [SoftEther VPN Stable Release Page](https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases)
  - [SoftEther VPN Dev Release Page](https://github.com/SoftEtherVPN/SoftEtherVPN/releases)

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

To avoid looping, on the bridge,
set static route for VPN server in the cloud.  For example:

```
% sudo ip route add xxx.xxx.xxx.xxx via yyy.yyy.yyy.yyy dev zzz0
```

where

- xxx.xxx.xxx.xxx: IP address of Softether VPN server in the cloud
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

VPN Server>ServerPasswordSet

Please enter the password. To cancel press the Ctrl+D key.

Password: *************          <--- Password for your bridge. not for vpn server

Confirm input: **************    <--- again
```

## 6. Connect Virtual Hub `BRIDGE` with Physical Interface (e.g. `eth0`)

If you are planning to use the tap interface (local bridging), skip this step. Please see section 8 for the local bridge.

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

Create tap interafce, so it can communicate with local network,

```
VPN Server>BridgeCreate BRIDGE /DEVICE:svpn /TAP:yes      <----
```

Install `bridged-utils` to create a bridged interface,

```
% sudo apt install bridge-utils
```

Before creating a bridge interface, get physical interface's MAC address by running,

```
% ip link
```

On the `ip link` output, you can find the MAC, as shown below.

```
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel master br0 state UP mode DEFAULT group default qlen 1000
    link/ether 00:a0:98:79:42:65 brd ff:ff:ff:ff:ff:ff
    ↑--------------------------↑ -> This is Mac address
```

Physical interface names may vary.  Use a interface name of dedicated network adapter for bridging.

To create bridged interface, we need to modify the netplan, to modify `netplan`,

```
% sudo nano /etc/netplan/50-cloud-init.yaml # Opening netplan condig file
```

Add bridged interface

```
network:
  version: 2
  ethernets:
    eth0:
      dhcp4: false <--- Make sure to change to false!!! Otherwise you cannot access your device over ethernet anymore.
  bridges:
    br0:
      macaddress: 00:a0:98:79:42:65  <--- Change to physical MAC address from ifconig
      interfaces: [ eth0 ]
      dhcp4: true
      parameters:
        stp: true
        forward-delay: 4
```

Now apply `netplan` to activate bridged interface (`br0`),

```
% sudo netplan apply
```

Now, we can link tap interface from SoftEther VPN to bridged interface (`br0`)
that we created,

```
% sudo brctl addif br0 svpn
```

You may adjust DHCP setting for physical interfaces.

Further information about local bridge is [here](https://www.softether.org/4-docs/1-manual/3._SoftEther_VPN_Server_Manual/3.6_Local_Bridges#3.6.11_Points_to_Note_when_Local_Bridging_in_Linux.2C_FreeBSD.2C_Solaris_or_Mac_OS_X).

## 9. Automatically starting at boot

The local VPN bridge software automatically saves its configuration in a file (`vpn_bridge.config`, owned by root) so
you do not have to reconfigure it each time you run it.
If you set it up to run in
["service mode"](https://www.softether.org/4-docs/1-manual/7._Installing_SoftEther_VPN_Server/7.3_Install_on_Linux_and_Initial_Configurations)
then it will also run automatically at boot using `init.d`.
This starts by copying the files to `/usr/local` and making them owned by root,
then setting up an `init.d` service file.  However the instructions for the service file are not
quite right for the Raspberry Pi which does not have `chkconfig`.
Instead you have to
manually set the dependencies in the service file (see here for an appropriate
[init.d/vpnbridge service file](vpnbridge)) and then use the following to
make it executable and register it:

```
   sudo chmod +x /etc/init.d/vpnbridge
   sudo update-rc.d vpnbridge defaults
```

As a secondary problem,
if you want to use a bridge interface (see `br0` above) then you have to make the
`br0` interface persistent.  This is a bit tricky since `br0` depends on the
`svpn` interface which
is actually dynamically created by `vpnbridge` when it starts.
One way around this is to add the
bridge creation to `/etc/network/interfaces`, but the Raspberry Pi makes this complicated by autogenerating
that file from a DHCP configuration file...
A simpler if slightly hacky solution is to add the
bridge creation commands to the `init.d` script, which is what I have done above.

Note that I use `eth0` for my connection to the upstream external network (internet) and
`eth1` for my downstream (local) VLAN interface, so you might have to edit that part to
make it work for your interfaces.  For example, you might be using `wlan0` for your upstream network
and `eth0` for your downstream network instead.  In addition the static route command is included
in this service file but if the IP of the VPN server changes that part will have to be changed,
and also your local gateway may have a different address than what I used.  In short, make sure to
check and edit these elements.

## 10. Setting up a Raspberry Pi as a Wi-Fi access point

1. Install `hostapd`

```sh
% sudo apt update
% sudo apt install hostapd
% sudo systemctl stop hostapd
```

2. Setup Wi-Fi interface

In `/etc/dhcpcd.conf`:

```
...
interface wlan0
    nohook wpa_supplicant
    noipv4
    noipv6
...
```

3. Setup `hostapd`

In `/etc/hostapd/hostapd.conf`:

```
contry_code=US
interface=wlan0
ssid=YOUR_FAVORITE_SSID
hw_mode=g
channel=3
macaddr_acl=0
auth_algs=1
wpa=2
wpa_key_mgmt=WPA-PSK
rsn_pairwise=CCMP
wpa_passphrase=YOUR_FABORITE_PASSWORD
```

Specify country codes, etc., appropriately for your environment. See <https://w1.fi/hostapd/> .

In `/etc/default/hostapd`:

```
...
DAEMON_CONF="/etc/hostapd/hostapd.conf"
...
```

4. Start `hostapd`

```sh
% sudo systemctl unmask hostapd
% sudo systemctl enable hostapd
% sudo systemctl start hostapd
```
