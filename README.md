# esp

**Makeblock XY-plotter firmware**
Embedded System Project

Our goal of the project is to write an LPC1549 based firmware to control Makeblock
XY-plotter with laser engraver update. The plotter ships with an Arduino compatible
controller board but we use LPC.
The firmware receives and interprets G-codes and driver the mechanics accordingly.
G-codes are fairly simple instructions that tell for example the plotter to move to a
certain point or to draw an arc on the canvas
