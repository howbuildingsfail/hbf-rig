#!/bin/bash

# Start Jack audio server
/usr/bin/qjackctl -s & 
sleep 3

if [ $1 = "rec" ]; then
	##TODO: need an 'if' around these depending on whether we've got hardware or not. 
	#hydrogen
	. ./hydrogen.sh
	#crumar roadrunner on channel 1
	. ./crumar1.sh
	#bme700
	. ./bme700.sh

	# Launch and connect yoshimi
	. ./yosh.sh

fi



#seq24 &
cd ./set
#~/git/seq24plus/src/seq24plus -X setx.pls &
~/git/seq24plus/src/seq24plus &
cd ..
sleep 3





############################################################

#connect direct to the drum m/c
aconnect seq24:0 CH345:0
#aconnect seq24:0 Hydrogen:0

aconnect seq24:1 BME700:0
aconnect seq24:5 yoshimi-yg:0

#connect to the Volca Keys:
aconnect seq24:15 'USB Midi':0
aconnect seq24:6 'USB Midi':0

#connect the fuzzbox
echo "connecting fuzzbox to seq24"

##Fuzzbox (beware: the stab control has interfernce from the pi
#too experimental for 19/07/17, sadly...
#ttymidi -s /dev/ttyUSB0 -b 38400 -n fzbx &
#sleep 1
#aconnect seq24:12 'fzbx':1



