gcc -fpic -c -Dbool=char -I/usr/lib/perl/5.10.1/CORE wiringpi_wrap.c wiringPi.c -D_GNU_SOURCE
gcc -shared wiringPi.o wiringpi_wrap.o -o wiringpi.so
