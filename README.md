#WiringPi for Perl

WiringPi: An implementation of most of the Arduino Wiring functions for the Raspberry Pi

#Quick Build

##Requirements

`sudo apt-get install swig2.0 libperl-dev`

##Building

Clone this repo: `git clone http://github.com/wiringpi/wiringpi-perl`

Enter the directory: `cd wiringpi-perl`

Run the build script: `./build.sh`

##Testing

Run `./test.pl` to import and test the module by reading the pull-up on an i2c pin.

Use `sudo perl -d -e 1` to play with the library in interactive mode.

#Note

This is a wrapper around Gordon Henderson's WiringPi, full details of the library here: http://www.wiringpi.com

