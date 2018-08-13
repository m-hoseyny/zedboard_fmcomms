// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XSINGENERATOR_H
#define XSINGENERATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsingenerator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XSingenerator_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XSingenerator;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSingenerator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSingenerator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSingenerator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSingenerator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSingenerator_Initialize(XSingenerator *InstancePtr, u16 DeviceId);
XSingenerator_Config* XSingenerator_LookupConfig(u16 DeviceId);
int XSingenerator_CfgInitialize(XSingenerator *InstancePtr, XSingenerator_Config *ConfigPtr);
#else
int XSingenerator_Initialize(XSingenerator *InstancePtr, const char* InstanceName);
int XSingenerator_Release(XSingenerator *InstancePtr);
#endif

void XSingenerator_Start(XSingenerator *InstancePtr);
u32 XSingenerator_IsDone(XSingenerator *InstancePtr);
u32 XSingenerator_IsIdle(XSingenerator *InstancePtr);
u32 XSingenerator_IsReady(XSingenerator *InstancePtr);
void XSingenerator_EnableAutoRestart(XSingenerator *InstancePtr);
void XSingenerator_DisableAutoRestart(XSingenerator *InstancePtr);

void XSingenerator_Set_pi(XSingenerator *InstancePtr, u32 Data);
u32 XSingenerator_Get_pi(XSingenerator *InstancePtr);
void XSingenerator_Set_w(XSingenerator *InstancePtr, u32 Data);
u32 XSingenerator_Get_w(XSingenerator *InstancePtr);

void XSingenerator_InterruptGlobalEnable(XSingenerator *InstancePtr);
void XSingenerator_InterruptGlobalDisable(XSingenerator *InstancePtr);
void XSingenerator_InterruptEnable(XSingenerator *InstancePtr, u32 Mask);
void XSingenerator_InterruptDisable(XSingenerator *InstancePtr, u32 Mask);
void XSingenerator_InterruptClear(XSingenerator *InstancePtr, u32 Mask);
u32 XSingenerator_InterruptGetEnabled(XSingenerator *InstancePtr);
u32 XSingenerator_InterruptGetStatus(XSingenerator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
