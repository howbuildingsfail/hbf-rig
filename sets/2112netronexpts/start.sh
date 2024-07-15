#!/bin/bash
#
# Author: Simon Hickinbotham (after Murray Saul)

# Start Jack audio server
echo "starting qjackctl"
/usr/bin/qjackctl -s & 

# bme700
echo ""
. ./countdown.sh "starting bme700 in" 10
echo ""
. ./bme700.sh
sleep 1

# crumar roadrunner on channel 1
echo ""
echo "starting crumar roadrunner"
echo ""
. ./rr1.sh
sleep 1

# Launch and connect yoshimi
echo ""
echo "starting yoshimi"
echo ""
. ./yosh.sh

# Drum machine 
# Launch ttymidi (add -v for verbose output)
#echo ""
echo "starting arduino drum machine"
#echo ""
ttymidi -s /dev/ttyUSB0 -b 115200 -n sr2020 &


# Start the sequencer & load the playlist 
# (we have to switch directories to make the playlist work!)
sleep 2
echo ""
echo "starting seq24plus"
echo ""
#cd ../../190828wc
seq24plus -X setlist.pls &
#gedit lyrics.md & 
#cd ../piset1/run/
sleep 3

############################################################

#hook the synths up to seq24:
#aconnect seq24:0 Hydrogen:0
echo ""
echo "making ALSA connections"
echo ""
aconnect seq24:1 BME700:0
aconnect seq24:3 Neutron:0
aconnect seq24:5 yoshimi-yg:0
aconnect seq24:6 roadrunner:0


#connect direct to the Kawai drum m/c
#aconnect seq24:0 USB2.0-MIDI:0
aconnect seq24:0 sr2020:1


#connect to the Volca Keys:
aconnect seq24:15 'USB2.0-MIDI MIDI 1':0


#hook up the nanokeys
aconnect nanoKEY2:0 roadrunner:0


