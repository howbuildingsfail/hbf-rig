#!/bin/bash

#Remove any existing memory files - that way we'll start with the default
rm ~/.bristol/memory/BME700/BME700*.mem

for i in `seq 1 8`; 
do
	str="BME700mem/BME700${i}.mem" 
	echo "Scanning for file ${str}"
	if [ -e "${str}" ];
	then
		echo "installing memory location $i from presets"
		cp BME700mem/BME700$i.mem ~/.bristol/memory/BME700/BME700$i.mem   
	else 
		echo "can't find file ${str}"
	fi;
done

startBristol -bme700 -channel      2 -jack -midi seq -register BME700 -voices 1 -load 5  -gain 3&
sleep 4

# connect to jack - for live, we only want to connect to one channel
jack_connect BME700:out_left  system:playback_1
jack_connect BME700:out_right system:playback_1


#if `reconnect'

if [ "$1" = "reconnect" ]; then 
    echo "Reconnecting to seq24" 
    aconnect seq24:1 BME700:0
else
    echo "Not reconnecting to seq24"  
fi;










