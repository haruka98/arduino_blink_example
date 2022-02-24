#include "logic.h"

void logic() {
	PORTB |= (1 << PORTB5);
	_delay_ms(1000);
	PORTB &= ~(1 << PORTB5);
	_delay_ms(1000);
}
