#!/bin/bash

#Whatever you want the Yamaha keyboard to drive has to be channel 1.

#yoshimi -a -l zyn.xmz -L zyn.xiz -N yz&
#sleep 4

yoshimi -a -l gahparams.xmz -L gah.xiz -N yg --no-cmdline &
sleep 4

# connect to jack audio
  jack_connect yoshimi-yg:left system:playback_1
  jack_connect yoshimi-yg:right system:playback_2
