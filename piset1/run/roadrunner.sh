#!/bin/bash

#see bme700.sh for notes
for i in `seq 1 10`; 
do
	echo "installing roadrunner memory location $i from presets"
	cp ../presets/roadrunner/roadrunner$i.mem ~/.bristol/memory/roadrunner/roadrunner$i.mem 
done
#Copy the midi mappings:
cp ../presets/roadrunner/roadrunner ~/.bristol/memory/profiles/roadrunner

sleep 2


# THE FOLLOWING LINES ARE FOR BRISTOL VERSION 0.40.8-1 ON CYBULA LAPTOP
# Launch & connect Bristol BME700 
#             bme700  midi channel 2                named BME700, load memory file 4
startBristol -roadrunner -channel 1 -jack -midi seq -register roadrunner -voices 4 -load 3  -gain 5&
sleep 4
# connect to jack
  jack_connect roadrunner:out_left system:playback_1
  jack_connect roadrunner:out_right system:playback_2
  #headphones: 
#  jack_connect roadrunner:out_left system:playback_3
#  jack_connect roadrunner:out_right system:playback_4
