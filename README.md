# 4 digits 7-segment decoder VHDL
## Description

The "4 digits 7-segment decoder VHDL" is a VHDL project designed to decode hexadecimal values and display them on 7-segment displays. Unlike a BCD (Binary-Coded Decimal) decoder (7447 for example), which only accepts numbers from 0 to 9, this decoder accepts values from 0 to F in hexadecimal. Thus, it can display numbers from 0000 to FFFF, corresponding to 0 to 65535 in decimal. 

## Features

* Hexadecimal Decoding: Capable of decoding values from 0 to F and displaying them on 7-segment displays.
* 4-Digit Display: Displays complete hexadecimal numbers on four 7-segment displays, allowing visualization from 0000 to FFFF.
* Display Multiplexing: Implements a logic for multiplexing the displays, where each display stays lit for 2.5ms while the other three are off, providing a continuous and readable display.
