################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Common/adc_core.c \
../src/Common/dac_core.c \
../src/Common/eeprom.c \
../src/Common/i2c_axi.c \
../src/Common/i2c_ps7.c \
../src/Common/main.c \
../src/Common/mmcm.c \
../src/Common/spi_interface.c \
../src/Common/test.c \
../src/Common/xcomm.c 

OBJS += \
./src/Common/adc_core.o \
./src/Common/dac_core.o \
./src/Common/eeprom.o \
./src/Common/i2c_axi.o \
./src/Common/i2c_ps7.o \
./src/Common/main.o \
./src/Common/mmcm.o \
./src/Common/spi_interface.o \
./src/Common/test.o \
./src/Common/xcomm.o 

C_DEPS += \
./src/Common/adc_core.d \
./src/Common/dac_core.d \
./src/Common/eeprom.d \
./src/Common/i2c_axi.d \
./src/Common/i2c_ps7.d \
./src/Common/main.d \
./src/Common/mmcm.d \
./src/Common/spi_interface.d \
./src/Common/test.d \
./src/Common/xcomm.d 


# Each subdirectory must supply rules for building sources it contributes
src/Common/%.o: ../src/Common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD8366" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9122" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9523" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9548" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9643" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\ADF4351" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\Common" -c -fmessage-length=0 -MT"$@" -I../../fmcomms_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


