################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emlib/em_assert.c \
../emlib/em_cmu.c \
../emlib/em_dma.c \
../emlib/em_emu.c \
../emlib/em_gpio.c \
../emlib/em_int.c \
../emlib/em_prs.c \
../emlib/em_rtc.c \
../emlib/em_system.c \
../emlib/em_timer.c \
../emlib/em_usart.c 

OBJS += \
./emlib/em_assert.o \
./emlib/em_cmu.o \
./emlib/em_dma.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_int.o \
./emlib/em_prs.o \
./emlib/em_rtc.o \
./emlib/em_system.o \
./emlib/em_timer.o \
./emlib/em_usart.o 

C_DEPS += \
./emlib/em_assert.d \
./emlib/em_cmu.d \
./emlib/em_dma.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_int.d \
./emlib/em_prs.d \
./emlib/em_rtc.d \
./emlib/em_system.d \
./emlib/em_timer.d \
./emlib/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_assert.o: ../emlib/em_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_assert.d" -MT"emlib/em_assert.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_cmu.o: ../emlib/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_dma.o: ../emlib/em_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_dma.d" -MT"emlib/em_dma.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: ../emlib/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_emu.d" -MT"emlib/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: ../emlib/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_int.o: ../emlib/em_int.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_int.d" -MT"emlib/em_int.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_prs.o: ../emlib/em_prs.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_prs.d" -MT"emlib/em_prs.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_rtc.o: ../emlib/em_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_rtc.d" -MT"emlib/em_rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: ../emlib/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_system.d" -MT"emlib/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_timer.o: ../emlib/em_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_timer.d" -MT"emlib/em_timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_usart.o: ../emlib/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DDEBUG_EFM_USER=1' '-DEFM32HG322F64=1' '-DDEBUG=1' -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/examples/usbdcdc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/SLSTK3400A_EFM32HG/config" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/CMSIS/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/emlib/inc" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/bsp" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/kits/common/drivers" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32HG/Include" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/glib" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/reptile/glib/dmd/ssd2119" -I"/home/iliya/work/SL/SimplicityStudio/SimplicityStudio_v3/developer/sdks/efm32/v2/usb/inc" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"emlib/em_usart.d" -MT"emlib/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


