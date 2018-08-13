################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AD9643/AD9643.c 

OBJS += \
./src/AD9643/AD9643.o 

C_DEPS += \
./src/AD9643/AD9643.d 


# Each subdirectory must supply rules for building sources it contributes
src/AD9643/%.o: ../src/AD9643/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\AD8366" -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\AD9122" -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\AD9523" -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\AD9548" -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\AD9643" -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\ADF4351" -I"E:\ZedBoard_Projects\SIN_BRAM\zed\fmcomms1_zed.sdk\sin_bram_generator_source\src\Common" -c -fmessage-length=0 -MT"$@" -I../../sin_bram_generator_source_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


