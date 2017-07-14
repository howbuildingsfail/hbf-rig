#!/bin/bash

# Start Jack audio server
/usr/bin/qjackctl -s & 
sleep 5

if [ $1 = "rec" ]; then
	##TODO: need an 'if' around these depending on whether we've got hardware or not. 
	#hydrogen
	. ./hydrogen.sh
	#crumar roadrunner on channel 1
	. ./crumar1.sh
fi


#bme700
. ./bme700.sh

# Launch and connect yoshimi
. ./yosh.sh


#seq24 &
cd ../set
~/git/seq24plus/src/seq24plus -X setx.pls &
cd ..
sleep 3

############################################################

#connect direct to the drum m/c
aconnect seq24:0 USB2.0-MIDI:0
#aconnect seq24:0 Hydrogen:0

aconnect seq24:1 BME700:0
#aconnect seq24:2 HammondB3:0
#aconnect seq24:3 yoshimi-yz:0
aconnect seq24:5 yoshimi-yg:0
#aconnect seq24:6 roadrunner:0

#connect to the Volca Keys:
aconnect seq24:15 'USB Midi':0
aconnect seq24:6 'USB Midi':0


