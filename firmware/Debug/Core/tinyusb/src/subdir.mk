################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/tusb.c 

OBJS += \
./Core/tinyusb/src/tusb.o 

C_DEPS += \
./Core/tinyusb/src/tusb.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/%.o Core/tinyusb/src/%.su Core/tinyusb/src/%.cyclo: ../Core/tinyusb/src/%.c Core/tinyusb/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src

clean-Core-2f-tinyusb-2f-src:
	-$(RM) ./Core/tinyusb/src/tusb.cyclo ./Core/tinyusb/src/tusb.d ./Core/tinyusb/src/tusb.o ./Core/tinyusb/src/tusb.su

.PHONY: clean-Core-2f-tinyusb-2f-src

