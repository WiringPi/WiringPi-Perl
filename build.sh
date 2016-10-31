gcc -fpic -c -Dbool=char -I/usr/lib/perl/$(perl -v | grep \(v | cut -d "(" -f 2 | cut -d ")" -f 1 | sed -e 's/v//')/CORE wiringpi_wrap.c WiringPi/wiringPi/wiringPi.c -D_GNU_SOURCE
gcc -shared wiringPi.o wiringpi_wrap.o -o wiringpi.so
