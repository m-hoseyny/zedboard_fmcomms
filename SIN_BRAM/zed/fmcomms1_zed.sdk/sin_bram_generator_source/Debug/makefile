################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Common/subdir.mk
-include src/ADF4351/subdir.mk
-include src/AD9643/subdir.mk
-include src/AD9548/subdir.mk
-include src/AD9523/subdir.mk
-include src/AD9122/subdir.mk
-include src/AD8366/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
sin_bram_generator_source.elf.size \


# All Target
all: sin_bram_generator_source.elf secondary-outputs

# Tool invocations
sin_bram_generator_source.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -Wl,-T -Wl,../src/lscript.ld -L../../sin_bram_generator_source_bsp/ps7_cortexa9_0/lib -o "sin_bram_generator_source.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

sin_bram_generator_source.elf.size: sin_bram_generator_source.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size sin_bram_generator_source.elf  |tee "sin_bram_generator_source.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) sin_bram_generator_source.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
