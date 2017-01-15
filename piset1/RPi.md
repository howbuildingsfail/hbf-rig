
#ip address

Easiest way at home is to use my bt homehub browser gui: 

http://192.168.1.254/0000013200/gui/#/home/myNetwork/devices

rasbpi site tells how to set ip via the gui - so new ip is 192.168.1.222

#ssh

This was a problem. 

Tried this first:

http://raspberrypi.stackexchange.com/questions/15192/installing-raspbian-from-noobs-without-display

but access denied - because ssh disabled now by default because of hackers. 

tried:

https://www.raspberrypi.org/blog/a-security-update-for-raspbian-pixel/

..and it worked!

new pw for pi is:

hbf2222

...security should probably be attended to - see: 

http://blog.self.li/post/63281257339/raspberry-pi-part-1-basic-setup-without-cables

#vnc

Downloaded from:

https://www.realvnc.com/download/viewer/

it's in ~/software/VNC.... - an executable...

#wifi

We need this so we can sit the pi next to the laptop and not use an ethernet cable. 

https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md

"The Black Pig" 
"D3mon-aid-dumb"

#audio





#synths

##yoshimi

had a few goes at installing yoshimi. Downloaded the latest version (2017/01) - ccmake didn't work - compile didn't work - so I've got 1/2 way down the installation route on these unnecessairly. In the end, `sudo apt-get install yoshimi` worked for me! The website says nothing about this... so now I have yoshimi 1,2,4 installed. 







