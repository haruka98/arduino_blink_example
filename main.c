#include <avr/io.h>
#include <util/delay.h>

#include "logic.h"

int main(int argc, char* argv[]) {
	DDRB |= (1 << DDB5);
	while(1) {
		logic();
	}
	return 0;
}
