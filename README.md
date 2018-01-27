# hbf-rig

```
pwd = synth band initials + (fruit2 * 11)
```



# VNC

## from ubuntu

Download the linux "standalone" version from https://www.realvnc.com/en/connect/download/viewer/

The file is called something like `VNC-Viewer-6.17.731-Linux-x64`. Make it executable using `chmod a+x`

Then you should be able to connect to the rpi. 


#2017, August: reorganising 

## MIDI channels

Time to sort out a few things. First thing is to fix midi channels: 

1. Drums (whatever they are - another thing to fix)
2. BME 700
3. Hammond
6. Yoshimi Gah synth
7. Crumar
13. FuzzFac
15. miniAtm
16. Volca

It might make things more consistent if these things **all** go out on the seq24 "meta-channel" 1..

The other cool thing about this is that I can try out the new `sequencer64` software.. that's for the future though

### Setting the MIDI channel on the volca: 

- hold down the `MEMORY` button and power up
- choose the channel on the keyboard
- press `STEP REC`

### Setting the MIDI channel on Bristol synths


### Setting the MIDI channel on Arduino synths


## Drum channels

Need to set drum channels to consistent values so that they work no matter what machine we are using. 


# touchosc

We've got touchosc control now - so we can manipulate midi surfaces live mainly. Here's how to get it running: 

## Connecting

To run on Linux, you need touchosc2midi [https://github.com/velolala/touchosc2midi]. Once installed you just enter `touchosc2midi` at the command line.

### installing

## The Layout

You can create a layout using TouchOSCEditor.jar - it's pretty intuitive
To upload, use the menu on TouchOsc on your phone - as long as you've got the ip address right and you're on the same network, this is a doddle: just press 'sync' on the menu bar and  load the current layout onto your phone by doint `layout->Add from editor` 




# Yoshimi

...doesn't seem to install correctly using `apt-get`. Cloned from github. 

Needed to install the following for the build: 

- cmake-curses-gui
-  libfftw3-dev 
- libmxml-dev
- libfontconfig-dev
- libcairo-dev
- libfltk1.3-dev
- libreadline-dev	




