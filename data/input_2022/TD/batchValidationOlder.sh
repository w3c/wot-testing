#!/bin/bash

## Validate older inputs from TD 1.0

PLAYGROUNDLOCATION=~/Dev/thingweb-playground/

# intel-ocf
IMPLEMENTATION=intel-ocf
IMPLEMENTATION_DIR=~/Dev/wot-testing/data/input_2018/TD/$IMPLEMENTATION
node $PLAYGROUNDLOCATION/packages/cli/index.js -t TD -i $IMPLEMENTATION_DIR/TDs/ -o Results/$IMPLEMENTATION -a -m $IMPLEMENTATION_DIR/TDs/$IMPLEMENTATION.csv

