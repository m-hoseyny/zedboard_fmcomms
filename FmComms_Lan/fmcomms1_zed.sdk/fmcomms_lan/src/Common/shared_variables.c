/*
 * shared_variable.c
 *
 *  Created on: Aug 13, 2018
 *      Author: Dr-Abbasfar
 */

#include "shared_variables.h"



extern volatile uint16_t lan_input = 0;
extern volatile int lan_input_flag = 0;
extern volatile unsigned char iq = 0;
extern volatile  struct tcp_pcb *rtcp = 0;

