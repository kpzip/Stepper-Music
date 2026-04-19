################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.c \
../Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.c \
../Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.c 

OBJS += \
./Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.o \
./Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.o \
./Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.o 

C_DEPS += \
./Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.d \
./Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.d \
./Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/portable/wch/%.o Core/tinyusb/src/portable/wch/%.su Core/tinyusb/src/portable/wch/%.cyclo: ../Core/tinyusb/src/portable/wch/%.c Core/tinyusb/src/portable/wch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-portable-2f-wch

clean-Core-2f-tinyusb-2f-src-2f-portable-2f-wch:
	-$(RM) ./Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.cyclo ./Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.d ./Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.o ./Core/tinyusb/src/portable/wch/dcd_ch32_usbfs.su ./Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.cyclo ./Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.d ./Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.o ./Core/tinyusb/src/portable/wch/dcd_ch32_usbhs.su ./Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.cyclo ./Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.d ./Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.o ./Core/tinyusb/src/portable/wch/hcd_ch32_usbfs.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-portable-2f-wch

