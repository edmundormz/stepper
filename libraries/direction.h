#ifndef DIRECTION_H
#define DIRECTION_H



class Direction{

int A;
int B;
int C;
int D;
int delay_us;

public:
Direction();
void forward(float c);
void reverse(float c);
void stop_motor();

int getA();
int getB();
int getC();
int getD();
int getDelay_us();

void setA(int x);
void setB(int x);
void setC(int x);
void setD(int x);
void setDelay_us(int x);
};

#endif