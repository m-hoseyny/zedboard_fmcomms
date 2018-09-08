################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Common/adc_core.c \
../src/Common/dac_core.c \
../src/Common/eeprom.c \
../src/Common/i2c_access.c \
../src/Common/i2c_axi.c \
../src/Common/i2c_ps7.c \
../src/Common/lan.c \
../src/Common/main.c \
../src/Common/mmcm.c \
../src/Common/platform.c \
../src/Common/platform_mb.c \
../src/Common/platform_ppc.c \
../src/Common/platform_zynq.c \
../src/Common/platform_zynqmp.c \
../src/Common/recive_lan_callback.c \
../src/Common/sfp.c \
../src/Common/shared_variables.c \
../src/Common/si5324.c \
../src/Common/sinGen.c \
../src/Common/spi_interface.c \
../src/Common/test.c \
../src/Common/xcomm.c 

OBJS += \
./src/Common/adc_core.o \
./src/Common/dac_core.o \
./src/Common/eeprom.o \
./src/Common/i2c_access.o \
./src/Common/i2c_axi.o \
./src/Common/i2c_ps7.o \
./src/Common/lan.o \
./src/Common/main.o \
./src/Common/mmcm.o \
./src/Common/platform.o \
./src/Common/platform_mb.o \
./src/Common/platform_ppc.o \
./src/Common/platform_zynq.o \
./src/Common/platform_zynqmp.o \
./src/Common/recive_lan_callback.o \
./src/Common/sfp.o \
./src/Common/shared_variables.o \
./src/Common/si5324.o \
./src/Common/sinGen.o \
./src/Common/spi_interface.o \
./src/Common/test.o \
./src/Common/xcomm.o 

C_DEPS += \
./src/Common/adc_core.d \
./src/Common/dac_core.d \
./src/Common/eeprom.d \
./src/Common/i2c_access.d \
./src/Common/i2c_axi.d \
./src/Common/i2c_ps7.d \
./src/Common/lan.d \
./src/Common/main.d \
./src/Common/mmcm.d \
./src/Common/platform.d \
./src/Common/platform_mb.d \
./src/Common/platform_ppc.d \
./src/Common/platform_zynq.d \
./src/Common/platform_zynqmp.d \
./src/Common/recive_lan_callback.d \
./src/Common/sfp.d \
./src/Common/shared_variables.d \
./src/Common/si5324.d \
./src/Common/sinGen.d \
./src/Common/spi_interface.d \
./src/Common/test.d \
./src/Common/xcomm.d 


# Each subdirectory must supply rules for building sources it contributes
src/Common/%.o: ../src/Common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD8366" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9122" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9523" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9548" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9643" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\ADF4351" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\Common" -c -fmessage-length=0 -MT"$@" -I../../fmcomms_lan_sin_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


