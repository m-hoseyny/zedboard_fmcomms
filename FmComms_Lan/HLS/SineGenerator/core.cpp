#include "hls_math.h"
//#include <ap_fixed.h>

//typedef ap_fixed<16,8> fix_t;

#define PI 3.14


float max(float data[128])
{
	float max = 0;
	unsigned int i;
	for(i = 0; i < 128; i++)
	{
		if(data[i] < 0)
		{
			if((data[i] * -1) > max)
			{
				max = data[i] * -1;
			}
		}
		else
		{
			if(data[i] > max)
			{
				max = data[i];
			}
		}

	}
	return max;
}


void IQGen(float rawI[128], float rawQ[128], unsigned int amp, unsigned int binOffset, unsigned int outIQ[256])
{
	float maxI = max(rawI);
	float maxQ = max(rawQ);

	unsigned int i;
	for(i = 0; i < 128; i++)
	{
		outIQ[i * 2] = (rawI[i] / maxI) * amp + binOffset;
		outIQ[i * 2 + 1] = (rawQ[i] / maxQ) * amp + binOffset;
	}

}

void sinGen(unsigned int Fs, unsigned int cycle, unsigned int amp, unsigned int binOffset, unsigned int outIQ[256])
{
#pragma HLS INTERFACE s_axilite port=return bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=outIQ bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=amp bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=binOffset bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=cycle bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=Fs bundle=CRTLS

	float rawI[128];
	float rawQ[128];

unsigned int idx;

for(idx = 0; idx < 128; idx++)
{
	rawI[idx] = 4 * hls::sinf((float)((cycle * PI / 128) * idx));
	rawQ[idx] = 4 * hls::cosf((float)((cycle * PI / 128) * idx));
}

IQGen(rawI, rawQ, amp, binOffset, outIQ);

}


