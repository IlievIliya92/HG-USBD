################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emusb/subdir.mk
-include emlib/subdir.mk
-include Drivers/subdir.mk
-include CMSIS/efm32hg/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: SLSTK3400A_usbdcdc.axf

# Tool invocations
SLSTK3400A_usbdcdc.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -T "SLSTK3400A_usbdcdc.ld" -Xlinker --gc-sections -Xlinker -Map="SLSTK3400A_usbdcdc.map" --specs=nano.specs -o SLSTK3400A_usbdcdc.axf "./src/descriptors.o" "./src/main.o" "./src/scrolllcd.o" "./src/usbdrv_hal.o" "./emusb/em_usbd.o" "./emusb/em_usbdch9.o" "./emusb/em_usbdep.o" "./emusb/em_usbdint.o" "./emusb/em_usbhal.o" "./emusb/em_usbtimer.o" "./emlib/em_assert.o" "./emlib/em_cmu.o" "./emlib/em_dma.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./emlib/em_int.o" "./emlib/em_prs.o" "./emlib/em_rtc.o" "./emlib/em_system.o" "./emlib/em_timer.o" "./emlib/em_usart.o" "./Drivers/cdc.o" "./Drivers/display.o" "./Drivers/displayls013b7dh03.o" "./Drivers/displaypalemlib.o" "./Drivers/dmactrl.o" "./Drivers/udelay.o" "./CMSIS/efm32hg/startup_gcc_efm32hg.o" "./CMSIS/efm32hg/system_efm32hg.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: SLSTK3400A_usbdcdc.hex'
	arm-none-eabi-objcopy -O ihex "SLSTK3400A_usbdcdc.axf" "SLSTK3400A_usbdcdc.hex"
	@echo ' '

	@echo 'Building bin file: SLSTK3400A_usbdcdc.bin'
	arm-none-eabi-objcopy -O binary "SLSTK3400A_usbdcdc.axf" "SLSTK3400A_usbdcdc.bin"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "SLSTK3400A_usbdcdc.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) SLSTK3400A_usbdcdc.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
