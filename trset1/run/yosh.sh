#!/bin/bash

#Whatever you want the Yamaha keyboard to drive has to be channel 1.

#yoshimi -a -l zyn.xmz -L zyn.xiz -N yz&
#sleep 4

yoshimi -a ~/Desktop/Dropbox/sjh/Tightrope/scripts/live141101/gahparams.xmz -L ~/Desktop/Dropbox/sjh/Tightrope/scripts/live141101/gah.xiz -N yg &
sleep 4


# connect to jack audio
#  jack_connect yoshimi-yz:left system:playback_1
#  jack_connect yoshimi-yz:right system:playback_2
  jack_connect yoshimi-yg:left system:playback_1
  jack_connect yoshimi-yg:right system:playback_2
  #headphones: 
#  jack_connect ZynAddSubFX_1:out_1 system:playback_3
#  jack_connect ZynAddSubFX_1:out_2 system:playback_4
