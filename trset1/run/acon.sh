#!/bin/bash

#aconnect seq24:0 USB2.0-MIDI:0
aconnect seq24:0 Hydrogen:0

aconnect seq24:1 BME700:0
#aconnect seq24:2 HammondB3:0
#aconnect seq24:3 yoshimi-yz:0
aconnect seq24:5 yoshimi-yg:0
aconnect seq24:6 roadrunner:0

#connect to the Volca Keys:
aconnect seq24:15 'USB Midi':0

