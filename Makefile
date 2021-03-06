all:
	avr-gcc -c -Os -mmcu=atmega328p -DF_CPU=16000000L main.c logic.c
	avr-gcc -o main.bin main.o logic.o
	avr-objcopy -O ihex -R .eeprom main.bin main.hex
	avrdude -C"C:/Program Files (x86)/Arduino/hardware/tools/avr/etc/avrdude.conf" -v -patmega328p -carduino -PCOM3 -b57600 -D -Uflash:w:main.hex
