# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2015.4
# Copyright (C) 2015 Xilinx Inc. All rights reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../test_core.cpp ../../../core.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vivado_HLS/2015.4
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vivado_HLS/2015.4/msys/bin
endif
ifndef AP_CLANG_PATH
  AP_CLANG_PATH := D:/Xilinx/Vivado_HLS/2015.4/win64/tools/clang/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/test_core.o: ../../../test_core.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../test_core.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD   $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/test_core.d

$(ObjDir)/core.o: ../../../core.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../core.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/core.d
