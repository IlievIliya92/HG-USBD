################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/descriptors.c \
../src/main.c \
../src/scrolllcd.c \
../src/usbdrv_hal.c 

OBJS += \
./src/descriptors.o \
./src/main.o \
./src/scrolllcd.o \
./src/usbdrv_hal.o 

C_DEPS += \
./src/descriptors.d \
./src/main.d \
./src/scrolllcd.d \
./src/usbdrv_hal.d 


# Each subdirectory must supply rules for building sources it contributes
src/descriptors.o: ../src/descriptors.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/descriptors.d" -MT"src/descriptors.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: ../src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/main.d" -MT"src/main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/scrolllcd.o: ../src/scrolllcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/scrolllcd.d" -MT"src/scrolllcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/usbdrv_hal.o: ../src/usbdrv_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/usbdrv_hal.d" -MT"src/usbdrv_hal.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


