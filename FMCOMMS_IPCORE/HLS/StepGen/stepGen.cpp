// Header for custom size variable/parameters
//#include <ap_int.h>

void stepGen (unsigned int out_vec[256])
{
	#pragma HLS INTERFACE s_axilite port=out_vec
	#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
	//#pragma HLS INTERFACE ap_memory port=out_vec
	//#pragma HLS INTERFACE ap_fifo port=out_vec

	for (int idx = 0; idx < 256; idx++)
	{
		if(idx % 4 == 0 || idx % 4 == 1)
		{
			out_vec[idx] = 40960;
		}
		else
		{
			out_vec[idx] = 24576;
		}

	}
}
