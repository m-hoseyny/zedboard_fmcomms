#include <stdio.h>
//#include <ap_int.h>
// Function prototype
void stepGen (unsigned int out_vec[256]);

int main()
{
	unsigned int out_arr[256];

	// Call function
	stepGen(out_arr);

	for (int idx = 0; idx < 256; idx++)
	{
		printf("Val on out[%d]=%d\n",idx,out_arr[idx]);
	}
}
