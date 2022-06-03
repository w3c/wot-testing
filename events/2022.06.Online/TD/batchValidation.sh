#!/bin/bash

PLAYGROUNDLOCATION=~/git/thingweb-playground/

# Ditto
IMPLEMENTATION=Ditto
# node $PLAYGROUNDLOCATION/packages/cli/index.js -t TM -i $IMPLEMENTATION/TMs/ -o Results/$IMPLEMENTATION-TM -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
# node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION-TD -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv
# node $PLAYGROUNDLOCATION/packages/cli/index.js --merge-only Results/$IMPLEMENTATION-TM.csv Results/$IMPLEMENTATION-TD.csv -o Results/$IMPLEMENTATION
# rm Results/$IMPLEMENTATION-TM.csv
# rm Results/$IMPLEMENTATION-TD.csv

# ECLASS
# IMPLEMENTATION=ECLASS
# node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a

# saywot
# IMPLEMENTATION=saywot
# node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/$IMPLEMENTATION.csv

# intel-nodejs
IMPLEMENTATION=intel-nodejs
echo "$IMPLEMENTATION"
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION/TDs/manual.csv

