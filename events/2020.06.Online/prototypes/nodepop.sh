#!/bin/sh
# A hacky script for incorporate all Things from LinkSmart Thing Directory to Node-RED
# Need to execute in Node-RED user directory (i.e. ~/.node-red)

nodegen=node-red-nodegen

# TODO: local directory discovery using mDNS
## from: =;vpn_tun0;IPv4;Plugfest\032Local\032Thing\032Directory;_wot._tcp;local;iot-linksmart-white.local;192.168.30.132;8081;"version=v1.0.0-beta.15" "td=/td"
## to:   http://iot-linksmart-white.local:8081/td
lsendpoint='https://demo.linksmart.eu/thing-directory'

# Retrieve IDs of TDs which have HTTP endpoint. 
echo Search LinkSmart directory ...
xpath='(*[*//forms/*[starts-with(href,"http")]]%20or%20*[starts-with(base,"http")])/id'   # only TDs which have HTTP endpoint
ids=$(curl -L -s -g $lsendpoint/td?xpath=$xpath | jq -r '.items[]' | sort | uniq)

echo nodes are: $ids
    # for example:
    # "de:tum:ei:esi:fp:coffee:1-1",
    # "de:tum:ei:esi:fp:coffee:1-16",
    # "urn:com:blue:pump:data",
    # "urn:com:fujitsu:iot:WiFi-Sensor:3C71BF428EFC",
    # "urn:com:oracle:iot:device:hvac",
    # "urn:com:oracle:iot:device:obd2",
    # "urn:com:siemens:HypermediaControlThing",
    # "urn:com:siemens:led",
    # "urn:com:siemens:wot:festo",
    # "urn:example:1234",
    # "urn:uuid:4458dc73-b30e-5aba-ba71-f17a5f050203",
    # "urn:uuid:57a9ebb4-f7c9-5828-bf8d-7c34fcff0c31"

tmpdir=$(mktemp -d) 

echo Generate nodes ...
for i in $ids; do 
    echo ... id: $i
    $nodegen $lsendpoint/td/$i --wottd --tgz -o $tmpdir
done

echo Install nodes ...
tarballs="$tmpdir/*.tgz"
for t in $tarballs; do
    echo ... file: $t
    npm install $t
done

echo Remove temporal directory: $tmpdir ...
rm -r $tmpdir
