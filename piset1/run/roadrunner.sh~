#!/bin/bash


# The following strategy means that we capture any changes without having to do anything else to set up, as long as we save a memory (double-click on the 
# Copy memfiles to dropbox backup to catch any saves from the previous session.. ..and back again
#for i in `seq 1 8`; 
#do
	#echo "backing up memory location $i"
	#cp ~/.bristol/memory/BME700/BME700$i.mem  ~/Desktop/Dropbox/sjh/Tightrope/presets/BME700$i.mem
	#cp ~/Desktop/Dropbox/sjh/Tightrope/presets/BME700$i.mem ~/.bristol/memory/BME700/BME700$i.mem   
#done

# THE FOLLOWING LINES ARE FOR BRISTOL VERSION XXX ON CYBULA LAPTOP
## Launch & connect Bristol BME700 
##             bme700  midi channel 2                named BME700, load memory file 4
#startBristol -bme700 -channel      2 -jack -midi seq -register    BME700 -load 5  -quiet -gain 3&
#sleep 4
## connect to jack
#  jack_connect BME700:out_left system:playback_1
#  jack_connect BME700:out_right system:playback_2
#  #headphones: 
#  jack_connect BME700:out_left system:playback_3
#  jack_connect BME700:out_right system:playback_4


# THE FOLLOWING LINES ARE FOR BRISTOL VERSION 0.40.8-1 ON CYBULA LAPTOP
# Launch & connect Bristol BME700 
#             bme700  midi channel 2                named BME700, load memory file 4
startBristol -roadrunner -channel 1 -jack -midi seq -register roadrunner -voices 4 -load 5  -gain 5&
sleep 4
# connect to jack
  jack_connect roadrunner:out_left system:playback_2
  jack_connect roadrunner:out_right system:playback_2
  #headphones: 
#  jack_connect roadrunner:out_left system:playback_3
#  jack_connect roadrunner:out_right system:playback_4
