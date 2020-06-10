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
**% tar zxf softether-....tar.gz**

**% cd vpnclient**

## 3. Build
**% make**

## 4. Start vpnbridge
**% sudo ./vpnclient start**

## 5. Change the Manager Password
**% ./vpncmd**

1. Management of VPN Server or VPN Bridge
2. Management of VPN Client
3. Use of VPN Tools (certificate creation and Network Traffic Speed Test Tool)

**Select 1, 2 or 3: 2**

**Hostname of IP Address of Destination:   <-- Enter**

Connection has been established with VPN Client "localhost".

## 6. Create a virtual device `vpn_tun0`
**VPN Client>NicCreate tun0      <----**

## 7. Create an account for the connection to VPN server
**VPN Client>AccountCreate pf2020 /SERVER:xxx.xxx.xxx.xxx:443 /HUB:wotpf /USERNAME:`testuser` /NICNAME:tun0            <---**

**VPN Client>NicEnable pf2020            <---**

**VPN Client>AccountUsernameSet pf2020 /USERNAME:`testuser`            <---**

**VPN Client>AccountPasswordSet pf2020 /PASSWORD:`pftest` /TYPE:standard            <---**

**VPN Client>AccountConnect pf2020            <---**

## 8. Note for local bridging
You should get IP address from DHCP server

**% sudo dhclient vpn_tun0**

**% ip addr show vpn_tun0**

