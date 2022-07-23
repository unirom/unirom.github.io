# Unirom Home

## Bootdisc, Firmware, Shell for PSX

Custom Xplorer, Action replay and cheat cart firmware, bootdisc, import player, region switcher, FreePSXBoot installer, Memcard manager, kernel resident debugger...

## At a glance:

You can boot Unirom from disc, a memory card, or a cheat cartridge.

Typically:

- >You burn the bootdisc and launch Unirom from it.
- >Unirom can then install itsself to memory card or cheat cart.
- >You can now boot from memory card or cheat cart instead if you want.

Installing to a *cheat cart* lets you boot in about a second, and dual boot Caetla.

Installing to a *memory card* + FreePSXBoot allows you to use models with no parallel port: PSOne, SCPH9000, etc.


>How do I install it?  
[Installing from CD](/installation/#installing-from-cd)
#### 
>I'm having problems!  
[Troubleshooting](#troubleshooting)

For PC-side serial upload/dumping/TTY/debugging see [NOTPSXSerial](https://github.com/JonathanDotCel/NOTPSXSerial) (aka "nops").


## Features / Help Topics:

- [Mod-free booting](/usage/#mod-free-booting)
- [PAL/NTSC region override](/usage#/palntsc-switch-region-override)
- [File Browser](/usage/#file-browser)
- [File Browser](/usage/#card-manager)

- [ROM Flashing](/installation/#rom-flashing)
- [Installing to Memory Card](/installation/#installing-via-freepsxboot) (via FreePSXBoot)
- [Restoring original EEPROMS](/installation/#restoring-roms)


- [PC-Side serial tools](/advanced/#pc-side-serial-tools)
- [Hex Editor](/advanced/#hex-editor)
- [Hidden Button Combos](/advanced/#hidden-button-combos)

## Troubleshooting

>Help, it's not booting my game!
#### 
>My game is super jerky!
####
>My laser is kinda noisy, doesn't sound healthy!

1. Make sure you grab a good redump copy of the disc (not some crappy ECM'd rip from a random site)
2. Try another burner (some discs prefer some burners)
3. Burn it at low speed
4. Use good quality discs. "Verbatim" is generally good.
5. Try on another machine
6. Is the disc clean?
6. But like... did you *really* check?

> Still not booting!

Okay, at a minimum I need to know:

- How are you booting the machine (cheat cart, boot CD, freePSXBoot etc)
- What model is the machine?
- What game?
- What region is the game from?
- What burner did you use?
- Is the disc clean?
- What brand of disc did you use?
- Does your PC read the disc?
- Is the machine modded?
- Is the laser making any noises?

Don't forget the info above!

## Thanks

Big thanks to Nicolas Noble for putting together this mkdocs template + build scripts!

## Developers

If you're interested in PSX development in general, drop by the psx.dev discord at [http://PSX.dev](http://psx.dev)

