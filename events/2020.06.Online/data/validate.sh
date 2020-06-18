#!/bin/bash
# Automated TD Validation
#
# In the following, Org is an organization name, X is the name of an
# implementation, and S is a subdirectory name (also an implementation
# name, but one with multiple "instances" whose results should be merged).
# TDs must have a .jsontd suffix (there is code supporting additional suffixes
# that can be turned back on if useful...)  CSV files 
# can also be given and should be for manual assertion reports; these
# will be merged with the results of automated testing using the processing
# described below. Manual assertion reports should use templates/manual.csv
# as a template.  
#
# Config parameters:

# Input: TD Archive and manual assertion CSV files
Source="../TDs"

# Output: Automatic validation results for each TD
Auto="validation/auto"

# Output: Automatic validation results for each TD merged with manual assertions
Merged="validation/merged"

# Tools: Relative location of validation tools
Tools="../../../tools"

# Expected input, processing, and output (path elements in initial caps are 
# variables):
#   Source/Org/X.csv at top level:
#      CSV files with NO corresponding TD file will simply be copied
#      as-is to Merged/Org/X.csv. These should correspond to manual results
#      for separate implementations without a corresponding TD, that is,
#      "consumer" or "component" implementations.  Here X should be the
#      implementation name.
#   Source/Org/X.jsonld (+ optional matched csv files) at top level: 
#      Implementation with a single TD, which by definition will be a 
#      "producer".  TDs will be scanned with AssertionTester, 
#      results will copied to Auto/Org/X.csv, then merged with any CSV file 
#      of the same base name (if it exists; used for manual assertions), 
#      and the merged results written to Merged/Org/X.csv.  
#      Here X should be the implementation name.
#   Source/Org/S/*.jsonld (+ optional Source/Org/S.csv files 
#   and/or optional Source/S.csv file):
#      TDs will be scanned with AssertionTester, results will be copied to 
#      Auto/Org/S, then merged with matching CSV files in Source/Org/S for each TD 
#      if it exists (for manual results specific to each TD), all results will then 
#      be merged, then results will be merged with a Source/Org/S.csv if it exists 
#      (for manual results for the entire implementation), and the results will be 
#      written to Merged/Org/S.csv.  Note that subdirectory name S should be the 
#      implementation name and will be used for both the manual CSV input file name
#      and the output name.

# Merge CSV results (any number, 1 or more) into a target 
# output CSV file.  If the output CSV file already exists, 
# merge any existing content in it as well. 
# Absolute paths should be used, with suffixes.
function merge() {
  Inputs=$1
  Output=$2
  echo ">>>>>>>>>>>> Merge: ${Inputs[@]}"
  (
    cd $Tools/thingweb-playground/AssertionTester
    if [[ -f $Output ]]; then
      Temp="${Output}.temp"
      echo "node mergeResults.js ${Inputs[@]} $Output > $Temp"
      node mergeResults.js ${Inputs[@]} $Output > $Temp
      echo "mv $Temp $Output"
      mv $Temp $Output
    else
      echo "node mergeResults.js ${Inputs[@]} > $Output"
      node mergeResults.js ${Inputs[@]} > $Output
    fi
  )
  echo "<<<<<<<<<<<< Output written to $Output"
  # touch $Output
}

# Run the AssertionTester against a TD or a set of TDs, 
# and merge the results against any manally reported results,
# if they are given.  Saves both the automatic test results
# and the merged results.
# Absolute paths should be used, without suffixes.
function process() {
  Input=$1
  AutoOutput=$2
  MergedOutput=$3
  echo ">>>>>>>>>>>> Processing: $Input"
  (
    cd $Tools/thingweb-playground/AssertionTester
    if [[ -f $MergedOutput ]]; then
      Temp="${MergedOutput}.temp"
      echo "npm run-script testTD $Input $AutoOutput"
      npm run-script testTD $Input > $AutoOutput
      echo "node mergeResults.js $AutoOutput $MergedOutput > $Temp"
      node mergeResults.js $AutoOutput $MergedOutput > $Temp
      echo "mv $Temp $MergedOutput"
      mv $Temp $MergedOutput
    else
      echo "npm run-script testTD $Input $AutoOutput"
      npm run-script testTD $Input $AutoOutput
    fi
    Extras="${Input%.*}.csv"
    Temp="${Extras}.temp"
    if [[ -f $Extras ]]; then
      echo "node mergeResults.js $MergedOutput $Extras > $Temp"
      node mergeResults.js $MergedOutput $Extras > $Temp
      echo "mv $Temp $MergedOutput"
      mv $Temp $MergedOutput
    else
      # merge even if no extras to sort and merge children
      echo "node mergeResults.js $MergedOutput > $Temp"
      node mergeResults.js $MergedOutput $Temp
      echo "mv $Temp $MergedOutput"
      mv $Temp $MergedOutput
    fi
  )
  echo "<<<<<<<<<<<< Auto Output written to $AutoOutput"
  echo "<<<<<<<<<<<< Merged Output written to $MergedOutput"
}

# Delete any previous outputs; this avoids stale results from persisting
rm -r $Auto/*
rm -r $Merged/*

# Copy any CSV files at the top level to Merged output directory.  Note
# that any files that have the same names as TD inputs will be overwritten 
# later (after merging their contents...), but those without matches will not.  
# This takes care of manually-reported "consumer" or "component" inputs 
# without corresponding TD files.
for OrgDir in $Source/* ; do
  export Org=$(basename $OrgDir)
  mkdir -p $Merged/$Org
  cp $Source/$Org/*.csv $Merged/$Org/
done

# For all reporting organizations...
for OrgDir in $Source/* ; do
  if [[ -d $OrgDir ]]; then
    export AbsOrgDir=$(cd $OrgDir; pwd)
    export Org=$(basename $AbsOrgDir)
    echo "Processing organization $Org"
    echo "  in $AbsOrgDir"
    # Process implementations found at the top level (singletons)
    for ImplPath in $AbsOrgDir/*.jsonld ; do
       if [[ -f $ImplPath ]]; then
          export ImplFile=$(basename $ImplPath)
          export Impl="${ImplFile%.*}"
          echo "  Processing implementation $Org/$Impl"
          echo "    in $ImplPath"
          mkdir -p $Auto/$Org
          export AbsAutoDir=$(cd $Auto/$Org; pwd)
          mkdir -p $Merged/$Org
          export AbsMergedDir=$(cd $Merged/$Org; pwd)
          process $ImplPath $AbsAutoDir/$Impl.csv $AbsMergedDir/$Impl.csv
       fi
    done
    # Process (and merge) implementation instances found in subdirectories
    for ImplPath in $AbsOrgDir/* ; do
       if [[ -d $ImplPath ]]; then
          export Impl=$(basename $ImplPath)
          echo "  Processing implementation $Org/$Impl"
          echo "    under $ImplPath"
          mkdir -p $Auto/$Org/$Impl
          export AbsAutoOrgDir=$(cd $Auto/$Org; pwd)
          export AbsAutoDir=$(cd $Auto/$Org/$Impl; pwd)
          mkdir -p $Merged/$Org/$Impl
          export AbsMergedOrgDir=$(cd $Merged/$Org; pwd)
          export AbsMergedDir=$(cd $Merged/$Org/$Impl; pwd)
          for InstancePath in $ImplPath/*.jsonld ; do
             if [[ -f $InstancePath ]]; then
                export InstanceFile=$(basename $InstancePath)
                export Instance="${InstanceFile%.*}"
                echo "    Processing instance $Org/$Impl/$Instance"
                echo "      in $InstancePath"
                process $InstancePath $AbsAutoDir/$Instance.csv $AbsMergedDir/$Instance.csv
             fi
          done
          Inputs=($AbsMergedDir/*.csv)
          if [[ -f $AbsMergedDir/$Impl.csv ]]; then
            Inputs=($AbsMergedDir/$Impl.csv "${Inputs[@]}")
          fi
          echo "    Merging $Inputs into $AbsMergedOrgDir/$Impl.csv"
          merge $Inputs $AbsMergedOrgDir/$Impl.csv
       fi
    done
  fi
done
