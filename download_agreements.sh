#!/bin/bash
cat $1 | while read line; do
	[[ $line =~ ([-a-fA-F0-9]+),([0-9]+),.* ]]
	userid=${BASH_REMATCH[1]}
	accountKey=${BASH_REMATCH[2]}
	echo "-> $BASH_REMATCH"
	aws s3 --profile prod cp "s3://mca.kabbage.com/$userid/" "./$accountKey/" --recursive
	sleep 0.1s
done