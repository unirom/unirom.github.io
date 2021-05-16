## Hidden Button Combos

- R1 to boot the cart
- Square to toggle fast/slow serial comms. (115200 vs 518400)
- L1 + Square to enable [Debug Mode](/debugger/#debug-mode)
Placeholder.

## PC-Side serial tools

The serial tool to connect to PC is called NOTPSXSerial, or "nops" for short.
[NOTPSXSerial](https://github.com/JonathanDotCel/NOTPSXSerial) (aka "nops").

- It's included with the boot disc by default.
- You'll need a standard USB to UART dongle. They're like 4 dollars on Amazon.
- It's included with the boot disc by default.
- Works fine on Mac and Linux using mono.

>Can I use the parallel port?

Nah, unlikely. It's clunky, awkward, most carts need a voltage level adapter and it's 2021.

### Supported functions:

- Upload + Run an .exe
- Upload arbitrary binaries
- Flash .ROM files to your carts
- Write memcards (including FreePSXBoot [FreePSXBoot](bit.ly/freepsxboot))
- Dump memcards
- Dump RAM
- Watch RAM
- Poke RAM
- Read, Write, Access Breakpoints
- Call/Jump to addresses
- Enter/Exit kernel debug mode

This is not an exhaustive list. See the nops docu for more info.

# Hex Editor

- L1 / R1 = back and forward 1 page
- L1 / R1 + Triangle = back and forward a bit further
- L1 / R1 + Square = back and forward even further

- R2 = cycle beteween RAM, EEPROM, BIOS, etc

- X = edit byte

- L2  = Enter an address manually
(hint: get somewhere close via R2 first to save time)

- Start / Sel = Execute the code starting at the cursor

- Circle = Exit




