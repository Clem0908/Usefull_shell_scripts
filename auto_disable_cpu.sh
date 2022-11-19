#!/bin/bash

var=0

while [ 1 ]
do
	var="$(cat /sys/class/power_supply/BAT0/capacity)"
	if [[ $var -lt 40 ]] 
	then
		sudo chcpu -d 2-15
	else
		sudo chcpu -e 2-15
	fi
	sleep 30
	clear
	sleep 30
done
