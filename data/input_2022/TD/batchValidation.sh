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
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# EDITDOR
IMPLEMENTATION=editdor
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# flask-tum
IMPLEMENTATION=flask-tum
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Fujitsu
IMPLEMENTATION=Fujitsu
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# hitachi-esp-idf
IMPLEMENTATION=hitachi-esp-idf
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# hitachi-node-red
IMPLEMENTATION=hitachi-node-red
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# intel-nodejs
IMPLEMENTATION=intel-nodejs
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# intel-wot-ha
IMPLEMENTATION=intel-wot-ha
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# intel-proxy
# only a csv file - manual results only
IMPLEMENTATION=intel-proxy
echo "$IMPLEMENTATION"
cp $IMPLEMENTATION/$IMPLEMENTATION.csv Results/$IMPLEMENTATION.csv

# manual tms from TUM
IMPLEMENTATION=manual-tms
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION -a

# NHK
IMPLEMENTATION=NHK
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# node-wot
IMPLEMENTATION=node-wot
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

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

# Logilabs (TDD)
IMPLEMENTATION=logilab
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# TinyIoT (TDD)
IMPLEMENTATION=TinyIoT
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

## Older

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
