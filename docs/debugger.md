

Note: the docu for debugging via nops will eventually move to this page as features are completed.

## Debug Mode

You can enter debug mode via `L1 + Square` or running `nops /debug`
This will install the SIO handler to the kernel area of memory and allow you to use nops while a game's running.
It also lets you upload an .exe over itsself, which can be incredibly useful for debugging.

Fore more specific information, see the nops docu: [NOTPSXSerial](https://github.com/JonathanDotCel/NOTPSXSerial) (aka "nops").


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


