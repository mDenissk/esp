/*
 * GCodeInterpreter.h
 *
 *  Created on: Sep 18, 2017
 *      Author: komar
 */

#ifndef GCODEINTERPRETER_H_
#define GCODEINTERPRETER_H_

#include "UniversalClass.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

class GCodeInterpreter {

public:
	GCodeInterpreter(QueueHandle_t xQueue);
	virtual ~GCodeInterpreter();
	void Work();
private:
	QueueHandle_t _xQueue;
};

#endif /* GCODEINTERPRETER_H_ */
