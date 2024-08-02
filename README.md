# BASIC-Cowsay

Cowsay written in Sinclair BASIC for the TC 2048 (ZX Spectrum 48K Clone)

This repository contains:

* cowsay.bas: This is the source code in text of the program written in Sinclair BASIC
* cowsay.tap: This file is in "tape" format which can be read by ZX Spectrum emulators such as fuse.
* cowsay.wav: This is the program in audio format which can be used to load it into a real ZX Spectrum using your phone or an audio player connected to the "ear" input, just like a casette player would be connected.

## ASCII Art

By default the program uses cow art but this can be changed by changing "line" 110 in the .bas file.

```bqn
110 GO SUB <number>
```

Number options are:

* Cow (default): 4000
* Tux: 4100
* Llama: 4200
* Earth: 4300

So if I wanted the llama, I'd have to change line 110 to this:

```bqn
110 GO SUB 4200
```

## Screenshot

![Cowsay output using Fuse emulator](/screenshots/fuse_output.png?raw=true "Cowsay output using Fuse emulator")