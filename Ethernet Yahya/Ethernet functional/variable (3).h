#include "lwip/tcp.h"
extern volatile unsigned int storageDataI[128];
extern volatile unsigned int storageDataQ[128];
extern volatile unsigned char flag;
extern volatile unsigned char iq;
extern volatile  struct tcp_pcb *rtcp;

void sendEthernet(struct tcp_pcb *rtcp, unsigned char *data, unsigned int length);
void receiveEthernet (struct pbuf *p, unsigned int *dataI, unsigned int *dataQ, unsigned int length);

