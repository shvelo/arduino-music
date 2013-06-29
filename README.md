Arduino Music
===

Generator currently works with Windows.
Copy the `Playtune` folder from `libraries` to your Arduino `libraries` folder.

Generating a sketch:   
`ruby generate.rb file.mid`

This will make a directory with the sketch in it, just open with Arduino IDE and upload.

Connecting:
```
The easiest way to hear the music is to connect each of the output pins to a resistor
(500 ohms, say).  Connect other ends of the resistors together and then to one
terminal of an 8-ohm speaker.  The other terminal of the speaker is connected to
ground.  No other hardware is needed!  If you are going to connect to an amplifier,
you should DC-isolate the signal using a capacitor.
```
From https://code.google.com/p/arduino-playtune/


Includes:   
PlayTune from https://code.google.com/p/arduino-playtune/
MidiTones from https://code.google.com/p/miditones/