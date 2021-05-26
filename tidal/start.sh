#!/bin/bash




# Start Jack audio server
/usr/bin/qjackctl -p USBaudio  & 
sleep 5


# Start seq24 so we can test the MIDI..!
#seq24 & 
#sleep 2


# Start supercollider
#scide &
#sleep 4





# Start atom
#atom &
#sleep 4




