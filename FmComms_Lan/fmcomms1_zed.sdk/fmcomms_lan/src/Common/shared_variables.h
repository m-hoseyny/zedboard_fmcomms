/*
 * shared_variables.h
 *
 *  Created on: Aug 13, 2018
 *      Author: Dr-Abbasfar
 */

#ifndef SHARED_VARIABLES_H_
#define SHARED_VARIABLES_H_

#include <stdint.h>

#define SIGNAL_LENGTH 128

extern volatile uint16_t lan_input;
extern volatile int lan_input_flag;
extern volatile unsigned int storageDataI[128];
extern volatile unsigned int storageDataQ[128];
extern volatile unsigned char iq;
extern volatile  struct tcp_pcb *rtcp;
extern volatile unsigned char flag;

#endif /* SHARED_VARIABLES_H_ */
