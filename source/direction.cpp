#include "direction.h"
#include <pigpio.h>
#include <unistd.h>
#include <stdio.h>

Direction::Direction(){
    A = 12;
    B = 16;
    C = 20;
    D = 21;
    delay_us = 3000;
}

void Direction::forward(float c){
    printf("Forward\n");
    float i = c * 256;
    for(float x; x<i;x++){
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
}

void Direction::reverse(float c){
    printf("Backwards\n");
    float i = c * 256;
    for(float x; x<i;x++){
        //Step 8
        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);

        //Step 7
        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);

        //Step 6
        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 5
        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 4
        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);
        
        //Step 3
        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);

        //Step 2
        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);

        //Step 1
        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);

    }
}

void Direction::stop_motor(){
    gpioWrite(A,0);
    gpioWrite(B,0);
    gpioWrite(C,0);
    gpioWrite(D,0);
}

int Direction::getA(){
    return A;
}
int Direction::getB(){
    return B;
}
int Direction::getC(){
    return C;
}
int Direction::getD(){
    return D;
}
int Direction::getDelay_us(){
    return delay_us;
}

void Direction::setA(int x){
    A = x;
}

void Direction::setB(int x){
    B = x;
}

void Direction::setC(int x){
    C = x;
}

void Direction::setD(int x){
    D = x;
}

void Direction::setDelay_us(int x){
    delay_us = x;
}
