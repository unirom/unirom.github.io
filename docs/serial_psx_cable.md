# USB to Serial PSX cable

This cable connects a PSX to a computer. If you combine this with a cart flashed with unirom, you can interract with the PSX from your computer, upload executables, access the console's memory...

## What you can use :

  * An  [FTDI FT232RL module](https://www.amazon.fr/gp/product/B0753GY7FR/) OR
  * An Arduino Uno **that supports 3.3V serial** OR
  * A [Raspberry Pi 0,1,2,3,4](http://wiki.arthus.net/?psxdev-rpi_serial_over_network) OR
  * A [Raspberry Pi Pico](https://discord.com/channels/642647820683444236/642848627823345684/853875808367149077) OR  
  * A [CP2102 or CP2104](https://www.amazon.com/WINGONEER-CP2104-Serial-Converter-compatible/dp/B01CYBHM26/)  
  
If you have these stuff lying around, this can help :

  * A PSX SCPH-1040 serial cable, or half a cable
  * A dead PSX motherboard that has a serial port, or just the SIO socket 
  * Dupont wires
  
# Connection

You only need 3 wires from the PSX : Tx, Rx and Gnd.

```  
PSX pins | FTDI pins
2        |     GND   
8        |     TX 
5        |     RX 
``` 

# Which controller can be used

## FTDI FT232RL

Connect PSX SIO pins  2, 5, 8 to the FTDI's Tx, Rx and Gnd. Done.

![FTDI to PSX](http://wiki.arthus.net/assets/ftdi-psx-pins.jpg)  

## 3.3V Arduino Uno  

Some arduino unos have a jumper to use 3.3V instead of 5V levels. You can use such a board with an additional resistor, like so : 

![Arduino 3.3V](http://wiki.arthus.net/assets//arduino-serial-psx.jpg)

Sources : http://www.psxdev.net/forum/viewtopic.php?f=47&t=760&p=19081

## Raspberry Pi

Either over your local network or via a direct lan cable setup, you can
use a rpi if you have one lying around.

Plug the PSX's serial output Rx/TX/Gnd to the GPIO14/pin 8 (Tx), GPIO15/pin 10 (Rx) and pin 6 (Gnd).

![RPI to PSX serial connection](http://wiki.arthus.net/assets/rpi-psx-gpio.jpg)

See here for the full solution : http://wiki.arthus.net/?psxdev-rpi_serial_over_network

## Raspberry Pi Pico

The new controller by Rpi foundation [can be used to](https://discord.com/channels/642647820683444236/642848627823345684/853875808367149077) with the Pico-uart-bridge firmware :  
https://github.com/Noltari/pico-uart-bridge/releases  

Use GPO 0/Pin 1 as Tx, GPO 1/Pin 2 as Rx and GPO 3/Pin 3 as Gnd :

![Rpi pico pinout](http://wiki.arthus.net/assets/rpi-pico-uart.jpg)

## CP2102 / CP2104  

The CP2102 and CP2104 are reported to work at least in /slow mode (115200 bauds).

![Rpi pico pinout](http://wiki.arthus.net/assets/cp2102-04-pinout.jpg)

## Others :

* CH341 is reported to work in /slow mode (115200 bauds)

# From the PSX to the controller

## Method #1 : Half SCPH-1040 cable

Hack the cable, connect things and voila :

![SCPH-1040](http://wiki.arthus.net/assets/link-usb-cable-scph1040-ftdi.jpg)

Sources :
http://www.psxdev.net/forum/viewtopic.php?f=62&t=349#p2592  
http://www.psxdev.net/forum/viewtopic.php?t=497#p3556  

## Method #2 : Salvaged PSX serial port + full SCPH-1040 cable

Use a salvaged PSX SIO port from a dead motherboard, and use your precious serial cable without destroying anything :

![Serial port](http://wiki.arthus.net/assets//serial-ftdi-1.jpg)

![Serial port](http://wiki.arthus.net/assets//serial-ftdi.jpg)

Source : http://www.psxdev.net/forum/viewtopic.php?t=744&sid=ff1cc884ceaaa4267404e61e81130320#p6524

## Method #3 : Dead or spare PSX motherboard + full SCPH-1040 cable

Same as above except you don't even have to hack the SIO port off the motherboard, just solder your wires directly underneath the SIO port.

![Serial motherboard](https://thp.io/2020/images/psxserial/psx-serial-pinout.jpg)

Sources : https://thp.io/2020/psxserial.html  

## Sources 

PSX Serial port pinout :  
https://www.problemkaputt.de/psx-spx.htm#pinouts  

Method #1 :  
http://www.psxdev.net/forum/viewtopic.php?f=62&t=349#p2592  
http://www.psxdev.net/forum/viewtopic.php?t=497#p3556  

Method #2 :  
http://www.psxdev.net/forum/viewtopic.php?t=744&sid=ff1cc884ceaaa4267404e61e81130320#p6524  

Method #3 :  
https://thp.io/2020/psxserial.html  
Méthode 4 : http://www.psxdev.net/forum/viewtopic.php?f=47&t=760&p=19081  
