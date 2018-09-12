#ifndef PLOTTER_H_
#define PLOTTER_H_

#include "Axis.h"
#include "limit.h"
#include "Servo.h"
class Plotter
{
private:

	Axis x;
	Axis y;

	Limit lim;

	Servo servo;



public:

	void abs(double xx, double yy);
	void abs(int xx, int yy);
	void dif(int dx, int dy);
	void dif(double dx, double dy);
	void pen(int degree);
	void home();
	void reset();

public:

	void safety(bool on);
	
public:

	Plotter(int portlim0, int pinlim0,
			int portlim1, int pinlim1,
			int portlim2, int pinlim2,
			int portlim3, int pinlim3,
			int portdirx, int pindirx,
			int portstepx, int pinstepx,
			int portdiry, int pindiry,
			int portstepy, int pinstepy,
			int portpen, int pinpen);
	~Plotter();

private:

	DigitalIoPin * dir_x;
	DigitalIoPin * dir_y;
	DigitalIoPin * step_x;
	DigitalIoPin * step_y;
};

#endif