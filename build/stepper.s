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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9DirectionC1Ev
	bl	gpioInitialise
	mov	r3, r0
	mov	r3, r3, lsr #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	mvn	r3, #0
	b	.L17
.L2:
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction4getAEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction4getBEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction4getCEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction4getDEv
	mov	r3, r0
	mov	r0, r3
	mov	r1, #1
	bl	gpioSetMode
	mov	r3, #2
	str	r3, [fp, #-8]
	mov	r3, #3
	str	r3, [fp, #-12]
	mov	r3, #4
	str	r3, [fp, #-16]
	mov	r3, #17
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioSetMode
	ldr	r3, [fp, #-12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioSetMode
	ldr	r3, [fp, #-16]
	mov	r0, r3
	mov	r1, #0
	bl	gpioSetMode
	ldr	r3, [fp, #-20]
	mov	r0, r3
	mov	r1, #0
	bl	gpioSetMode
	b	.L4
.L16:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L5
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	mov	r3, #1
	b	.L6
.L5:
	mov	r3, #0
.L6:
	cmp	r3, #0
	beq	.L7
	sub	r3, fp, #40
	mov	r0, r3
	flds	s0, .L18
	bl	_ZN9Direction7forwardEf
.L7:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
	mov	r3, #1
	b	.L9
.L8:
	mov	r3, #0
.L9:
	cmp	r3, #0
	beq	.L10
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction13forwardManualEv
.L10:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	mov	r3, #1
	b	.L12
.L11:
	mov	r3, #0
.L12:
	cmp	r3, #0
	beq	.L13
	sub	r3, fp, #40
	mov	r0, r3
	flds	s0, .L18+4
	bl	_ZN9Direction7reverseEf
.L13:
	ldr	r3, [fp, #-12]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	mov	r3, #1
	b	.L15
.L14:
	mov	r3, #0
.L15:
	cmp	r3, #0
	beq	.L4
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction13reverseManualEv
.L4:
	ldr	r3, [fp, #-20]
	mov	r0, r3
	bl	gpioRead
	mov	r3, r0
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L16
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN9Direction10stop_motorEv
	bl	gpioTerminate
	mov	r3, #0
.L17:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L19:
	.align	2
.L18:
	.word	1048576000
	.word	1056964608
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
