################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/tinyusb/src/typec/subdir.mk
-include Core/tinyusb/src/portable/wch/subdir.mk
-include Core/tinyusb/src/portable/valentyusb/eptri/subdir.mk
-include Core/tinyusb/src/portable/ti/msp430x5xx/subdir.mk
-include Core/tinyusb/src/portable/template/subdir.mk
-include Core/tinyusb/src/portable/synopsys/dwc2/subdir.mk
-include Core/tinyusb/src/portable/sunxi/subdir.mk
-include Core/tinyusb/src/portable/st/typec/subdir.mk
-include Core/tinyusb/src/portable/st/stm32_fsdev/subdir.mk
-include Core/tinyusb/src/portable/sony/cxd56/subdir.mk
-include Core/tinyusb/src/portable/renesas/rusb2/subdir.mk
-include Core/tinyusb/src/portable/raspberrypi/rp2040/subdir.mk
-include Core/tinyusb/src/portable/raspberrypi/pio_usb/subdir.mk
-include Core/tinyusb/src/portable/ohci/subdir.mk
-include Core/tinyusb/src/portable/nxp/lpc_ip3516/subdir.mk
-include Core/tinyusb/src/portable/nxp/lpc_ip3511/subdir.mk
-include Core/tinyusb/src/portable/nxp/lpc17_40/subdir.mk
-include Core/tinyusb/src/portable/nxp/khci/subdir.mk
-include Core/tinyusb/src/portable/nuvoton/nuc505/subdir.mk
-include Core/tinyusb/src/portable/nuvoton/nuc121/subdir.mk
-include Core/tinyusb/src/portable/nuvoton/nuc120/subdir.mk
-include Core/tinyusb/src/portable/nordic/nrf5x/subdir.mk
-include Core/tinyusb/src/portable/mindmotion/mm32/subdir.mk
-include Core/tinyusb/src/portable/microchip/samx7x/subdir.mk
-include Core/tinyusb/src/portable/microchip/samg/subdir.mk
-include Core/tinyusb/src/portable/microchip/samd/subdir.mk
-include Core/tinyusb/src/portable/microchip/pic32mz/subdir.mk
-include Core/tinyusb/src/portable/microchip/pic/subdir.mk
-include Core/tinyusb/src/portable/mentor/musb/subdir.mk
-include Core/tinyusb/src/portable/ehci/subdir.mk
-include Core/tinyusb/src/portable/dialog/da146xx/subdir.mk
-include Core/tinyusb/src/portable/chipidea/ci_hs/subdir.mk
-include Core/tinyusb/src/portable/chipidea/ci_fs/subdir.mk
-include Core/tinyusb/src/portable/bridgetek/ft9xx/subdir.mk
-include Core/tinyusb/src/portable/analog/max3421/subdir.mk
-include Core/tinyusb/src/host/subdir.mk
-include Core/tinyusb/src/device/subdir.mk
-include Core/tinyusb/src/common/subdir.mk
-include Core/tinyusb/src/class/video/subdir.mk
-include Core/tinyusb/src/class/vendor/subdir.mk
-include Core/tinyusb/src/class/usbtmc/subdir.mk
-include Core/tinyusb/src/class/printer/subdir.mk
-include Core/tinyusb/src/class/net/subdir.mk
-include Core/tinyusb/src/class/mtp/subdir.mk
-include Core/tinyusb/src/class/msc/subdir.mk
-include Core/tinyusb/src/class/midi/subdir.mk
-include Core/tinyusb/src/class/hid/subdir.mk
-include Core/tinyusb/src/class/dfu/subdir.mk
-include Core/tinyusb/src/class/cdc/subdir.mk
-include Core/tinyusb/src/class/bth/subdir.mk
-include Core/tinyusb/src/class/audio/subdir.mk
-include Core/tinyusb/src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := stepper-music
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
stepper-music.elf \

MAP_FILES += \
stepper-music.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
stepper-music.list \


# All Target
all: main-build

# Main-build Target
main-build: stepper-music.elf secondary-outputs

# Tool invocations
stepper-music.elf stepper-music.map: $(OBJS) $(USER_OBJS) /home/kyle/github/Stepper-Music/firmware/STM32F401RCTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "stepper-music.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/kyle/github/Stepper-Music/firmware/STM32F401RCTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="stepper-music.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

stepper-music.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "stepper-music.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout stepper-music.elf stepper-music.list stepper-music.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
