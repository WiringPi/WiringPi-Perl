#!/bin/bash

echo "Generating bindings"
swig2.0 -perl wiringpi.i

CORE=`perl -MConfig -e 'print $Config{archlib}'`/CORE

echo "Building against: $CORE"

gcc -fpic -c -Dbool=char -I$CORE wiringpi_wrap.c WiringPi/wiringPi/wiringPi.c -D_GNU_SOURCE
gcc -shared wiringPi.o wiringpi_wrap.o -o wiringpi.so
