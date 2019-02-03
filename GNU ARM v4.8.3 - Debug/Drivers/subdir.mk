################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/cdc.c \
../Drivers/display.c \
../Drivers/displayls013b7dh03.c \
../Drivers/displaypalemlib.c \
../Drivers/dmactrl.c \
../Drivers/udelay.c 

OBJS += \
./Drivers/cdc.o \
./Drivers/display.o \
./Drivers/displayls013b7dh03.o \
./Drivers/displaypalemlib.o \
./Drivers/dmactrl.o \
./Drivers/udelay.o 

C_DEPS += \
./Drivers/cdc.d \
./Drivers/display.d \
./Drivers/displayls013b7dh03.d \
./Drivers/displaypalemlib.d \
./Drivers/dmactrl.d \
./Drivers/udelay.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/cdc.o: ../Drivers/cdc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/cdc.d" -MT"Drivers/cdc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/display.o: ../Drivers/display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/display.d" -MT"Drivers/display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/displayls013b7dh03.o: ../Drivers/displayls013b7dh03.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/displayls013b7dh03.d" -MT"Drivers/displayls013b7dh03.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/displaypalemlib.o: ../Drivers/displaypalemlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/displaypalemlib.d" -MT"Drivers/displaypalemlib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/dmactrl.o: ../Drivers/dmactrl.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/dmactrl.d" -MT"Drivers/dmactrl.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/udelay.o: ../Drivers/udelay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"Drivers/udelay.d" -MT"Drivers/udelay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


