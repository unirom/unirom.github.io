# Debugging with NOPS

### Note:
Nops features some barebones, basic commandline debugging functionality.
While these features are useful and stable, it might be worth your time to see the [Debugging with GDB](/debug_gdb) page instead, which offers multiple breakpoints, stepping through soruce, monitoring variables, etc.

### Debug mode basics.

When Unirom is put into debug mode, it installs a copy of the serial routines into kernel memory meaning that you can continue to issue serial commands with nops, even after launching games/homebrew etc.

As you can imagine, this is incredibly useful for developement as it lets you write your running .exe over itsself over and over.

Most of the regular nops command set is supported, with the exception of e.g. rom flashing.

### How debug mode?

You can enter debug mode via `L1 + Square` or running `nops /debug`
This will copy the SIO handler to kernel memory as mentioned. From here you can boot games, etc.


### See also:

nops' own documentation: [NOTPSXSerial](https://github.com/JonathanDotCel/NOTPSXSerial) (aka "nops").

<br>
## The 'Halt State'

The halt state is your basic debugging break.
There are 3 ways to enter the halt state:

### 1: Via the commandline: 
Running `nops /halt` will trigger an interrupt.

### 2: A game crashed
Like /halt, this will trigger an exception.


### 3: You set a breakpoint
You've set a read/write/execute breakpoint, and that's been triggered.

In all 3 cases, the kernel debug mode sio handler (which now sits in the kernel) will catch the event and hold the PSX in a tight loop, waiting for instructions.

To exit the halt state, issue:
`nops /cont`

If your software has legitimately crashed, it might not recover, but if you triggered the halt state via `/halt`, or a hook, it will be fine.

### Note:
With kernel debug installed, the machine is put into a temporary halt state while you do stuff like upload or download binaries.
However:
If you intend to upload or download several binaries for example, you might want to manually run `nops /halt` first, then undo that after so that your game doesn't try to execute between uploads/downloads.

### Note:
With kernel debug installed, you won't see the normal unirom guru meditation screen when something goes wrong.
if you've run nops with the `/m` (monitor) command though, it will say something along the lines of "PSX has crashed" and offer you a look at the saved registers.

## Registers:

#### This shows the registers the instant the PSX entered the halt state:
`nops /regs`

#### Changing a register's value:
`nops /setreg v0 0x1F801800`

#### This example will reboot the psx when you run `nops /cont` by moving the PC:
`nops /setreg pc 0xBFC00000`

Note that `/setreg` will only work in the halt state!

## Hooks:

Hooks trigger the halt state on read, write or execution of a specific address.

* `nops /hookread 0xADDR`
* `nops /hookwrite 0xADDR`
* `nops /hookex 0xADDR`

These use the coprocessor hooking mechanism, so if you're after something a little more in-depth, remember to check out [Debugging with GDB](/debug_gdb)
 
<br>
# Debug Command Examples

As you should already know (because you've been reading every word super carefully, right?) start with:

 - ` nops /debug`
 - or  `L1 + Square`

An int-driven SIO handler has now been installed into the kernel, and can talk to nops once you start a game, etc.
The command set is basically the same as for regular SIO.

## Example: Breakpoint on a particular location

Yo can do these two in whatever order:

- `nops /debug`
- `nops /bin 0x80030000 something.bin`

Now apply the hook

- `nops /hookex 0x80031234`

And execute the binary

- `nops /jal 0x80030000 /m`

When your program runs from 0x80030000 to 0x80031234, nops will say something to the effect or "The psx has halted...". 


### Hint!
Don't forget the `/m`
This will put nops into `monitor mode`.
Monitor mode will detect when the system has halted, and offer a debug menu.
From here you can dump ram, change registers, etc.

## Example: Memory breakpoint on an exe

Again, you have some flexibility here - but you'd best enter debug mode before uploading the .exe!

- `nops /debug`
- `nops /hookread 0x80041234`
- `nops /exe myfile.exe`

or if you want to go a bit faster:

- `nops /fast /debug`
- `nops /fast /hookread 0x80041234`
- `nops /fast /exe myfile.exe`


### A reminder on /fast /slow
You've specified `/fast`. Next time you start nops, it has no way of knowing if the ps is in fast mode or not.
So remember to use `/fast` on every command... or not at all!
You can switch back and forth in most cases with the following (If you're sick of typing it).

- `nops /fast`
- `nops /slow`
- Tapping `Square` from in unirom













