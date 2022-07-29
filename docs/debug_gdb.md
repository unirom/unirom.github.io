# Debugging with GDB

Thanks to the hard work of Skitchin on [http://psx.dev Discord](http://psx.dev), [nops](https://github.com/JonathanDotCel/NOTPSXSerial) can act as a bridge between GDB and the PSX.

You are able to step through and debug commerical games, or your own code in the GDB or VSCode.

- GDB connects to nops via sockets.
- Nops connects to the PSX/Unirom via serial cable.

## Note:
This is still an beta in-development feature, so be sure to swing by the Discord and let us know how you got on, or hurl some abuse at @Skitchin.

<br>
# Installation

Download the nops + unirom beta package:
[https://github.com/johnbaumann/unirom.github.io/releases/download/8.0.Kish/nops.gdb_unirom_beta.zip](https://github.com/johnbaumann/unirom.github.io/releases/download/8.0.Kish/nops.gdb_unirom_beta.zip)

Other than, the nops/uni, you'll need a copy of gdb for your platform:

### Windows:
Easiest to use Nicolas Noble's prebuilt windows GDB (mips) binaries:
[https://static.grumpycoder.net/pixel/gdb-multiarch-windows/](https://static.grumpycoder.net/pixel/gdb-multiarch-windows/)<br>
Remember to add e.g. `c:\gdb-multiarch\bin` to your %PATH% viable!

### Linux/Mac:
Apt-get, brew, etc.

<br>
# Example flow

Let's pretend we're developing a Hello World example, we'll be using a modern version of GCC.
The following projects are suitable for building/testing/tweaking your own code.
They all include docker images, so you can use Docker and run dockerrun.bat/dockerrun.sh, dockershell.bat/dockershell.sh, etc or your own GCC setup.

PCSX Redux's 'nugget' tool chain, there's loads of example code:
[https://github.com/grumpycoders/pcsx-redux/tree/main/src/mips](https://github.com/grumpycoders/pcsx-redux/tree/main/src/mips)

A basic bare-ish metal demo with pads/gpu etc using the same toolchain:
[https://github.com/JonathanDotCel/helloworld_and_flappycredits](https://github.com/JonathanDotCel/helloworld_and_flappycredits)


## 1: Build your thing

Build your source and you'll generate an .elf and .exe file.
The .elf is more suitable for debugging, though if your setup doesn't provide that, don't worry - you just won't have access to all of the symbols, line numbers, etc.

## 2: Launch nops

Launch nops, and tell it to listen for GDB on a specific port.:

Something like this depending on your OS, speed, port, etc...

- `nops /fast /gdb 127.0.0.1:3333 COM14 /m`
- `nops /gdb 127.0.0.1:8888 /dev/tty.SLAB_USBtoUART`

Note: Nops will handle putting unirom into `/debug` mode so you don't have to.

## 3: Launch GDB and Upload (commandline version)

Might be worth getting the hang of the basics before using the VSCode version:

A: In the terminal:

- `gdb ./helloworld.elf`

B: (In GDB) Tell GDB where to find nops

- `target remote locahost:3333`

C: Load it and transfer to the PSX:

- `load`  
- (or `load helloworld.elf` if you forgot the filename in the first command)

The psx is now in a halted state with the program ready to run, but you can issue some commands before it starts.
`tbreak main` for example will set a temporary breakpoint at your program's "main()"

D: Done, run it!
`continue`

### Further examples:

Ex: If you had a temporary breakpoint set, chances are it will immediately break on that.
You could then do (for example)

- `layout asm`
- `layout source`

Ex: If you wanted to change the value at a particular address:

- `set {int}0x80010000 = 0`

Ex: to check register values:

- `info regs`

Ex: to check a value:

- `print main`

Ex: to step to the next instruction:

- `stepi`

And of course, to resume:

- `continue`

Once again cheers to Skitchin for his hard work on this feature!

For a full list of available GDB commands:
[http://davis.lbl.gov/Manuals/GDB/gdb_34.html#SEC636](http://davis.lbl.gov/Manuals/GDB/gdb_34.html#SEC636)


## 3: Launch GDB and Upload (via VSCode)

Create/modify the following vscode `launch.json` and put it here relative to your binary:
`.../yourproject/helloworld.elf`      <-- binary here
`.../yourproject/.vscode/launchjson`  <-- launch.json here

```
{

    "version": "0.2.0",
    "configurations": [
        {
            "type": "gdb",
            "request": "launch",
            "name": "(gdb) Launch My Hello World",
            "target": "./helloworld.elf",
            "gdbpath": "/usr/bin/gdb-multiarch",
            "windows": {
                "gdbpath": "C:/gdb-multiarch/bin/gdb.exe",
            },
            "cwd": "${workspaceRoot}",
            "autorun": [
                "target remote localhost:3333",
                "symbol-file ./helloworld.elf",
                "set substitute-path /project .",
                "load ./helloworld.elf",
                // this line for pcsx-redux only!
                "monitor reset halt",
                "tbreak main",
                "continue",
            ],
            "valuesFormatting": "parseText",
        }
    ]
}
```



