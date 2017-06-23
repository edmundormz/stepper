#include <pigpio.h>
#include <unistd.h>

//g++ -Wall -pthread -o foobar foobar.cpp -lpigpio -lrt

//GPIO Variables
int A = 12;
int B = 16;
int C = 20;
int D = 21;

int delay_us = 3000;

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

    while (true){
        //Stepper Sequence 
        //Step 1
        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 2
        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 3
        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);

        //Step 4
        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);

        //Step 5
        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 6
        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 7
        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);

        //Step 8
        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);
    }

    //GPIO Terminate
    gpioTerminate();

    return 0;
}