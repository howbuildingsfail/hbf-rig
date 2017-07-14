#!/bin/bash

#trying to use environment variables to prevent running the startup script twice
#when using VNC on the rpi

if [ $1 = "reset" ]; then
	unset HBF_NO2

else
	if [ $HBF_NO2 = 1 ]; then
		echo "HBF_NO2 is already set"
	else
		echo "HBF_NO2 is not set"

		export HBF_NO2=1
	fi
fi


