
>Q: How do I install unirom?
#### 
A: Via Unirom!  
Boot up the boot disc and it'll let you copy itsself to your cheat cart or memory card.

### Without Mod Chip

- Download the bootdisc from [the unirom release page](https://github.com/JonathanDotCel/unirom8_bootdisc_and_firmware_for_ps1/releases/)
- Burn to CD using ImgBurn.
- Use the best CDRs you can find. A name brand like Verbatim tends to work no problem.
- Use the lowest speed your writer supports.
- Don't stare at the fucking laser
- Boot using the swap trick
- Don't stare at the fucking laser
- Go to "Install" on the main page
- Seriously, don't look at the fucking laser though.
- [More info on flashing to cheat carts:](/installation/#rom-flashing)
- [More info on flashing to mem cards:](/installation/#installing-via-freepsxboot)

### Using another cheat cart

There's a good chance your existing cheat cart can make the above swap easier:

- Jam down the lid sensor on your PSX 
- Put an original/black disc in
- Turn the machine on, and go to the file viewer, let it happen
- Back out of the menu
- The drive is now unlocked
- Don't look at the fucking laser
- Put the burned disc in the drive
- Don't look at the fucking laser
- Start the "game"
- [More info on flashing to cheat carts:](/installation/#rom-flashing)
- [More info on flashing to mem cards:](/installation/#installing-via-freepsxboot)

### Modded PS2 or PS3

- Grab the FreePSXBoot+Unirom images from: [FreePSXBoot](https://bit.ly/freepsxboot))
- Write them to a memory card.
- Profit?

### With Mod Chip, xStation, etc

- Just burn the CD and boot it: [Download page](https://github.com/JonathanDotCel/unirom8_bootdisc_and_firmware_for_ps1/releases/)
- Is my cheat cart supported? [Probably yes](#supported-cheat-carts)
- [More info on flashing to cheat carts:](/installation/#rom-flashing)
- [More info on flashing to mem cards:](/installation/#installing-via-freepsxboot)

### Supported Cheat Carts:

Almost all of them, even DIY franken carts.
It's only the jankiest of jank knockoffs that might not. And most jank knockoffs are fine.

#### Tested working:

- All Xplorer (V1, V2, V3, Pro, FX)
- All Datel (V1, V2, V3): Action Replay, Equalizer, GameShark, etc.
- Randos: Password Cart, Game Enhancer, Smart Cartridge, Gamars, EMS, Game Buster, etc

### Supported EEPROMs

Most if not all of the common 28 pin JEDEC varieties should be compatible at this point.  

Some carts cheaped out and used a ROM or a chip that was impossible to reprogram with the PS1's power supply (needing 12V mainly).  
In those cases, you can replace it with an other chip.

#### Compatible chips

Here is a list of currently supported chips, should you need to replace the one in your cart

| Brand | Model |
| --- | --- |
| AMD |  AM29F010 |
| ATMEL | 29C010A |
| ATMEL | 29LV010A |
| ATMEL | 29C020  |
| ATMEL | 29BV020 |
| ATMEL | 29C040A |
| ATMEL | 29xV040A |
| SST | 28SF040 |
| SST | 29EE010 |
| SST | 29xE010 |
| SST | 29EE010A  |
| SST | 29xE010A  |
| SST | 29EE020 |
| SST | 29xE020 |
| SST | 29EE020A  |
| SST | 2xEE020A |
| SST | 39SF020 |
| SST | 39VF040 |
| WINBOND | 29EE01x |
| WINBOND | 29C020 |
| WINBOND | 29C040 |
| SANYO | LE28C1001 |

#### Incompatible chips (need 12V) :

| Brand | Model |
| --- | --- |
| CSI | CAT28F010N |
| SST | M28F101 (reported as CAT28F010N)| 

# Rom Flashing

To install to a cheat cart, the installer will write over the existing ROM. You'll need the bootdisc in the drive for it to find the files.

All cheat carts are at least 128k. This will fit unirom standalone.

Some cheat carts have 256k or higher. These will allow you to dual boot unirom & caetla.

The installer will attempt to auto-detect your cart type and size. If you've frankensteined a cart together, or have an unsupported chip, you can try to use the 'manual' setup option, and tell it roughly what to try. Every EEPROM I've encountered in the wild is currently supported.

> It won't flash!

- Try unirom_standalone
- [Definitely start by updating to the latest version!](https://github.com/JonathanDotCel/unirom8_bootdisc_and_firmware_for_ps1/releases/)
- Go to the `status` screen and see if it has any sort of valid ID or name for your card
- Try forcing manual mode, 128k/256k from the manual cart detector

> I wanna make a backup!

- You can back it up via [nops](https://github.com/JonathanDotCel/NOTPSXSerial) if you care.
- Or you can restore most carts from the boot disc: [Restoring ROMS](/installation/#restoring-roms)



> Is my cheat cart supported?
#### 
[Probably yes](#supported-cheat-carts)



# Installing via FreePSXBoot

FreePSXBoot is the exploit (like FreeMCBoot for PS2) which allows you to boot unirom from the memory card.  
Unirom will automatically detect your playstation bios version and install the appropriate card image of the same version.

Many thanks to all of the FreePSXBoot contributers for their work on this!
The FreePSXBoot Project page can be found here: [FreePSXBoot on GitHub](bit.ly/freepsxboot))

If it's not working, please visit the above link and look for any special notes on your particular playstation model.  

> Then what?

- Start the PSX with the lid open (or no disc in).
- FreePSXBoot card in the left slot
- (Some playstations require any other card in the 2nd slot)
- Open the memcard manager
- You should get a progress bar...
- Unirom will load a few seconds later.

> Game crashes when I load it?

Take the exploit card out before booting the game.

> Nothing's happening

Right card? Right slot? Did you check out the advice on the [FreePSXBoot GitHub page](bit.ly/freepsxboot))?

> "Verify Failed" when installing

Some cheap memory cards would not contain as much memory as they'd claim, or were just a bit slow/useless all round.
Genuine, or good quality memory cards will be fine.

> Can I use a Memory Card Pro?

Yes!

# Restoring ROMS

You can restore most carts to their factory settings via this collection of ROMs on the boot disc.  
Access it via the `Install` menu.

The same general rules as [Rom Flashing](#rom-flashing) apply here.

If you have an XFlash CD, you can also use the XFlash option to read the data from one of those.

Many thanks to Squaresoft74 and kHn for maintaining this collection!
Also thanks to Shendo for allowing us to use [PS1CardLink](https://github.com/ShendoXT/ps1cardlink)!


## Which rom file is which?

### unirom_standalone.rom
The standalone version of the rom.
It's under 128k and fits on any old cart.

### unirom_withcaetla.rom
For 256k carts or bigger.
(The installer will let you know)
If your cart has enough space, you can install unirom and caetla side by side.

### unirom_datelv2_withcaetla.rom
The V2 versions of datel carts (not V1, not V3, etc, lol) have a weird memory map with a big gap in the middle. If you want to dualboot unirom + caetla, you'll need this.
If you don't want caetla, you could use the unirom_standalone.rom

Note: unirom will hijack the initial switch state.

