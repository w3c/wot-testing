#!/bin/bash
# Update automated results.
# Scan $INPUTS and put results in $OUTPUTS.
INPUTS="TDs"
OUTPUTS="outputs/TDs"

# Location of Tools directory
TOOLS="../../../tools"
# Location of the AssertionTester CLI from the TD Playground.
ASCLI="${TOOLS}/thingweb-playground/packages/cli"

# Empty glob matches should return empty arrays
shopt -s nullglob

# In the following, Org is an organization name, X is the name of an
# implementation, and S is a subdirectory name (also an implementation
# name, but one with multiple "instances" whose results should be merged).
# TDs must use the .td.jsonld suffix. 
#
# CSV files can also be given and should be for manual assertion reports; these
# will be merged with the results of automated testing using the processing
# described below. Manual assertion reports should use templates/manual.csv
# as a template.  Results should use the .csv suffix.
#
# Expected input, processing, and output:
#   $INPUTS/Org/X.csv at top level:
#      CSV files with NO corresponding TD file will simply be copied
#      as-is to $OUTPUTS/Org/X.csv. These should correspond to manual results
#      for separate implementations without a corresponding TD, that is,
#      "consumer" or "component" implementations.  Here X should be the
#      implementation name.
#   $INPUTS/Org/X.td.jsonld (+ optional matched csv files) at top level: 
#      Implementation with a single TD, which by definition will be a 
#      "producer".  TDs will be scanned with AssertionTester, 
#      results will be MERGED with any CSV file of the same base name (if it 
#      exists used for manual assertions), and results written to 
#      $OUTPUTS/Org/X.csv.  Here X should be the implementation name.
#   $INPUTS/Org/S/*.td.jsonld (+ optional $INPUTS/Org/S.csv files 
#   and/or optional $INPUTS/S.csv file):
#      TDs will be scanned with AssertionTester, results will be merged with
#      matching CSV files for each TD if it exists (for manual results specific
#      to each TD), all results will then be merged, then results will be merged 
#      with an S.csv if it exists (for manual results for the entire implementation),
#      and the results will be written to $OUTPUTS/Org/S.csv.  Note that subdirectory
#      name S should be the implementation name and will be used for both the manual 
#      CSV input file name and output name.
#
# Implementation descriptions may also be included in descriptions/Org/org.html;
# these should include descriptions of all implementations. 
#
# If you want to report interop results, which have a different
# CSV format, please put them in the "interops" directory, using templates/interop.csv
# as a template.

#### MERGE RESULTS
# Merge CSV results (any number, 1 or more) into a target output CSV file.
# If the output CSV file already exists, merge any existing content in it as well. 
# Absolute paths must be used for the input and output files, with suffixes.
# All input and output files must have the ".csv" suffix (otherwise they will
# not be recognized as test results).
function merge() {
  Inputs=$1
  Output=$2
  echo ">>>>> MERGE: Inputs=${Inputs[@]} Output=$Output"
  (
    cd $ASCLI
    if [[ -f $Output ]]; then
      Temp="${Output}.temp.csv"
      echo "  node index.js ${Inputs[@]} $Output -a -s > $Temp"
      node index.js ${Inputs[@]} $Output -a -s > $Temp
      echo "  mv $Temp $Output"
      mv $Temp $Output
    else
      echo "  node index.js ${Inputs[@]} -a -s > $Output"
      node index.js ${Inputs[@]} -a -s > $Output
    fi
  )
  echo "<<<<< MERGE output written to $Output"
  # touch $Output
}

#### PROCESS TD TESTS
# Run the AssertionTester against a TD (if a suffix is used) or a set of TDs
# (if a directory is given), and merge the results against any manally reported 
# results or previous results, if they are given.  Absolute paths must be used.  
# A singleton input must use the suffix ".td.jsonld". 
# Output must use the suffix ".csv".
function process() {
  Input=$1
  Output=$2
  echo ">>>>> PROCESS: Input=$Input Output=$Output"
  (
    cd $ASCLI
    if [[ -f $Output ]]; then
      Temp1="${Output}.temp1.csv"
      Temp2="${Output}.temp2.csv"
      # Process test
      echo "  node index.js $Input -a -s > $Temp1"
      node index.js $Input -a -s > $Temp1
      # Merge results
      echo "  node index.js $Temp1 $Output -a -s > $Temp2"
      node index.js $Temp1 $Output -a -s > $Temp2
      echo "  mv $Temp2 $Output"
      mv $Temp2 $Output
      echo "  rm $Temp1"
      rm $Temp1
    else
      # Process test
      echo "  node index.js $Input -a -s > $Output"
      node index.js $Input -a -s > $Output
    fi
    # Extras="${Input%%.*}.csv"
    Extras="$(dirname $Input)/$(basename $Input .td.jsonld).csv"
    Temp="$(dirname $Output)/$(basename ${Extras}.temp.csv)"
    if [[ -f $Extras ]]; then
      # Merge results
      echo "  node index.js $Output $Extras -a -s > $Temp"
      node index.js $Output $Extras -a -s > $Temp
    else
      # Merge results even if no extras to sort and merge children
      # echo "  node index.js $Output -a -s > $Temp"
      # node index.js $Output -a -s > $Temp
      cp $Output $Temp
    fi
    echo "  mv $Temp $Output"
    mv $Temp $Output
  )
  echo "<<<<< PROCESS output written to $Output"
  # touch $Output
}

# Delete any previous outputs; this avoids stale results from persisting
echo ">> Cleanup"
echo "rm -r $OUTPUTS/*"
rm -r $OUTPUTS/*
echo "<< Done cleanup"

# Copy any CSV files at the top level to output.  Note that any files
# that have the same names as TD inputs will be overwritten later (after
# merging their contents...), but those without matches will not.  
# This takes care of manually-reported inputs, for example for consumers,
# components, or processors, without corresponding TD files.
echo ">> Setup"
for OrgDir in $INPUTS/* ; do
  export Org=$(basename $OrgDir)
  echo ">>> Create output directory for $Org"
  echo "mkdir -p $OUTPUTS/$Org"
  mkdir -p $OUTPUTS/$Org
  echo ">>> Copy any manual assertions for $Org"
  # explicit loop properly handles the case of no files to copy
  for file in $INPUTS/$Org/*.csv; do
    echo "cp $file $OUTPUTS/$Org/"
    cp $file $OUTPUTS/$Org/
  done
done
echo "<< Done setup"

# For all reporting organizations...
echo ">> Processing"
for OrgDir in $INPUTS/* ; do
  if [[ -d $OrgDir ]]; then
    export AbsOrgDir=$(cd $OrgDir; pwd)
    export Org=$(basename $AbsOrgDir)
    echo ">>> Processing organization $Org"
    echo "     in $AbsOrgDir"
    # Process implementations found at the top level (singletons)
    for ImplPath in $AbsOrgDir/*.td.jsonld ; do
       if [[ -f $ImplPath ]]; then
          export ImplFile=$(basename $ImplPath)
          export Impl=$(basename $ImplFile .td.jsonld)
          echo ">>>>  Processing implementation $Org/$Impl"
          echo "       in $ImplPath"
          echo "mkdir -p $OUTPUTS/$Org"
          mkdir -p $OUTPUTS/$Org
          export AbsOutDir=$(cd $OUTPUTS/$Org; pwd)
          echo "process $ImplPath $AbsOutDir/$Impl.csv"
          process $ImplPath $AbsOutDir/$Impl.csv
          echo "<<<< $Org/$Impl processed"
       fi
    done
    # Process (and merge) implementation instances found in subdirectories
    for ImplPath in $AbsOrgDir/* ; do
       if [[ -d $ImplPath ]]; then
          export Impl=$(basename $ImplPath)
          echo ">>>> Processing implementation $Org/$Impl"
          echo "      under $ImplPath"
          echo "mkdir -p $OUTPUTS/$Org/$Impl"
          mkdir -p $OUTPUTS/$Org/$Impl
          export AbsOutOrgDir=$(cd $OUTPUTS/$Org; pwd)
          export AbsOutDir=$(cd $OUTPUTS/$Org/$Impl; pwd)
          for InstancePath in $ImplPath/*.td.jsonld ; do
             if [[ -f $InstancePath ]]; then
                export InstanceFile=$(basename $InstancePath)
                # need to strip off *two* suffixes to get instance name...
                export Instance=$(basename $InstanceFile .td.jsonld)
                echo ">>>>> Processing instance $Org/$Impl/$Instance"
                echo "       in $InstancePath"
                echo "process $InstancePath $AbsOutDir/$Instance.csv"
                process $InstancePath $AbsOutDir/$Instance.csv
                echo "<<<<< $Org/$Impl/$Instance processed"
             fi
          done
          Inputs=($AbsOutDir/*.csv)
          if [[ -f $AbsOrgDir/$Impl.csv ]]; then
            Inputs=($AbsOrgDir/$Impl.csv "${Inputs[@]}")
          fi
          echo "merge $Inputs $AbsOutOrgDir/$Impl.csv"
          merge $Inputs $AbsOutOrgDir/$Impl.csv
          echo "<<<< $Org/$Impl processed"
       fi
    done
    echo "<<< $Org processed"
  fi
done
echo "<< Done processing"
