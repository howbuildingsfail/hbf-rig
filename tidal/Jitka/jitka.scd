
// http://sccode.org/1-4Tq Dirty FM Shuffle
(
    SynthDef(\fmshuffle, {|out, freq, gate = 1, amp = 1, carFreq = 1000, modFreq = 100, modAmount = 2000, clipAmount = 0.1, pan |
        var modEnv = EnvGen.ar(Env.adsr(0.5, 0.5, 0.7, 0.1, peakLevel: modAmount), gate);
        var mod = SinOsc.ar(modFreq) * modEnv;
        var car = SinOsc.ar(freq + mod);
        var ampEnv = EnvGen.ar(Env.adsr(0.1, 0.3, 0.7, 0.2, peakLevel: amp), gate, doneAction: 2);
        var clip = clipAmount * 500;
        var sound = (car * ampEnv * clip).clip(-0.7, 0.7) * 0.1;
        OffsetOut.ar(out, DirtPan.ar(sound, ~dirt.numChannels, pan))
    }).add
);



SuperDirt.start



// first, initialize your midi device.
(
MIDIClient.init;
MIDIClient.list; // to check, which are there, you can query them
)


//Volca keys as kzz
~vmidi = MIDIOut.newByName("USB Midi", "USB Midi MIDI 1");
~dirt.soundLibrary.addMIDI(\kzz, ~vmidi);

//Kawai R-100 as r1d
~dmidi = MIDIOut.newByName("CH345", "CH345 MIDI 1");
~dirt.soundLibrary.addMIDI(\r1d, ~dmidi);