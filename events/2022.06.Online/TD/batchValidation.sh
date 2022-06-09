#!/bin/bash

PLAYGROUNDLOCATION=~/git/thingweb-playground/

# Ditto
IMPLEMENTATION=Ditto
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# ECLASS
IMPLEMENTATION=ECLASS
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# EDITDOR
# ERRORS
IMPLEMENTATION=editdor
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a
node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
rm Results/$IMPLEMENTATION-TM.csv
rm Results/$IMPLEMENTATION-TD.csv

# # flask-tum
IMPLEMENTATION=flask-tum
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Fujitsu
IMPLEMENTATION=Fujitsu
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# hitachi-esp-idf
IMPLEMENTATION=hitachi-esp-idf
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# hitachi-node-red
IMPLEMENTATION=hitachi-node-red
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# intel-nodejs
IMPLEMENTATION=intel-nodejs
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# intel-proxy
# only a csv file?

# manual tms from TUM
IMPLEMENTATION=manual-tms
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION -a

# NHK
IMPLEMENTATION=NHK
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# node-wot
IMPLEMENTATION=node-wot
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Oracle
IMPLEMENTATION=Oracle
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Philips Hue
IMPLEMENTATION=philips-hue
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# saywot
IMPLEMENTATION=saywot
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv

# WebThings
IMPLEMENTATION=WebThings
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# Logilabs (TDD)
IMPLEMENTATION=logilab
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a
