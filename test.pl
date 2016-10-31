#!/usr/bin/perl

# Borrowed from https://github.com/WiringPi/WiringPi-Perl/issues/4 - thank you ;)

use wiringpi;
use constant {
    OUTPUT=>1,
    INPUT=>0,
    HIGH=>1,
    LOW=>0
};

if( wiringpi::wiringPiSetup()==-1 ){
    die 1;
}

wiringpi::pinMode(8,INPUT);

print("Reading pin BCM 2 (SDA) which has a hardware pull-up\n");
print("result should be 1: ".wiringpi::digitalRead(8)."\n");
