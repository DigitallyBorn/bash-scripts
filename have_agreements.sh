#!/bin/bash
cat $1 | while read line; do
	[[ $line =~ (([^,\n]*)[,\n])* ]]
	
	echo "${BASH_REMATCH[1]}"
done