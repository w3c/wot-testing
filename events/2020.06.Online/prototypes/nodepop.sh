#!/bin/sh
# A hacky script for incorporate all Things from LinkSmart Thing Directory to Node-RED
# Need to execute in Node-RED user directory (i.e. ~/.node-red)

lsendpoint='https://demo.linksmart.eu/thing-directory'
#xpath='*'    # all TDs
xpath='*[starts-with(*//href,"http")%20or%20starts-with(base,"http")]'   # only TDs which have HTTP endpoint
#ids=$(curl -g $lsendpoint/td\?jsonpath=$\[\?\(@.base=\~/^http/\)\]| jq -r '.items | .[] | .id')
ids=$(curl -L -s -g $lsendpoint/td?xpath=$xpath | jq -r '.items | .[] | .id')

tmpdir=$(mktemp -d) 

echo Generating node in: $tmpdir
for i in $ids; do 
    node-red-nodegen $lsendpoint/td/$i --wottd --tgz -o $tmpdir
done

echo Installing
tarballs="$tmpdir/*.tgz"
for t in $tarballs; do
    npm install $t
done

echo Remove temporal directory: $tmpdir
rm -r $tmpdir
