################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AD8366/AD8366.c 

OBJS += \
./src/AD8366/AD8366.o 

C_DEPS += \
./src/AD8366/AD8366.d 


# Each subdirectory must supply rules for building sources it contributes
src/AD8366/%.o: ../src/AD8366/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD8366" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9122" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9523" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9548" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\AD9643" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\ADF4351" -I"E:\ZedBoard_Projects\FmComms_Lan\fmcomms1_zed.sdk\fmcomms_lan_sin\src\Common" -c -fmessage-length=0 -MT"$@" -I../../fmcomms_lan_sin_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


