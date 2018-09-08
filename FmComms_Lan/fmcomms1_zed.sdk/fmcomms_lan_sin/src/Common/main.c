/**************************************************************************//**
*   @file   main.c
*   @brief  XCOMM main program implementation.
*   @author acozma (andrei.cozma@analog.com)
*
*******************************************************************************
* Copyright 2011-2015(c) Analog Devices, Inc.
*
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without modification,
* are permitted provided that the following conditions are met:
*  - Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*  - Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*  - Neither the name of Analog Devices, Inc. nor the names of its
*    contributors may be used to endorse or promote products derived
*    from this software without specific prior written permission.
*  - The use of this software may or may not infringe the patent rights
*    of one or more patent holders.  This license does not release you
*    from the requirement that you obtain separate licenses from these
*    patent holders to use this software.
*  - Use of the software either in source or binary form, must be run
*    on or directly connected to an Analog Devices Inc. component.
*
* THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY
* AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
* INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
*******************************************************************************
*   SVN Revision: $WCREV$
******************************************************************************/

/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/
#include <stdio.h>
#include <stdint.h>
#include <xil_io.h>
#include "xil_cache.h"
#include "xcomm.h"
#include "xparameters.h"
#include "test.h"
#include "lan.h"
#include "shared_variables.h"
#include "xsingen.h"
#include "sinGen.h"

void show_signal(uint16_t s_i[], uint16_t s_q[])
{
	int i = 0;
	xil_printf("\r\n\r\n\r\n--------------------- New Signal ---------------------\r\n");
	for(i = 0; i< SIGNAL_LENGTH; i++)
	{
		xil_printf("s_i : %u, s_q : %u\r\n", s_i[i], s_q[i]);
		delay_ms(10);
	}
}

void print_ram(uint32_t size, int steps, uint32_t start_address)
{
	int i;
	xil_printf("\r\n\r\n\r\n--------------------- New Data ---------------------\r\n");
	for(i = 0; i < size; i++)
	{
		xil_printf("%u,\r\n", Xil_In32(start_address + i*steps));
		delay_ms(10);
	}
}

void send_data_ethernet(struct tcp_pcb *pcb, uint16_t s_i[], uint16_t s_q[])
{
	int i;
	unsigned char sending_data[30] = {'\0'};
	xil_printf("\r\n\r\n\r\n--------------------- Sending Data via Enthernet ---------------------\r\n");
	for(i = 0; i < SIGNAL_LENGTH; i++)
	{
		sprintf(sending_data, "%u,%u\n", s_i[i], s_q[i]);
		printf("data : %s", sending_data);
		tcp_write(pcb, sending_data, 30, 1);
		delay_ms(10);
	}

}

extern void xil_printf(const char *ctrl1, ...);

/* Program main loop. */
int main()
{
    int32_t ret;
    float retGain;
    int32_t fmcSel;
    int32_t i;
    int32_t valArray[17];
    uint16_t signal_i[SIGNAL_LENGTH], signal_q[SIGNAL_LENGTH];
    XCOMM_DefaultInit defInit = {FMC_LPC,		//fmcPort
    							 DIGILENT_ZED,	//carrierBoard
    							 122880000,		//adcSamplingRate
    							 122880000,		//dacSamplingRate
								 4500,			//rxGain1000
								 2300000000ull, //rxFrequency
								 2300000000ull};//txFrequency
    int cnt = 0;
    unsigned int *IPCorePtr;

    Xil_ICacheEnable();
    Xil_DCacheEnable();

    init_platform();

    XSingen sinGenerator = sinGenInitialize();
    IPCorePtr = sinGenStart(sinGenerator, 122800000, 8000, 2, 32769);

    if(lan_init() < 0)
    {
    	xil_printf("Lan initialization Failed\n\r");
    }


    xil_printf("Running XCOMM Test Program\n\r");

    if(defInit.carrierBoard == XILINX_ZC702)
    {
    	fmcSel = (defInit.fmcPort == FMC_LPC ? IICSEL_B0LPC_PS7 : IICSEL_B1HPC_PS7);
    }
    else
    {
        if(defInit.carrierBoard == XILINX_ZC706)
        {
        	fmcSel = (defInit.fmcPort == FMC_LPC ? IICSEL_B0LPC_PS7_ZC706 :
        										   IICSEL_B1HPC_PS7_ZC706);
        }
        else
        {
        	fmcSel = (defInit.fmcPort == FMC_LPC ? IICSEL_B0LPC_AXI : IICSEL_B1HPC_AXI);
        }
    }


    ret = XCOMM_InitI2C(&defInit);
	if(ret < 0)
	{
		xil_printf("XCOMM Init I2C Failed!\n\r");
		return 0;
	}
    ret = XCOMM_Init(&defInit);
	if(ret < 0)
	{
		xil_printf("XCOMM Init Failed!\n\r");
		return 0;
	}
	ret = XCOMM_InitRx(&defInit);
	if(ret < 0)
	{
		xil_printf("XCOMM Rx Init Failed!\n\r");
		return 0;
	}
	ret = XCOMM_InitTx(&defInit);
	if(ret < 0)
	{
		xil_printf("XCOMM Tx Init Failed!\n\r");
		return 0;
	}

	XCOMM_GetDacAvailableInterpolationFreq(valArray);
	i = 0;
	while((valArray[i] != 0) && (i < 5))
	{
		i++;
	}
	XCOMM_SetDacInterpolationFreq(valArray[i - 1]);

	retGain = (float)XCOMM_SetRxGain(defInit.rxGain1000) / 1000.0f;
	xil_printf("Actual set VGA gain: %d.%d dB\n\r", (int)retGain, (int)((retGain - (int)retGain) * 1000));

    XCOMM_SetRxFrequency(defInit.rxFrequency);

    XCOMM_SetTxFrequency(defInit.txFrequency);

    xil_printf("\n\rSetting up the DAC DMA... \n\r");
    dac_dma_setup_ipcoreaddress(fmcSel, IPCorePtr);
    xil_printf("DAC DMA setup complete.\n\r");



    xil_printf("\n\rReading data from air... \n\r");
    XCOMM_SetAdcTestMode(XCOMM_AdcTestMode_Off, XCOMM_AdcChannel_All);
    delay_ms(1000);
    adc_capture(fmcSel, 16384, DDR_BASEADDR);
    print_ram(SIGNAL_LENGTH*4, 4, DDR_BASEADDR);
    xil_printf("Read data from air complete. \n\r");

    xil_printf("\n\rFinished XCOMM Test Program\n\r");

    print_ram(256, 4, (uint32_t)IPCorePtr);
    cnt = 0;
//    unsigned char sendBytes[12]= "Complete";
    while (1) {
    	if (TcpFastTmrFlag) {
    		tcp_fasttmr();
    		TcpFastTmrFlag = 0;
    	}
    	if (TcpSlowTmrFlag) {
    		tcp_slowtmr();
    		TcpSlowTmrFlag = 0;
    	}

    	if(lan_input_flag)
    	{

    		if(cnt < SIGNAL_LENGTH*2)
    		{
    			if(cnt % 2 == 0)
    				signal_i[cnt/2] = lan_input;
    			else
    				signal_q[cnt/2] = lan_input;

    			if(cnt == SIGNAL_LENGTH*2-1)
    			{
					//tcp_write(rtcp, sendBytes, 12, 1);
    				custom_dac_dma_setup(fmcSel, signal_i, signal_q);
    				delay_ms(100);
    				print_ram(SIGNAL_LENGTH*2, 4, DDRDAC_BASEADDR);
    				delay_ms(100);
    				adc_capture(fmcSel, 16384, DDR_BASEADDR);
    				delay_ms(2000);
    				print_ram(SIGNAL_LENGTH*2, 4, DDR_BASEADDR);
    				send_data_ethernet(rtcp, signal_i, signal_q);
    			}
    			cnt ++;
    			lan_input_flag = 0;
    		}
    		else
    		{
    			cnt = 0;
    		}


    	}



    	xemacif_input(echo_netif);
    	transfer_data();
    }

    /* never reached */

    Xil_DCacheDisable();
    Xil_ICacheDisable();
    cleanup_platform();




    return 0;
}