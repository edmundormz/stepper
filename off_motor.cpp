#include <pigpio.h>
#include <unistd.h>
#include <stdio.h>

//g++ -Wall -pthread -o foobar foobar.cpp -lpigpio -lrt

//GPIO Variables
int A = 12;
int B = 16;
int C = 20;
int D = 21;

int delay_us = 1000000;

int main(){
    //GPIO Initialize
    if (gpioInitialise()<0) return -1;

    gpioSetMode(A,PI_OUTPUT);
    gpioSetMode(B,PI_OUTPUT);
    gpioSetMode(C,PI_OUTPUT);
    gpioSetMode(D,PI_OUTPUT);

    gpioWrite(A,0);
    gpioWrite(B,0);
    gpioWrite(C,0);
    gpioWrite(D,0);

    printf("Stepper off");
   
    //GPIO Terminate
    gpioTerminate();

    return 0;
}