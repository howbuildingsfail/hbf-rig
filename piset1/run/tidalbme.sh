#!/bin/bash

#TODO: have a `reconnect' argument that'll use the 



#Load the midi surface map
#cp ~/Desktop/Dropbox/sjh/Tightrope/scripts/bristolmidisurfaces/BME700 ~/.bristol/memory/profiles/BME700	

#LETS ASSUME WE DON'T NEED TO DO THIS AS IT EXISTS
#cp BME700mem/BME700 ~/.bristol/memory/BME700

#Remove any existing memory files - that way we'll start with the default
rm -f ~/.bristol/memory/BME700/BME700*.mem

echo "installing BME700 memories from BME700 folder"
#for i in `seq 1 8`; 
#do
#	#echo "installing memory location $i from presets"
#	#cp ../presets/BME700/BME700$i.mem ~/.bristol/memory/BME700/BME700$i.mem 
#	cp BME700/BME700$i.mem ~/.bristol/memory/BME700/BME700$i.mem 
#done


cp ./BME700mem/BME700?.mem ~/.bristol/memory/BME700

#Copy the midi mappings:
cp ../presets/BME700/BME700 ~/.bristol/memory/BME700


startBristol -bme700 -channel      1 -jack -midi seq -register tBME -voices 1 -load 5  -gain 3&
sleep 4

# connect to jack - for live, we only want to connect to one channel
  jack_connect BME700:out_left system:playback_1
#  jack_connect BME700:out_right system:playback_2


#if `reconnect'

if [ "$1" = "reconnect" ]; then 
    echo "Reconnecting to seq24" 
    aconnect seq24:1 BME700:0
else
    echo "Not reconnecting to seq24"  
fi;










