# 1 "source/direction.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "source/direction.cpp"

int A = 12;
int B = 16;
int C = 20;
int D = 21;

void forward(float c){
    printf("Forward\n");
    float i = c * 256;
    for(float x; x<i;x++){

        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);
    }
}

void reverse(float c){
    printf("Backwards\n");
    float i = c * 256;
    for(float x; x<i;x++){

        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,1);
        gpioWrite(B,0);
        gpioWrite(C,0);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,0);
        gpioWrite(C,1);
        gpioWrite(D,1);
        usleep(delay_us);


        gpioWrite(A,0);
        gpioWrite(B,1);
        gpioWrite(C,1);
        gpioWrite(D,0);
        usleep(delay_us);


        gpioWrite(A,1);
        gpioWrite(B,1);
        gpioWrite(C,0);
        gpioWrite(D,0);
        usleep(delay_us);

    }
}

void stop_motor(){
    gpioWrite(A,0);
    gpioWrite(B,0);
    gpioWrite(C,0);
    gpioWrite(D,0);
}
