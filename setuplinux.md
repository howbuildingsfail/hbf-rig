
# Installing

If you've got a fresh Ubuntu install (these notes are for 20.04), you'll have a bit of work to do 

You'll have to install the following

- **qjackctl** including all the jack stuff: `sudo apt install qjackctl`. Make sure you say 'yes' to realtime scheduling - or fix it after install by following [https://jackaudio.org/faq/linux_rt_config.html].
- **bristol** download from sourceforge: [https://sourceforge.net/projects/bristol/]. This requires `gcc` to be installed:  `sudo apt install build-essential` will do this for you. You'll also need `libasound2-dev` and `libjack-dev` and `libx11-dev` for the GUI. You can then do `./configure`, but before you do a make, this page [https://linuxmusicians.com/viewtopic.php?t=17825] says you have to comment out the line `#include <alsa/iatomic.h>` in the file `libbristolaudio/audioEngineJack.c` before doing `make`. 
- **seq24/seq24plus** the former can be installed using `sudo apt install seq24`. For live sets, you'll need seq24plus so you can move between tracks via the spacebar. You'll have to edit `~/.seq24rc` to get the ALSA ports for connecting up to midi: set [manual-alsa-ports] to 1
	
