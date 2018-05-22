# ttymidi

http://mkctbbq.blogspot.co.uk/2014/12/installing-ttymidi-on-ubuntu-studio.html

The ttymidi program makes a virtual MIDI device that converts signals from a serial connection into MIDI notes. This can be used to create Arduino builds that can control synthesizers on the computer. It's pretty neat: 

    wget http://www.varal.org/ttymidi/ttymidi.tar.gz
    tar -xfz ttymidi.tar.gz
    cd ttymidi
    sudo apt-get install alibsound2-dev

Then I had to add -lpthread to the install arguments in the Makefile so 

    nano Makefile

    all:
      gcc src/ttymidi.c -o ttymidi -lasound -pthread


Then you can install it 

    make
    sudo make install

Now I connected my Arduino. First I had to make the serial port readable for everyone: 

    sudo chmod a+rw /dev/ttyUSB0

Then I could connect my Arduino Nano which had the MIDI program running and start the MIDI bridge 

    ttymidi -s /dev/ttyUSB0 -v -n Arduino

Now I can go to patchage and connect the Arduino device to what programs I wish:
