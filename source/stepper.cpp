#include <pigpio.h>
#include <unistd.h>
#include <stdio.h>
#include "../libraries/direction.h"


//g++ -Wall -pthread -o foobar foobar.cpp -lpigpio -lrt

// //int A = 12:
// int B = 16;
// int C = 20;
// int D = 21;




int main(){
    Direction dir;
    //GPIO Initialize
    if (gpioInitialise()<0) return -1;

    gpioSetMode(dir.getA(),PI_OUTPUT);
    gpioSetMode(dir.getB(),PI_OUTPUT);
    gpioSetMode(dir.getC(),PI_OUTPUT);
    gpioSetMode(dir.getD(),PI_OUTPUT);

    //dir.setA(12);

    dir.forward(0.5);
    usleep(500000);
    dir.reverse(0.5);

    dir.stop_motor();
    gpioTerminate();
    return 0;
}
