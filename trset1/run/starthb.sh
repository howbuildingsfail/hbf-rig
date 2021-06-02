#!/bin/bash
#
# Author: Simon Hickinbotham (after Murray Saul)

# Start Jack audio server
echo "starting qjackctl"
/usr/bin/qjackctl -s & 
sleep 5

# bme700
echo ""
echo "starting bme700"
echo ""
#Remove any existing memory files - that way we'll start with the default
rm ~/.bristol/memory/BME700/BME700*.mem
cp ../wshb/BME700*.mem ~/.bristol/memory/BME700/ 
startBristol -bme700 -channel      2 -jack -midi seq -register BME700 -voices 1 -load 5  -gain 3&
sleep 5
# connect to jack - for live, we only want to connect to one channel
jack_connect BME700:out_left  system:playback_1
jack_connect BME700:out_right system:playback_2




## crumar roadrunner on channel 1
#echo ""
#echo "starting crumar roadrunner"
#echo ""
#. ./roadrunner.sh

## Launch and connect yoshimi
#echo ""
#echo "starting yoshimi"
#echo ""
#. ./yosh.sh


echo ""
echo "starting hydrogen"
echo ""
. ./hydrogen.sh
sleep 5



echo ""
echo "starting seq24"
echo ""
seq24  &
#cd ../run/
sleep 5

############################################################
#echo ""
#echo "setting up ttymidi for fzbx"
#echo ""

##as a precaution, kill any existing ttymidi processes..
#killall ttymidi
##then start it
# ttymidi -s /dev/ttyUSB0 -b 38400 -n fzbx &
#ALERT!!! midi baudrate should be 31250

############################################################
#echo ""
#echo "setting up touchosc"
#echo ""
#touchosc2midi &


############################################################

#hook the synths up to seq24:
#aconnect seq24:0 Hydrogen:0
echo ""
echo "making ALSA connections"
echo ""


aconnect seq24:1 BME700:0
aconnect seq24:0 Hydrogen:0
#aconnect seq24:5 yoshimi-yg:0
#aconnect seq24:6 roadrunner:0

#connect direct to the Kawai drum m/c
#aconnect seq24:0 USB2.0-MIDI:0
#aconnect seq24:0 CH345:0

#connect to the Volca Keys:
#aconnect seq24:15 'USB Midi':0

#connect the touchosc devices
#aconnect 'RtMidiOut Client':0 BME700:0
#aconnect 'RtMidiOut Client':0 yoshimi-yg:0
#aconnect 'RtMidiOut Client':0 fzbx:1



