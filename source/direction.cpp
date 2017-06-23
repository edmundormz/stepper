//GPIO Variables
int A = 12;
int B = 16;
int C = 20;
int D = 21;

void forward(float c){
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

void reverse(float c){
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

void stop_motor(){
    gpioWrite(A,0);
    gpioWrite(B,0);
    gpioWrite(C,0);
    gpioWrite(D,0);
}