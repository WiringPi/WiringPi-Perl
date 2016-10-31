#!/bin/bash

echo "Generating bindings"
swig2.0 -perl wiringpi.i

CORE=`perl -MConfig -e 'print $Config{archlib}'`/CORE
WIRINGPI=WiringPi/wiringPi

echo "Building against: $CORE"

gcc -fpic -c -Dbool=char -I$CORE wiringpi_wrap.c \
$WIRINGPI/wiringSerial.c \
$WIRINGPI/wiringShift.c \
$WIRINGPI/wiringPi.c \
$WIRINGPI/softPwm.c \
$WIRINGPI/softTone.c \
-D_GNU_SOURCE

gcc -shared wiringPi.o \
softPwm.o \
softTone.o \
wiringSerial.o \
wiringShift.o \
wiringpi_wrap.o \
-o wiringpi.so
