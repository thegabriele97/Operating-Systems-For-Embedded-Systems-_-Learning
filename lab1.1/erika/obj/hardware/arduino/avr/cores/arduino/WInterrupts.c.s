	.file	"WInterrupts.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.nothing,"ax",@progbits
	.type	nothing, @function
nothing:
.LFB8:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\WInterrupts.c"
	.loc 1 35 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	.loc 1 36 0
	ret
	.cfi_endproc
.LFE8:
	.size	nothing, .-nothing
	.section	.text.attachInterrupt,"ax",@progbits
.global	attachInterrupt
	.type	attachInterrupt, @function
attachInterrupt:
.LFB9:
	.loc 1 69 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
	cpi r24,lo8(2)
	brsh .L2
	.loc 1 71 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,r23
	st Z,r22
	.loc 1 80 0
	cpi r24,lo8(1)
	breq .L5
	.loc 1 174 0
	lds r24,105
.LVL1:
	.loc 1 174 0
	andi r24,lo8(-4)
	.loc 1 174 0
	or r20,r24
.LVL2:
	.loc 1 174 0
	sts 105,r20
	.loc 1 175 0
	sbi 0x1d,0
	.loc 1 185 0
	ret
.LVL3:
.L5:
	.loc 1 189 0
	lds r24,105
.LVL4:
	.loc 1 189 0
	andi r24,lo8(-13)
	.loc 1 189 0
	lsl r20
	rol r21
	lsl r20
	rol r21
.LVL5:
	or r20,r24
	.loc 1 189 0
	sts 105,r20
	.loc 1 190 0
	sbi 0x1d,1
.L2:
/* epilogue start */
	.loc 1 217 0
	ret
	.cfi_endproc
.LFE9:
	.size	attachInterrupt, .-attachInterrupt
	.section	.text.detachInterrupt,"ax",@progbits
.global	detachInterrupt
	.type	detachInterrupt, @function
detachInterrupt:
.LFB10:
	.loc 1 219 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 220 0
	cpi r24,lo8(2)
	brsh .L6
	.loc 1 224 0
	mov r30,r24
	ldi r31,0
	cpi r24,lo8(1)
	breq .L9
	.loc 1 294 0
	cbi 0x1d,0
.L10:
	.loc 1 330 0
	lsl r30
	rol r31
.LVL7:
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	ldi r24,lo8(gs(nothing))
	ldi r25,hi8(gs(nothing))
	std Z+1,r25
	st Z,r24
.L6:
/* epilogue start */
	.loc 1 332 0
	ret
.LVL8:
.L9:
	.loc 1 306 0
	cbi 0x1d,1
	.loc 1 314 0
	rjmp .L10
	.cfi_endproc
.LFE10:
	.size	detachInterrupt, .-detachInterrupt
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB11:
	.loc 1 372 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 372 0
	lds r30,intFunc
	lds r31,intFunc+1
	icall
.LVL9:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE11:
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_2,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
.LFB12:
	.loc 1 373 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 373 0
	lds r30,intFunc+2
	lds r31,intFunc+2+1
	icall
.LVL10:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE12:
	.size	__vector_2, .-__vector_2
	.section	.data.intFunc,"aw",@progbits
	.type	intFunc, @object
	.size	intFunc, 4
intFunc:
	.word	gs(nothing)
	.word	gs(nothing)
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdio.h"
	.file 5 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 6 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
	.file 7 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\arduino\\avr\\variants\\standard\\pins_arduino.h"
	.file 8 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x39e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF37
	.byte	0xc
	.long	.LASF38
	.long	.LASF39
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7e
	.long	0x40
	.uleb128 0x4
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x80
	.long	0x5e
	.uleb128 0x4
	.long	0x4e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0xd8
	.long	0x5e
	.uleb128 0x6
	.long	.LASF40
	.byte	0xe
	.byte	0x4
	.byte	0xf4
	.long	0x10e
	.uleb128 0x7
	.string	"buf"
	.byte	0x4
	.byte	0xf5
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0xf6
	.long	0x40
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0xf7
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.word	0x107
	.long	0x47
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"len"
	.byte	0x4
	.word	0x108
	.long	0x47
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"put"
	.byte	0x4
	.word	0x109
	.long	0x136
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"get"
	.byte	0x4
	.word	0x10a
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.word	0x10b
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x114
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xc
	.byte	0x1
	.long	0x47
	.long	0x130
	.uleb128 0xd
	.long	0x114
	.uleb128 0xd
	.long	0x130
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x8c
	.uleb128 0xb
	.byte	0x2
	.long	0x11b
	.uleb128 0xc
	.byte	0x1
	.long	0x47
	.long	0x14c
	.uleb128 0xd
	.long	0x130
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x13c
	.uleb128 0xe
	.byte	0x2
	.uleb128 0xf
	.long	0x130
	.long	0x15f
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF15
	.byte	0x4
	.word	0x197
	.long	0x154
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF16
	.byte	0x5
	.word	0x138
	.long	0x81
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF17
	.byte	0x5
	.word	0x13d
	.long	0x10e
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF18
	.byte	0x5
	.word	0x142
	.long	0x10e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF19
	.uleb128 0xf
	.long	0x59
	.long	0x1a9
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x19e
	.uleb128 0x12
	.long	.LASF20
	.byte	0x6
	.byte	0xa4
	.long	0x1a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF21
	.byte	0x6
	.byte	0xa5
	.long	0x1a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF22
	.byte	0x6
	.byte	0xa6
	.long	0x1a9
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x3b
	.long	0x1e0
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x1d5
	.uleb128 0x12
	.long	.LASF23
	.byte	0x6
	.byte	0xa8
	.long	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF24
	.byte	0x6
	.byte	0xaa
	.long	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF25
	.byte	0x6
	.byte	0xab
	.long	0x1e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.string	"SS"
	.byte	0x7
	.byte	0x2b
	.long	0x3b
	.byte	0xa
	.uleb128 0x14
	.long	.LASF26
	.byte	0x7
	.byte	0x2c
	.long	0x3b
	.byte	0xb
	.uleb128 0x14
	.long	.LASF27
	.byte	0x7
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0x13
	.string	"SCK"
	.byte	0x7
	.byte	0x2e
	.long	0x3b
	.byte	0xd
	.uleb128 0x13
	.string	"SDA"
	.byte	0x7
	.byte	0x33
	.long	0x3b
	.byte	0x12
	.uleb128 0x13
	.string	"SCL"
	.byte	0x7
	.byte	0x34
	.long	0x3b
	.byte	0x13
	.uleb128 0x13
	.string	"A0"
	.byte	0x7
	.byte	0x41
	.long	0x3b
	.byte	0xe
	.uleb128 0x13
	.string	"A1"
	.byte	0x7
	.byte	0x42
	.long	0x3b
	.byte	0xf
	.uleb128 0x13
	.string	"A2"
	.byte	0x7
	.byte	0x43
	.long	0x3b
	.byte	0x10
	.uleb128 0x13
	.string	"A3"
	.byte	0x7
	.byte	0x44
	.long	0x3b
	.byte	0x11
	.uleb128 0x13
	.string	"A4"
	.byte	0x7
	.byte	0x45
	.long	0x3b
	.byte	0x12
	.uleb128 0x13
	.string	"A5"
	.byte	0x7
	.byte	0x46
	.long	0x3b
	.byte	0x13
	.uleb128 0x13
	.string	"A6"
	.byte	0x7
	.byte	0x47
	.long	0x3b
	.byte	0x14
	.uleb128 0x13
	.string	"A7"
	.byte	0x7
	.byte	0x48
	.long	0x3b
	.byte	0x15
	.uleb128 0x3
	.long	.LASF28
	.byte	0x8
	.byte	0x42
	.long	0x2bb
	.uleb128 0x15
	.long	0x2ab
	.uleb128 0xb
	.byte	0x2
	.long	0x2c1
	.uleb128 0x16
	.byte	0x1
	.uleb128 0xf
	.long	0x2b6
	.long	0x2d3
	.uleb128 0x17
	.long	0x5e
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	0x2c3
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.byte	0x26
	.long	0x2d3
	.byte	0x5
	.byte	0x3
	.long	intFunc
	.uleb128 0x19
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.word	0x175
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST4
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.word	0x174
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST3
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x341
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x1
	.byte	0xdb
	.long	0x30
	.long	.LLST2
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x38c
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x1
	.byte	0x45
	.long	0x30
	.long	.LLST0
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x1
	.byte	0x45
	.long	0x2bb
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1b
	.long	.LASF36
	.byte	0x1
	.byte	0x45
	.long	0x47
	.long	.LLST1
	.byte	0
	.uleb128 0x1d
	.long	.LASF41
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.long	.LFB12
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI27
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST3:
	.long	.LFB11
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LFE10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"detachInterrupt"
.LASF9:
	.string	"size_t"
.LASF33:
	.string	"attachInterrupt"
.LASF17:
	.string	"__malloc_heap_start"
.LASF36:
	.string	"mode"
.LASF2:
	.string	"uint8_t"
.LASF31:
	.string	"__vector_1"
.LASF30:
	.string	"__vector_2"
.LASF7:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF20:
	.string	"port_to_mode_PGM"
.LASF1:
	.string	"unsigned char"
.LASF40:
	.string	"__file"
.LASF35:
	.string	"userFunc"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"flags"
.LASF8:
	.string	"long long unsigned int"
.LASF28:
	.string	"voidFuncPtr"
.LASF39:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF22:
	.string	"port_to_output_PGM"
.LASF3:
	.string	"uint16_t"
.LASF10:
	.string	"unget"
.LASF37:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF13:
	.string	"udata"
.LASF14:
	.string	"char"
.LASF19:
	.string	"_Bool"
.LASF27:
	.string	"MISO"
.LASF34:
	.string	"interruptNum"
.LASF41:
	.string	"nothing"
.LASF38:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\WInterrupts.c"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"digital_pin_to_port_PGM"
.LASF29:
	.string	"intFunc"
.LASF12:
	.string	"size"
.LASF21:
	.string	"port_to_input_PGM"
.LASF24:
	.string	"digital_pin_to_bit_mask_PGM"
.LASF18:
	.string	"__malloc_heap_end"
.LASF15:
	.string	"__iob"
.LASF16:
	.string	"__malloc_margin"
.LASF25:
	.string	"digital_pin_to_timer_PGM"
.LASF26:
	.string	"MOSI"
.LASF4:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
