################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/tinyusb/src/class/net/ecm_rndis_device.c \
../Core/tinyusb/src/class/net/ncm_device.c 

OBJS += \
./Core/tinyusb/src/class/net/ecm_rndis_device.o \
./Core/tinyusb/src/class/net/ncm_device.o 

C_DEPS += \
./Core/tinyusb/src/class/net/ecm_rndis_device.d \
./Core/tinyusb/src/class/net/ncm_device.d 


# Each subdirectory must supply rules for building sources it contributes
Core/tinyusb/src/class/net/%.o Core/tinyusb/src/class/net/%.su Core/tinyusb/src/class/net/%.cyclo: ../Core/tinyusb/src/class/net/%.c Core/tinyusb/src/class/net/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/kyle/github/Stepper-Music/firmware/Core/tinyusb/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-tinyusb-2f-src-2f-class-2f-net

clean-Core-2f-tinyusb-2f-src-2f-class-2f-net:
	-$(RM) ./Core/tinyusb/src/class/net/ecm_rndis_device.cyclo ./Core/tinyusb/src/class/net/ecm_rndis_device.d ./Core/tinyusb/src/class/net/ecm_rndis_device.o ./Core/tinyusb/src/class/net/ecm_rndis_device.su ./Core/tinyusb/src/class/net/ncm_device.cyclo ./Core/tinyusb/src/class/net/ncm_device.d ./Core/tinyusb/src/class/net/ncm_device.o ./Core/tinyusb/src/class/net/ncm_device.su

.PHONY: clean-Core-2f-tinyusb-2f-src-2f-class-2f-net

