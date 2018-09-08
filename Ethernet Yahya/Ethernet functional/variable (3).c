#include "variable.h"
extern volatile unsigned int storageDataI[128] = {0};
extern volatile unsigned int storageDataQ[128] = {0};
extern volatile unsigned char flag = 0;
extern volatile unsigned char iq = 0;
extern volatile  struct tcp_pcb *rtcp = 0;

void sendEthernet(struct tcp_pcb *rtcp, unsigned char *data, unsigned int length)
{
	tcp_write(rtcp, (unsigned char*)data, length, 1);
}

void receiveEthernet (struct pbuf *p, unsigned int *dataI, unsigned int *dataQ, unsigned int length)
{
	unsigned int i = 0;
	for (i = 0; i < length/2; i = i + 2)
	{
		dataI[i/2] = (*((char *)p->payload + i)) << 8;
		dataI[i/2] = dataI[i/2] + (*((char *)p->payload + i + 1));
	}
	for (i = length/2; i < length; i = i + 2)
	{
		dataQ[(i-256)/2] = (*((char *)p->payload + i)) << 8;
		dataQ[(i-256)/2] = dataQ[(i-256)/2] + (*((char *)p->payload + i + 1));
	}

}

