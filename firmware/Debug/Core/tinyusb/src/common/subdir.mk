################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/common/tusb_fifo.c 

OBJS += \
./Core/tinyusb/src/common/tusb_fifo.o 

C_DEPS += \
./Core/tinyusb/src/common/tusb_fifo.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/common/%.o Core/tinyusb/src/common/%.su Core/tinyusb/src/common/%.cyclo: ../Core/tinyusb/src/common/%.c Core/tinyusb/src/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-common

clean-Core-2f-tinyusb-2f-src-2f-common:
	-$(RM) ./Core/tinyusb/src/common/tusb_fifo.cyclo ./Core/tinyusb/src/common/tusb_fifo.d ./Core/tinyusb/src/common/tusb_fifo.o ./Core/tinyusb/src/common/tusb_fifo.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-common

