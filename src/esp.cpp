/*
===============================================================================
 Name        : main.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#if defined (__USE_LPCOPEN)
#if defined(NO_BOARD_LIB)
#include "chip.h"
#else
#include "board.h"
#endif
#endif

#include <cr_section_macros.h>
#include "DigitalIoPin.h"

#include "FreeRTOS.h"
#include "queue.h"
//#include "user_vcom.h"


//Insert your own classes
#include "UniversalClass.h"
#include "GCodeInterpreter.h"

//Our variables
QueueHandle_t xQueue;


static void prvSetupHardware(void)
{
	SystemCoreClockUpdate();
	Board_Init();
	Board_LED_Set(0, false);
	xQueue = xQueueCreate( 20, sizeof( UniversalClass::task ) );
}

/* This task gets data from cdc and converts this into tasks for control module(CTRL)*/
static void Decoder(void *pvParameters)
{
	GCodeInterpreter GCI = new GCodeInterpreter(xQueue);
	GCI.Work();
}

/* This task controls motors and so on. Gets tasks from decoder via xQueue*/
static void CTRL(void *pvParameters)
{
	/*
		CTRL GCI = ctrl CTRL(xQueue,...);
		while(true){...}
	 */
}

extern "C" {

void vConfigureTimerForRunTimeStats( void ) {
	Chip_SCT_Init(LPC_SCTSMALL1);
	LPC_SCTSMALL1->CONFIG = SCT_CONFIG_32BIT_COUNTER;
	LPC_SCTSMALL1->CTRL_U = SCT_CTRL_PRE_L(255) | SCT_CTRL_CLRCTR_L; // set prescaler to 256 (255 + 1), and start timer
}

}

int main(void) {

	prvSetupHardware();

	xTaskCreate(Decoder, "Decoder",
				configMINIMAL_STACK_SIZE*4, NULL, (tskIDLE_PRIORITY + 1UL),
				(TaskHandle_t *) NULL);

	xTaskCreate(CTRL, "CTRL",
					configMINIMAL_STACK_SIZE*4, NULL, (tskIDLE_PRIORITY + 1UL),
					(TaskHandle_t *) NULL);

	vTaskStartScheduler();

	return 1;
}
