/*
 * UniversalClass.h
 *
 *  Created on: Sep 18, 2017
 *      Author: komar
 */

#ifndef UNIVERSALCLASS_H_
#define UNIVERSALCLASS_H_

class UniversalClass {

public:
enum tasks
{
	A0 = -1, // why not
	G1,
	G28,
	M1,
	M4,
	M10
};
struct Task
{
	tasks _Task;
	int _SubTask;
	double _XCordinate;
	double _YCordinate; // maybe we should use int: (double) 75.75 -> (int) 7575
}task;


};

#endif /* UNIVERSALCLASS_H_ */
