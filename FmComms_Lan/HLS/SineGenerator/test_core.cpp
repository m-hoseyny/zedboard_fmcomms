#include <stdio.h>
//#include <hls_math.h>
//#include <ap_fixed.h>

//typedef ap_fixed<16,8> fix_t;

void sinGen(unsigned int Fs, unsigned int cycle, unsigned int amp, unsigned int binOffset, unsigned int outIQ[256]);

int main()
{
	unsigned int Fs = 122800000;
	unsigned int cycle = 2;
	unsigned int amp = 8000;
	unsigned int binOffset = 32769;
	unsigned int outIQ[256];

	sinGen(Fs, cycle, amp, binOffset, outIQ);

	unsigned int idx;

	for(idx = 0; idx < 256; idx++)
	{
		printf("%d\n", outIQ[idx]);
	}

	return 0;
}
