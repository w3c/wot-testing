#!/bin/sh

targetDirectory="../../Profile/TD/Candidates/Processed"

# make sure we start on a clean basis
rm -rf $targetDirectory

candidates=`find ../../Profile/TD/Candidates/Original -name "*.jsonld"` 

for candidate in $candidates;
 do
    path=${candidate#*Original}
    directory=${path%/*}
    filename=${path#$directory/*}
    target=$targetDirectory/$directory/$filename 
    # create directories if needed
    mkdir -p $targetDirectory/$directory
    echo "Generating" $target
    awk -f processTD.awk $candidate > $target
done


