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

"`Can I use the parallel port?`"
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



