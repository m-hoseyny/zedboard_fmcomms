#include "sinGen.h"

XSingen sinGenInitialize()
{
	XSingen sinGenerator;
	XSingen_Config *sinGeneratorConfig;
	unsigned int status;
	sinGeneratorConfig = XSingen_LookupConfig(XPAR_SINGEN_0_DEVICE_ID);
	if (sinGeneratorConfig)
	{
		status = XSingen_CfgInitialize(&sinGenerator, sinGeneratorConfig);
		if (status != XST_SUCCESS)
			printf("Failed to Initialize the IP Core\n");
	}
	return sinGenerator;
}
unsigned int * sinGenStart(XSingen sinGenerator, unsigned int frequency,unsigned int amplitude,
						   unsigned int cycle, unsigned int binaryOffset)
{
	XSingen_Set_Fs(&sinGenerator, frequency);
	XSingen_Set_amp(&sinGenerator, amplitude);
	XSingen_Set_binOffset(&sinGenerator, binaryOffset);
	XSingen_Set_cycle(&sinGenerator,cycle);

	XSingen_Start(&sinGenerator);
	while(!XSingen_IsDone(&sinGenerator));
	return XSingen_Get_outIQ_BaseAddress(&sinGenerator);
}
