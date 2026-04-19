/*
 * midi.c
 *
 *  Created on: Apr 17, 2026
 *      Author: Kyle Schmerge
 */

#include <stdint.h>
#include <string.h>
#include <math.h>

#include "midi.h"
#include "main.h"
#include "tusb.h"

#define CHANNEL_MASK(c) (c & 0b11110000)
#define CHANNEL(c) (c & 0b00001111)

#define MIDI_BUF_SIZE 10

volatile uint8_t midi_rx_buf[MIDI_BUF_SIZE] = {0};
volatile uint8_t midi_msg_buf[MIDI_BUF_SIZE] = {0};

#define NUM_STEPPERS 4

volatile int8_t stepper_current_notes[NUM_STEPPERS] = {0};
volatile uint8_t motor_queue[NUM_STEPPERS] = {0};

TIM_HandleTypeDef *const timer_lookup[8] = {&htim1, &htim2, &htim3, &htim4, &htim5, &htim9, &htim10, &htim11};

#define MIDI_MAX_NOTE 128

uint32_t midi_to_arr_table[MIDI_MAX_NOTE] = {0};

void motor_init() {

	for (size_t i = 0; i < MIDI_MAX_NOTE; i++) {

		double freq = 440.0 * pow(2.0, (((uint8_t) i) - 69) / 12.0);
		uint32_t arr_val = (HAL_RCC_GetHCLKFreq() / (PRESCALER * freq)) - 1;

		midi_to_arr_table[i] = arr_val;
	}

	for (size_t i = 0; i < NUM_STEPPERS; i++) {
		motor_queue[i] = i;
		stepper_current_notes[i] = -1;
	}

	HAL_GPIO_WritePin(SLEEP_GPIO_Port, SLEEP_Pin, GPIO_PIN_RESET);
	HAL_Delay(100);
	HAL_GPIO_WritePin(SLEEP_GPIO_Port, SLEEP_Pin, GPIO_PIN_SET);
	HAL_Delay(100);
	enable_sleep();
}

void midi_enable_recieve() {
	HAL_UART_Receive_IT(&huart1, midi_rx_buf, 1);
}

void stepper_freq(uint8_t stepper, uint8_t note) {
	uint32_t new_arr = midi_to_arr_table[note];

	if (stepper >= 8) {
		return;
	}

	TIM_HandleTypeDef *timer = timer_lookup[stepper];

	disable_sleep();

	if (note == 0) {
		__HAL_TIM_SET_COMPARE(timer, TIM_CHANNEL_1, 0);
	}
	else {
		__HAL_TIM_SET_AUTORELOAD(timer, new_arr);
		__HAL_TIM_SET_COMPARE(timer, TIM_CHANNEL_1, new_arr / 2);
	}

}

void enable_sleep() {
	HAL_GPIO_WritePin(SLEEP_GPIO_Port, SLEEP_Pin, GPIO_PIN_RESET);
}

void disable_sleep() {
	HAL_GPIO_WritePin(SLEEP_GPIO_Port, SLEEP_Pin, GPIO_PIN_SET);
}

void note_on(uint8_t channel, uint8_t vel, uint8_t note) {

	if (channel > 0) {
		uint8_t stepper = channel - 1;
		if (stepper >= NUM_STEPPERS) {
			return;
		}
		uint8_t old_priority = motor_queue[stepper];
		for (size_t j = 0; j < NUM_STEPPERS; j++) {
			if (motor_queue[j] < old_priority) {
				motor_queue[j]++;
			}
		}
		motor_queue[stepper] = 0;
		stepper_current_notes[stepper] = note;
		stepper_freq(stepper, note);
		return;
	}

	// Detect if note is already on
	for (size_t i = 0; i < NUM_STEPPERS; i++) {
		if (stepper_current_notes[i] == note) {
			return;
		}
	}

	// Check for available stepper
	for (size_t idx = 0; idx < NUM_STEPPERS; idx++) {
		if (stepper_current_notes[idx] == -1) {
			uint8_t old_priority = motor_queue[idx];
			for (size_t j = 0; j < NUM_STEPPERS; j++) {
				if (motor_queue[j] < old_priority) {
					motor_queue[j]++;
				}
			}
			motor_queue[idx] = 0;
			stepper_current_notes[idx] = note;
			stepper_freq(idx, note);
			return;
		}
	}
	// Available stepper not found; use oldest stepper
	for (size_t idx = 0; idx < NUM_STEPPERS; idx++) {
		if (motor_queue[idx] >= NUM_STEPPERS - 1) {
			for (size_t j = 0; j < NUM_STEPPERS; j++) {
				motor_queue[j]++;
			}
			motor_queue[idx] = 0;
			stepper_current_notes[idx] = note;
			stepper_freq(idx, note);
			return;
		}
	}
	motor_queue[0] = 0;
	stepper_current_notes[0] = note;
	stepper_freq(0, note);

}

void note_off(uint8_t channel, uint8_t vel, uint8_t note) {

	for (size_t i = 0; i < NUM_STEPPERS; i++) {
		if (stepper_current_notes[i] == note) {
			stepper_current_notes[i] = -1;
			stepper_freq(i, 0);
		}
	}

	for (size_t i = 0; i < NUM_STEPPERS; i++) {
		if (stepper_current_notes[i] != -1) {
			return;
		}
	}

	enable_sleep();

}

void process_midi_msg() {
	uint8_t status = midi_msg_buf[0];
	uint8_t channel_mask = CHANNEL_MASK(status);
	uint8_t channel = CHANNEL(status);

	// Decode message and call appropriate handler
	if (channel_mask == 0b10000000) {
		// Note off
		note_off(channel, midi_msg_buf[2], midi_msg_buf[1]);
	}
	else if (channel_mask == 0b10010000) {
		// Note on
		note_on(channel, midi_msg_buf[2], midi_msg_buf[1]);
	}
}

// vibe begin

typedef enum {
    MIDI_STATE_WAIT_STATUS,
    MIDI_STATE_DATA_1,
    MIDI_STATE_DATA_2,
    MIDI_STATE_SYSEX
} MIDI_State;

void MIDI_ProcessByte(uint8_t byte) {
    static MIDI_State state = MIDI_STATE_WAIT_STATUS;
    static uint8_t msg[3];

    if (byte & 0x80) { // Status Byte
        if (byte >= 0xF0) {
            if (byte == 0xF0) state = MIDI_STATE_SYSEX;
            else if (byte == 0xF7) state = MIDI_STATE_WAIT_STATUS;
            // Handle other System messages
        } else {
            state = MIDI_STATE_DATA_1;
            msg[0] = byte;
        }
    } else { // Data Byte
        switch (state) {
            case MIDI_STATE_DATA_1:
                msg[1] = byte;
                state = MIDI_STATE_DATA_2;
                break;
            case MIDI_STATE_DATA_2:
                msg[2] = byte;
                // --- Complete Message Ready in msg[] ---
                state = MIDI_STATE_WAIT_STATUS;

                __disable_irq();
                midi_msg_buf[0] = msg[0];
                midi_msg_buf[1] = msg[1];
                midi_msg_buf[2] = msg[2];
                process_midi_msg();
                __enable_irq();


                break;
            case MIDI_STATE_SYSEX:
                // Handle Sysex byte

            	__disable_irq();
            	midi_msg_buf[0] = msg[0];
            	midi_msg_buf[1] = msg[1];
            	midi_msg_buf[2] = msg[2];
            	process_midi_msg();
            	__enable_irq();


                break;
            default: break;
        }
    }
}

// vibe end

void tud_midi_rx_cb(uint8_t val) {
	static uint8_t msg[4] = {0};

	while (tud_midi_n_available(0, 0)) {

		tud_midi_n_packet_read(0, msg);

		__disable_irq();
		midi_msg_buf[0] = msg[1];
		midi_msg_buf[1] = msg[2];
		midi_msg_buf[2] = msg[3];
//		midi_msg_buf[3] = msg[4];
		process_midi_msg();
		__enable_irq();
	}
}


void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
	if (huart->Instance == USART1) {
		MIDI_ProcessByte(midi_rx_buf[0]);
		HAL_UART_Receive_IT(&huart1, midi_rx_buf, 1);
	}
}


void setup() {
	motor_init();

	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim5, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim9, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim10, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim11, TIM_CHANNEL_1);
	midi_enable_recieve();

	tusb_rhport_init_t dev_init = {
			.role = TUSB_ROLE_DEVICE,
			.speed = TUSB_SPEED_FULL
	};
	tusb_init(0, &dev_init);
}

void loop() {
	tud_task();
}
