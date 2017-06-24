#include <pigpio.h>
#include <unistd.h>
#include <stdio.h>
#include "../libraries/direction.h"


int main(){
    Direction dir;
    //GPIO Initialize
    if (gpioInitialise()<0) return -1;

    //Stepper motor gpio configurartion
    gpioSetMode(dir.getA(),PI_OUTPUT);
    gpioSetMode(dir.getB(),PI_OUTPUT);
    gpioSetMode(dir.getC(),PI_OUTPUT);
    gpioSetMode(dir.getD(),PI_OUTPUT);

    //Buttons configs
    int forward = 02;
    int reverse = 03;
    int manual = 04;
    int active = 17;


    //Control buttons gpio configuration
    gpioSetMode(forward, PI_INPUT);
    gpioSetMode(reverse, PI_INPUT);
    gpioSetMode(manual, PI_INPUT);
    gpioSetMode(active, PI_INPUT);

    while(gpioRead(active)){
        if(gpioRead(forward) && !gpioRead(manual)){
            dir.forward(0.25);
        }
        if(gpioRead(forward) && gpioRead(manual)){
            dir.forwardManual();
        }
        if(gpioRead(reverse) && !gpioRead(manual)){
            dir.reverse(0.5);
        }
        if(gpioRead(reverse) && gpioRead(manual)){
            dir.reverseManual();
        }
    }

    dir.stop_motor();
    gpioTerminate();
    return 0;
}
