#!/bin/bash

# Start Jack audio server
/usr/bin/qjackctl -s & 
sleep 2

# Start qseq66 TODO: may need some arguments to load a playlist...
qseq66 &


# Start ttymidi
ttymidi -s /dev/ttyUSB0 -b 115200 -n gran &

aconnect 'nanoKEY2':0 'gran':1
aconnect 'seq66':4 'gran':1



############################################################

#connect direct to the drum m/c
#aconnect seq24:0 CH345:0
#aconnect seq24:0 Hydrogen:0

#aconnect seq24:1 BME700:0
#aconnect seq24:5 yoshimi-yg:0

#connect to the Volca Keys:
#aconnect seq24:15 'USB Midi':0
#aconnect seq24:6 'USB Midi':0

#connect the fuzzbox
echo "connecting fuzzbox to seq24"

##Fuzzbox (beware: the stab control has interfernce from the pi
#too experimental for 19/07/17, sadly...
#ttymidi -s /dev/ttyUSB0 -b 38400 -n fzbx &
#sleep 1
#aconnect seq24:12 'fzbx':1



