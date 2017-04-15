
# Launch Hydrogen
hydrogen -s hydrogensetup.h2song &
sleep 4

#TODO: Get the channels set up correctly for this:

# connect to jack
  jack_connect Hydrogen:out_L 		system:playback_1
  jack_connect Hydrogen:out_R	 	system:playback_2
  #headphones: 
  #jack_connect Hydrogen:out_L 		system:playback_3
  #jack_connect Hydrogen:out_R	 	system:playback_4
