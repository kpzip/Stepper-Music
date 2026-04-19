################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/portable/st/typec/typec_stm32.c 

OBJS += \
./Core/tinyusb/src/portable/st/typec/typec_stm32.o 

C_DEPS += \
./Core/tinyusb/src/portable/st/typec/typec_stm32.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/portable/st/typec/%.o Core/tinyusb/src/portable/st/typec/%.su Core/tinyusb/src/portable/st/typec/%.cyclo: ../Core/tinyusb/src/portable/st/typec/%.c Core/tinyusb/src/portable/st/typec/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-portable-2f-st-2f-typec

clean-Core-2f-tinyusb-2f-src-2f-portable-2f-st-2f-typec:
	-$(RM) ./Core/tinyusb/src/portable/st/typec/typec_stm32.cyclo ./Core/tinyusb/src/portable/st/typec/typec_stm32.d ./Core/tinyusb/src/portable/st/typec/typec_stm32.o ./Core/tinyusb/src/portable/st/typec/typec_stm32.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-portable-2f-st-2f-typec

