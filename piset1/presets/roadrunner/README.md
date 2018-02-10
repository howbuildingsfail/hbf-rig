
#Main Panel

##Memories: 101-106

3/2		Black - Not Working
3/3		Grey
3/4		Blue
3/5		Green
3/6		Yellow 
3/7 	White

##Tone pots etc. 48-49

There's no documentation on these, but I did read something about these controls somewhere
basically

3/11	Midi top left
3/10	Midi bottom left
3/0		Bass
3/1		Treble
3/13	Save
3/12	Control Switch

##Bottom sliders 50-53

4/0		Tone
4/1		LFO
4/2		Vibrato
4/3		Volume

##Control panel: 16-28, then 32-40

0/0		Detune
0/1		PW
0/2		PWM

0/9		Decay
0/10	Release

0/11	Touch

0/3		Bass 1
0/4		Bass 2
0/5		Middle 1
0/6		Middle 2
0/7		Treble 1
0/8		Treble 2

0/21	LFO

0/12 	Tremelo

0/18	Reverb l
0/19	Reverb m
0/20	Reverb r
0/13 	Wet

0/14	Chorus l
0/15	Chorus m
0/16	Chorus r
0/17	Wet


#DEBUGGING

The commands above *should* work, but there are problems - like this: 

19 - Decay(0/9) seems to control PWM, Release, Touch, Both Bass, left middle and volume (in reverse) - is this a channel 19 thing? Seems to be because if we change this to 59, then Decay works..


32 - Tremolo (0/12) - no effect

38 - The following messages appeaer at the console
		Aug 29 11:46:35 brighton [997.925415] midi callback: 0, 64
		Aug 29 11:46:35 brighton [997.925476] midi banksel: 0, 64

37,39,40 - Does control 'chorous wet' - but only seems to set value to zero

##Panel

There is no info on what the buttons





