################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.c \
../Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.c 

OBJS += \
./Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.o \
./Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.o 

C_DEPS += \
./Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.d \
./Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/portable/raspberrypi/pio_usb/%.o Core/tinyusb/src/portable/raspberrypi/pio_usb/%.su Core/tinyusb/src/portable/raspberrypi/pio_usb/%.cyclo: ../Core/tinyusb/src/portable/raspberrypi/pio_usb/%.c Core/tinyusb/src/portable/raspberrypi/pio_usb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-portable-2f-raspberrypi-2f-pio_usb

clean-Core-2f-tinyusb-2f-src-2f-portable-2f-raspberrypi-2f-pio_usb:
	-$(RM) ./Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.cyclo ./Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.d ./Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.o ./Core/tinyusb/src/portable/raspberrypi/pio_usb/dcd_pio_usb.su ./Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.cyclo ./Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.d ./Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.o ./Core/tinyusb/src/portable/raspberrypi/pio_usb/hcd_pio_usb.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-portable-2f-raspberrypi-2f-pio_usb

