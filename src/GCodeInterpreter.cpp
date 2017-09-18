/*
 * GCodeInterpreter.cpp
 *
 *  Created on: Sep 18, 2017
 *      Author: komar
 */

#include "GCodeInterpreter.h"

GCodeInterpreter::GCodeInterpreter(QueueHandle_t xQueue) {
	_xQueue = xQueue;
	// TODO Auto-generated constructor stub

}

GCodeInterpreter::~GCodeInterpreter() {
	// TODO Auto-generated destructor stub
}

void GCodeInterpreter::Work()
{
	while(true)
	{


	}
}

