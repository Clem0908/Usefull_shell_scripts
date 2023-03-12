#!/bin/bash

var=0

while [ 1 ]
do
	var="$(cat /sys/class/power_supply/BAT0/capacity)"
	if [[ $var -gt 80 ]]
	then
		notify-send --app-name='Batterie chargée' --urgency=critical '80% : Veuillez débrancher le chargeur.'
	elif [[ $var -lt 30 ]]
		notify-send --app-name='Batterie faible' --urgency=critical '30% : Veuillez brancher le chargeur.'
	fi
	sleep 60
done
