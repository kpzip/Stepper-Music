/*
 * bsp.h
 *
 *  Created on: Apr 17, 2026
 *      Author: kyle
 */

#ifndef INC_BSP_H_
#define INC_BSP_H_

#include <stdint.h>

#include "main.h"

volatile uint32_t system_ticks = 0;

uint32_t board_millis() {
	return system_ticks;
}

size_t board_usb_get_serial(uint8_t id[], size_t max_len) {

	(void) max_len;

	volatile uint32_t *stm32_uuid = (volatile uint32_t *) UID_BASE;

	uint32_t *id32 = (uint32_t *) (uintptr_t) id;
	const uint8_t len = 12;

	id32[0] = stm32_uuid[0];
	id32[1] = stm32_uuid[1];
	id32[2] = stm32_uuid[2];

}

#endif /* INC_BSP_H_ */
