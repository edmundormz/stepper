#include <pigpio.h>
#include <unistd.h>
#include <stdio.h>
#include "direction.h"


//g++ -Wall -pthread -o foobar foobar.cpp -lpigpio -lrt

int delay_us = 3000;


int main(){
    //GPIO Initialize
    if (gpioInitialise()<0) return -1;

    gpioSetMode(A,PI_OUTPUT);
    gpioSetMode(B,PI_OUTPUT);
    gpioSetMode(C,PI_OUTPUT);
    gpioSetMode(D,PI_OUTPUT);

    forward(1.5);
    usleep(500000);
    reverse(1.5);

    stop_motor();
    gpioTerminate();
    return 0;
}