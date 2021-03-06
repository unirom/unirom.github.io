## Mod-free booting

Once unirom has booted (from memcard or via flash cart), it will unlock the drive via nocash unlock* meaning you can play imports and stuff without needing to swap discs.
Except on Japanese units. For those you can use a modchip, xStation, etc or just stop the disc as described below:

- boot with a black disc in
- go to the boot menu and hit "stop disc"
- swap discs
- don't look at the fucking laser
( it'll be deactivated, but incase it isn't for whatever reason, don't fucking look at it)
- put your other disc in and boot as normal.

> It's not working!

Someone's probably solved it: [Troubleshooting](/#troubleshooting)



note*: some nicolases don't like the term "nocash unlock"

## PAL/NTSC switch / region override

Allows you to force the video mode of a game to PAL or NTSC.

- PAL->NTSC will be the slightly higher PAL resolution with the slightly higher NTSC framerate.
- NTSC-PAL will be the slightly lower NTSC resolution with the slightly lower PAL framerate.

There's a clear winner there.

>Help! It's black and white!

Some hardware just can't handle the slightly off-spec video output from one machine doing the other's output.  
You can use a better scaler, DFO mod, etc or just enjoy it like an old black n white movie.

Note: This feature is unlikely to work with homebrew that doesn't use the official PSYQ SDK.


# File Browser

The file browser lets you poke around for files on the CD.  
Valid file types are detected by their headers.

### ROMS

Flash ROMs to cart exactly like any other method.

### Memcard Images

Any valid (raw) memory card dump can be written to mem cards

### .EXE

Load and Exec from CD.

### Other

If the file type is not recognised, unirom will fire up the hex editor.

# Card Manager

The card manager offers a few improvements over the stock manager.

- It's faster
- You can undelete files
- It highlights invalid files
- You can work with FreePSXBoot cards and format them.
- You can flick through virtual cards on a Memory Card Pro

If you're having trouble with a particular memory card, do let me know, with a photo of the card (preferably with the shell off).

#### Note: not all deleted files can be restored  
For example if the file was part of a 3-block save, and some parts of the block have been over written.




