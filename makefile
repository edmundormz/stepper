build: pre compile asm linker

pre:
	cpp source/stepper.cpp > build/stepper.i
	cpp source/direction.cpp > build/direction.i
compile:
	g++ -S -o build/stepper.s build/stepper.i
	g++ -S -o build/direction.s build/direction.i
asm:
	as -o build/stepper.o build/stepper.s
	as -o build/direction.o build/direction.s
linker:
	g++ -o stepper.exe build/stepper.o build/direction.o -lpigpio -pthread
run:
	sudo build/stepper.exe
clean:
	rm /build/direction.* build/stepper.i build/stepper.o build/stepper.s
