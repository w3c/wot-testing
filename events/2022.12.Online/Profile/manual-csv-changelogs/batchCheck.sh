#!/bin/bash

# These should be tuned based on your system
PLAYGROUNDLOCATION=~/git/thingweb-playground/packages/assertions/
NEWCSVPATH=../../../../../wot-profile/testing/manual.csv
EVENTPATH=../../../../data/input_2022/Profile/Results
# These are per implementation


IMPLEMENTATION=fujitsu-ledbulb
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=fujitsu-sensor
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=node-wot
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=webthings-gateway
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=wot-webthing
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION.csv $NEWCSVPATH > $IMPLEMENTATION.md
