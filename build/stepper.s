	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"stepper.cpp"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB11:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN9DirectionC1Ev
	bl	gpioInitialise
	mov	r3, r0
	mov	r3, r3, lsr #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	mvn	r3, #0
	b	.L4
.L2:
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN9Direction4getAEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN9Direction4getBEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN9Direction4getCEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN9Direction4getDEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #24
	mov	r0, r3
	flds	s0, .L5
	bl	_ZN9Direction7forwardEf
	ldr	r0, .L5+4
	bl	usleep
	sub	r3, fp, #24
	mov	r0, r3
	flds	s0, .L5
	bl	_ZN9Direction7reverseEf
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN9Direction10stop_motorEv
	bl	gpioTerminate
	mov	r3, #0
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	1056964608
	.word	500000
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
