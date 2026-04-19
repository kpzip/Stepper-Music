################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/device/usbd.c \
../Core/tinyusb/src/device/usbd_control.c 

OBJS += \
./Core/tinyusb/src/device/usbd.o \
./Core/tinyusb/src/device/usbd_control.o 

C_DEPS += \
./Core/tinyusb/src/device/usbd.d \
./Core/tinyusb/src/device/usbd_control.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/device/%.o Core/tinyusb/src/device/%.su Core/tinyusb/src/device/%.cyclo: ../Core/tinyusb/src/device/%.c Core/tinyusb/src/device/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-device

clean-Core-2f-tinyusb-2f-src-2f-device:
	-$(RM) ./Core/tinyusb/src/device/usbd.cyclo ./Core/tinyusb/src/device/usbd.d ./Core/tinyusb/src/device/usbd.o ./Core/tinyusb/src/device/usbd.su ./Core/tinyusb/src/device/usbd_control.cyclo ./Core/tinyusb/src/device/usbd_control.d ./Core/tinyusb/src/device/usbd_control.o ./Core/tinyusb/src/device/usbd_control.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-device

