################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/class/midi/midi_device.c \
../Core/tinyusb/src/class/midi/midi_host.c 

OBJS += \
./Core/tinyusb/src/class/midi/midi_device.o \
./Core/tinyusb/src/class/midi/midi_host.o 

C_DEPS += \
./Core/tinyusb/src/class/midi/midi_device.d \
./Core/tinyusb/src/class/midi/midi_host.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/class/midi/%.o Core/tinyusb/src/class/midi/%.su Core/tinyusb/src/class/midi/%.cyclo: ../Core/tinyusb/src/class/midi/%.c Core/tinyusb/src/class/midi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-class-2f-midi

clean-Core-2f-tinyusb-2f-src-2f-class-2f-midi:
	-$(RM) ./Core/tinyusb/src/class/midi/midi_device.cyclo ./Core/tinyusb/src/class/midi/midi_device.d ./Core/tinyusb/src/class/midi/midi_device.o ./Core/tinyusb/src/class/midi/midi_device.su ./Core/tinyusb/src/class/midi/midi_host.cyclo ./Core/tinyusb/src/class/midi/midi_host.d ./Core/tinyusb/src/class/midi/midi_host.o ./Core/tinyusb/src/class/midi/midi_host.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-class-2f-midi

