#!/bin/bash
#
# Author: Simon Hickinbotham (after Murray Saul)s
# Date: May 15, 2010
# Revised: January 27, 2011

#switch to the local directory, otherwise we can't access the subscripts
cd ~/Desktop/Dropbox/sjh/Tightrope/scripts/live160625/

# Start Jack audio server
/usr/bin/qjackctl -s & 
sleep 5

#hydrogen
#. ./hydrogen.sh

#bme700
. ./bme700.sh

#crumar roadrunner on channel 1
#. ./crumar1.sh

# Launch and connect yoshimi
. ./yosh.sh

#Important to set up qtractor BEFORE seq24, or it effs up - and Transport mode must be set to 'none'
qtractor & 
sleep 5


#seq24 &
cd set
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


