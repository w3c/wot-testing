#!/bin/bash

PLAYGROUNDLOCATION=~/Dev/thingweb-playground/

# Ditto
IMPLEMENTATION=Ditto
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# ECLASS
IMPLEMENTATION=ECLASS
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# EDITDOR
IMPLEMENTATION=editdor
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# flask-tum
IMPLEMENTATION=flask-tum
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/TDs/manual.csv

# Fujitsu
IMPLEMENTATION=Fujitsu
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# hitachi-esp-idf
IMPLEMENTATION=hitachi-esp-idf
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/manual.csv

# hitachi-node-red
IMPLEMENTATION=hitachi-node-red
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/manual.csv

# hitachi-nodegen
# only a csv file - manual results only
IMPLEMENTATION=hitachi-nodegen
echo "$IMPLEMENTATION"
cp $IMPLEMENTATION/manual.csv Results/$IMPLEMENTATION.csv

# intel-nodejs
IMPLEMENTATION=intel-nodejs
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/TDs/manual.csv

# intel-wot-ha
IMPLEMENTATION=intel-wot-ha
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/manual.csv

# intel-proxy
# only a csv file - manual results only
IMPLEMENTATION=intel-proxy
echo "$IMPLEMENTATION"
cp $IMPLEMENTATION/$IMPLEMENTATION.csv Results/$IMPLEMENTATION.csv

# dart_wot
# only a csv file - manual results only
IMPLEMENTATION=dart_wot
echo "$IMPLEMENTATION"
cp $IMPLEMENTATION/manual.csv Results/$IMPLEMENTATION.csv

# Playground
# only a csv file - manual results only
IMPLEMENTATION=Playground
echo "$IMPLEMENTATION"
cp $IMPLEMENTATION/$IMPLEMENTATION.csv Results/$IMPLEMENTATION.csv

# manual tms from TUM
IMPLEMENTATION=manual-tms
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/TMs/manual.csv

# NHK
IMPLEMENTATION=NHK
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# node-wot
IMPLEMENTATION=node-wot
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv

# Oracle
IMPLEMENTATION=Oracle
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Philips Hue
IMPLEMENTATION=philips-hue
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# saywot
IMPLEMENTATION=saywot
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv

# WebThings
IMPLEMENTATION=WebThings
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# oracle-wt
IMPLEMENTATION=oracle-wt
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Logilabs (TDD)
IMPLEMENTATION=siemens-logilab
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# TinyIoT (TDD)
IMPLEMENTATION=TinyIoT
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# sdf-wot-converter (TMs)
IMPLEMENTATION=sdf-wot-converter
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION -a

# MQTT Experimental
IMPLEMENTATION=mqtt-experimental
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Huawei
IMPLEMENTATION=huawei
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# VAIMEE
IMPLEMENTATION=VAIMEE
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/manual.csv

## Older (should be moved to node-wot)

# Unibo Farm
IMPLEMENTATION=unibo-farm
IMPLEMENTATION_DIR=../../input_2021/TD/TDs/AllOrgs/$IMPLEMENTATION
echo "$IMPLEMENTATION in $IMPLEMENTATION_DIR"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION_DIR/ -o Results/$IMPLEMENTATION -a

# ECHONET Bridge
IMPLEMENTATION=echonet-bridge
IMPLEMENTATION_DIR=../../input_2021/TD/TDs/AllOrgs/$IMPLEMENTATION
echo "$IMPLEMENTATION in $IMPLEMENTATION_DIR"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION_DIR/ -o Results/$IMPLEMENTATION -a

