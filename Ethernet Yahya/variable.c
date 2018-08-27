#include "variable.h"
extern volatile unsigned int storageDataI[128] = {0};
extern volatile unsigned int storageDataQ[128] = {0};
extern volatile unsigned char flag = 0;
extern volatile unsigned char iq = 0;
extern volatile  struct tcp_pcb *rtcp = 0;

