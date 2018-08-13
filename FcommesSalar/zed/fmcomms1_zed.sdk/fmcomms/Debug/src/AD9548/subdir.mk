################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AD9548/AD9548.c 

OBJS += \
./src/AD9548/AD9548.o 

C_DEPS += \
./src/AD9548/AD9548.d 


# Each subdirectory must supply rules for building sources it contributes
src/AD9548/%.o: ../src/AD9548/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD8366" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9122" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9523" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9548" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\AD9643" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\ADF4351" -I"E:\ZedBoard_Projects\FcommesSalar\zed\fmcomms1_zed.sdk\fmcomms\src\Common" -c -fmessage-length=0 -MT"$@" -I../../fmcomms_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


