################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Axis.cpp \
../src/DigitalIoPin.cpp \
../src/Direction.cpp \
../src/Fmutex.cpp \
../src/GCodeInterpreter.cpp \
../src/PWM.cpp \
../src/Plotter.cpp \
../src/Servo.cpp \
../src/UniversalClass.cpp \
../src/axes.cpp \
../src/cr_cpp_config.cpp \
../src/cr_startup_lpc15xx.cpp \
../src/limit.cpp \
../src/main.cpp \
../src/rit.cpp \
../src/switch.cpp 

C_SRCS += \
../src/ITM_write.c \
../src/cdc_desc.c \
../src/cdc_main.c \
../src/cdc_vcom.c \
../src/crp.c \
../src/sysinit.c 

OBJS += \
./src/Axis.o \
./src/DigitalIoPin.o \
./src/Direction.o \
./src/Fmutex.o \
./src/GCodeInterpreter.o \
./src/ITM_write.o \
./src/PWM.o \
./src/Plotter.o \
./src/Servo.o \
./src/UniversalClass.o \
./src/axes.o \
./src/cdc_desc.o \
./src/cdc_main.o \
./src/cdc_vcom.o \
./src/cr_cpp_config.o \
./src/cr_startup_lpc15xx.o \
./src/crp.o \
./src/limit.o \
./src/main.o \
./src/rit.o \
./src/switch.o \
./src/sysinit.o 

CPP_DEPS += \
./src/Axis.d \
./src/DigitalIoPin.d \
./src/Direction.d \
./src/Fmutex.d \
./src/GCodeInterpreter.d \
./src/PWM.d \
./src/Plotter.d \
./src/Servo.d \
./src/UniversalClass.d \
./src/axes.d \
./src/cr_cpp_config.d \
./src/cr_startup_lpc15xx.d \
./src/limit.d \
./src/main.d \
./src/rit.d \
./src/switch.d 

C_DEPS += \
./src/ITM_write.d \
./src/cdc_desc.d \
./src/cdc_main.d \
./src/cdc_vcom.d \
./src/crp.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -std=c++11 -D__NEWLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC15XX__ -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\workspace\plotter-final\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\lpc_board_nxp_lpcxpresso_1549\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\lpc_chip_15xx\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\freertos\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\lpc_chip_15xx\inc\usbd" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -D__NEWLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC15XX__ -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\workspace\plotter-final\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\lpc_board_nxp_lpcxpresso_1549\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\lpc_chip_15xx\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\freertos\inc" -I"C:\Users\komar\Documents\MCUXpressoIDE_10.0.2_411\project\lpc_chip_15xx\inc\usbd" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


