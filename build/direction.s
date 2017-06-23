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
	.file	"direction.cpp"
	.text
	.align	2
	.global	_ZN9DirectionC2Ev
	.type	_ZN9DirectionC2Ev, %function
_ZN9DirectionC2Ev:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #12
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #16
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r2, #20
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	mov	r2, #21
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, .L4
	str	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	3000
	.cantunwind
	.fnend
	.size	_ZN9DirectionC2Ev, .-_ZN9DirectionC2Ev
	.global	_ZN9DirectionC1Ev
_ZN9DirectionC1Ev = _ZN9DirectionC2Ev
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Forward\000"
	.text
	.align	2
	.global	_ZN9Direction7forwardEf
	.type	_ZN9Direction7forwardEf, %function
_ZN9Direction7forwardEf:
	.fnstart
.LFB14:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	fsts	s0, [fp, #-20]
	ldr	r0, .L9+8
	bl	puts
	flds	s15, [fp, #-20]
	flds	s14, .L9
	fmuls	s15, s15, s14
	fsts	s15, [fp, #-12]
	b	.L7
.L8:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	flds	s15, [fp, #-8]
	flds	s14, .L9+4
	fadds	s15, s15, s14
	fsts	s15, [fp, #-8]
.L7:
	flds	s14, [fp, #-8]
	flds	s15, [fp, #-12]
	fcmpes	s14, s15
	fmstat
	bmi	.L8
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L10:
	.align	2
.L9:
	.word	1132462080
	.word	1065353216
	.word	.LC0
	.fnend
	.size	_ZN9Direction7forwardEf, .-_ZN9Direction7forwardEf
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Backwards\000"
	.text
	.align	2
	.global	_ZN9Direction7reverseEf
	.type	_ZN9Direction7reverseEf, %function
_ZN9Direction7reverseEf:
	.fnstart
.LFB15:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	fsts	s0, [fp, #-20]
	ldr	r0, .L14+8
	bl	puts
	flds	s15, [fp, #-20]
	flds	s14, .L14
	fmuls	s15, s15, s14
	fsts	s15, [fp, #-12]
	b	.L12
.L13:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #1
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	usleep
	flds	s15, [fp, #-8]
	flds	s14, .L14+4
	fadds	s15, s15, s14
	fsts	s15, [fp, #-8]
.L12:
	flds	s14, [fp, #-8]
	flds	s15, [fp, #-12]
	fcmpes	s14, s15
	fmstat
	bmi	.L13
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L15:
	.align	2
.L14:
	.word	1132462080
	.word	1065353216
	.word	.LC1
	.fnend
	.size	_ZN9Direction7reverseEf, .-_ZN9Direction7reverseEf
	.align	2
	.global	_ZN9Direction10stop_motorEv
	.type	_ZN9Direction10stop_motorEv, %function
_ZN9Direction10stop_motorEv:
	.fnstart
.LFB16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #0
	bl	gpioWrite
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN9Direction10stop_motorEv, .-_ZN9Direction10stop_motorEv
	.align	2
	.global	_ZN9Direction4getAEv
	.type	_ZN9Direction4getAEv, %function
_ZN9Direction4getAEv:
	.fnstart
.LFB17:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4getAEv, .-_ZN9Direction4getAEv
	.align	2
	.global	_ZN9Direction4getBEv
	.type	_ZN9Direction4getBEv, %function
_ZN9Direction4getBEv:
	.fnstart
.LFB18:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4getBEv, .-_ZN9Direction4getBEv
	.align	2
	.global	_ZN9Direction4getCEv
	.type	_ZN9Direction4getCEv, %function
_ZN9Direction4getCEv:
	.fnstart
.LFB19:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4getCEv, .-_ZN9Direction4getCEv
	.align	2
	.global	_ZN9Direction4getDEv
	.type	_ZN9Direction4getDEv, %function
_ZN9Direction4getDEv:
	.fnstart
.LFB20:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4getDEv, .-_ZN9Direction4getDEv
	.align	2
	.global	_ZN9Direction11getDelay_usEv
	.type	_ZN9Direction11getDelay_usEv, %function
_ZN9Direction11getDelay_usEv:
	.fnstart
.LFB21:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #16]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction11getDelay_usEv, .-_ZN9Direction11getDelay_usEv
	.align	2
	.global	_ZN9Direction4setAEi
	.type	_ZN9Direction4setAEi, %function
_ZN9Direction4setAEi:
	.fnstart
.LFB22:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4setAEi, .-_ZN9Direction4setAEi
	.align	2
	.global	_ZN9Direction4setBEi
	.type	_ZN9Direction4setBEi, %function
_ZN9Direction4setBEi:
	.fnstart
.LFB23:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #4]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4setBEi, .-_ZN9Direction4setBEi
	.align	2
	.global	_ZN9Direction4setCEi
	.type	_ZN9Direction4setCEi, %function
_ZN9Direction4setCEi:
	.fnstart
.LFB24:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #8]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4setCEi, .-_ZN9Direction4setCEi
	.align	2
	.global	_ZN9Direction4setDEi
	.type	_ZN9Direction4setDEi, %function
_ZN9Direction4setDEi:
	.fnstart
.LFB25:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction4setDEi, .-_ZN9Direction4setDEi
	.align	2
	.global	_ZN9Direction11setDelay_usEi
	.type	_ZN9Direction11setDelay_usEi, %function
_ZN9Direction11setDelay_usEi:
	.fnstart
.LFB26:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #16]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9Direction11setDelay_usEi, .-_ZN9Direction11setDelay_usEi
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
