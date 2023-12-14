#!/bin/zsh

# Search through the first level directory
for f in ./*/*
do
	# Extension of the files that we want to move
	if [[ "$f" == *".txt"* ]]
	then
		# Destination directory
		mv $f ./
	fi
done	
