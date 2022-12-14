#!/bin/bash

# These should be tuned based on your system
PLAYGROUNDLOCATION=~/git/thingweb-playground/packages/assertions/
NEWCSVPATH=../../../../../wot-discovery/testing/manual.csv
EVENTPATH=../../../../data/input_2022/Discovery
# These are per implementation

IMPLEMENTATION=dart_wot
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=hitachi-esp-idf
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=hitachi-node-red
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=hitachi-nrwotdisc
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=node-wot
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=riot-wot
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=siemens-logilab
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=tinyiot
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=VAIMEE
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=wot-ha
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/$IMPLEMENTATION.csv $NEWCSVPATH > $IMPLEMENTATION.md

IMPLEMENTATION=wothive
node $PLAYGROUNDLOCATION/generate-changelog.js $EVENTPATH/$IMPLEMENTATION/manual.csv $NEWCSVPATH > $IMPLEMENTATION.md