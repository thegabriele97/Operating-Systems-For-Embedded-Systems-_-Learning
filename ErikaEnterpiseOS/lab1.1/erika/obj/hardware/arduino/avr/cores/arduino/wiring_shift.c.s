	.file	"wiring_shift.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.shiftIn,"ax",@progbits
.global	shiftIn
	.type	shiftIn, @function
shiftIn:
.LFB8:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_shift.c"
	.loc 1 25 0
	.cfi_startproc
.LVL0:
	push r12
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r15,r24
	mov r29,r22
	mov r14,r20
.LVL1:
	.loc 1 25 0
	ldi r17,0
	ldi r16,0
	.loc 1 26 0
	ldi r28,0
	.loc 1 34 0
	ldi r24,lo8(7)
	mov r12,r24
	mov r13,__zero_reg__
.LVL2:
.L4:
	.loc 1 30 0
	ldi r22,lo8(1)
	mov r24,r29
	call digitalWrite
.LVL3:
	.loc 1 32 0
	mov r24,r15
	.loc 1 31 0
	cpse r14,__zero_reg__
	rjmp .L2
	.loc 1 32 0
	call digitalRead
.LVL4:
	mov r0,r16
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
.L6:
	.loc 1 34 0
	or r28,r24
.LVL5:
	.loc 1 35 0
	ldi r22,0
	mov r24,r29
	call digitalWrite
.LVL6:
	subi r16,-1
	sbci r17,-1
.LVL7:
	.loc 1 29 0
	cpi r16,8
	cpc r17,__zero_reg__
	brne .L4
	.loc 1 38 0
	mov r24,r28
/* epilogue start */
	pop r29
.LVL8:
	pop r28
.LVL9:
	pop r17
	pop r16
.LVL10:
	pop r15
.LVL11:
	pop r14
.LVL12:
	pop r13
	pop r12
	ret
.LVL13:
.L2:
	.loc 1 34 0
	call digitalRead
.LVL14:
	movw r18,r12
	sub r18,r16
	sbc r19,r17
	rjmp 2f
	1:
	lsl r24
	2:
	dec r18
	brpl 1b
	rjmp .L6
	.cfi_endproc
.LFE8:
	.size	shiftIn, .-shiftIn
	.section	.text.shiftOut,"ax",@progbits
.global	shiftOut
	.type	shiftOut, @function
shiftOut:
.LFB9:
	.loc 1 41 0
	.cfi_startproc
.LVL15:
	push r15
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r16,r24
	mov r17,r22
	mov r15,r20
	mov r28,r18
.LVL16:
	.loc 1 41 0
	ldi r29,lo8(8)
.LVL17:
.L10:
	.loc 1 46 0
	mov r22,r28
	.loc 1 45 0
	cpse r15,__zero_reg__
	rjmp .L8
.LVL18:
	.loc 1 46 0
	andi r22,lo8(1)
.LVL19:
	mov r24,r16
	call digitalWrite
.LVL20:
	.loc 1 47 0
	lsr r28
.LVL21:
.L9:
	.loc 1 53 0 discriminator 2
	ldi r22,lo8(1)
	mov r24,r17
	call digitalWrite
.LVL22:
	.loc 1 54 0 discriminator 2
	ldi r22,0
	mov r24,r17
	call digitalWrite
.LVL23:
	subi r29,lo8(-(-1))
.LVL24:
	.loc 1 44 0 discriminator 2
	brne .L10
/* epilogue start */
	.loc 1 56 0
	pop r29
.LVL25:
	pop r28
.LVL26:
	pop r17
.LVL27:
	pop r16
.LVL28:
	pop r15
.LVL29:
	ret
.LVL30:
.L8:
	.loc 1 49 0
	rol r22
	clr r22
	rol r22
.LVL31:
	mov r24,r16
	call digitalWrite
.LVL32:
	.loc 1 50 0
	lsl r28
.LVL33:
	rjmp .L9
	.cfi_endproc
.LFE9:
	.size	shiftOut, .-shiftOut
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdio.h"
	.file 5 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 6 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
	.file 7 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\arduino\\avr\\variants\\standard\\pins_arduino.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x444
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF34
	.byte	0xc
	.long	.LASF35
	.long	.LASF36
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
	.long	.LASF37
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
	.uleb128 0x15
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST6
	.byte	0x1
	.long	0x375
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.byte	0x28
	.long	0x30
	.long	.LLST7
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.byte	0x28
	.long	0x30
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0x28
	.long	0x30
	.long	.LLST9
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x28
	.long	0x30
	.long	.LLST10
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x30
	.long	.LLST11
	.uleb128 0x19
	.long	.LVL20
	.long	0x42d
	.long	0x32a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.long	.LVL22
	.long	0x42d
	.long	0x343
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	.LVL23
	.long	0x42d
	.long	0x35c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LVL32
	.long	0x42d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x37
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x30
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x42d
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.byte	0x19
	.long	0x30
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.byte	0x19
	.long	0x30
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0x19
	.long	0x30
	.long	.LLST3
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x1
	.byte	0x1a
	.long	0x30
	.long	.LLST4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.long	0x30
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL3
	.long	0x42d
	.long	0x3f5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	.LVL4
	.long	0x43a
	.long	0x409
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL6
	.long	0x42d
	.long	0x423
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL14
	.long	0x43a
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.long	.LASF32
	.long	.LASF32
	.byte	0x6
	.byte	0x87
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.long	.LASF33
	.long	.LASF33
	.byte	0x6
	.byte	0x88
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST6:
	.long	.LFB9
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL28
	.word	0x1
	.byte	0x60
	.long	.LVL28
	.long	.LVL30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL30
	.long	.LFE9
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL17
	.word	0x1
	.byte	0x66
	.long	.LVL17
	.long	.LVL27
	.word	0x1
	.byte	0x61
	.long	.LVL27
	.long	.LVL30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL30
	.long	.LFE9
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL17
	.word	0x1
	.byte	0x64
	.long	.LVL17
	.long	.LVL29
	.word	0x1
	.byte	0x5f
	.long	.LVL29
	.long	.LVL30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL30
	.long	.LFE9
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL17
	.word	0x1
	.byte	0x62
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x6c
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x66
	.long	.LVL19
	.long	.LVL26
	.word	0x1
	.byte	0x6c
	.long	.LVL30
	.long	.LVL31
	.word	0x1
	.byte	0x66
	.long	.LVL31
	.long	.LFE9
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL23
	.word	0x5
	.byte	0x38
	.byte	0x8d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x5
	.byte	0x39
	.byte	0x8d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x5
	.byte	0x38
	.byte	0x8d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL30
	.long	.LFE9
	.word	0x5
	.byte	0x38
	.byte	0x8d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST0:
	.long	.LFB8
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
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LVL11
	.word	0x1
	.byte	0x5f
	.long	.LVL11
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL13
	.long	.LFE8
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x66
	.long	.LVL2
	.long	.LVL8
	.word	0x1
	.byte	0x6d
	.long	.LVL8
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL13
	.long	.LFE8
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x64
	.long	.LVL2
	.long	.LVL12
	.word	0x1
	.byte	0x5e
	.long	.LVL12
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL13
	.long	.LFE8
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL9
	.word	0x1
	.byte	0x6c
	.long	.LVL9
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LFE8
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL6
	.word	0x1
	.byte	0x60
	.long	.LVL6
	.long	.LVL7
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL7
	.long	.LVL10
	.word	0x1
	.byte	0x60
	.long	.LVL13
	.long	.LFE8
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_shift.c"
.LASF17:
	.string	"__malloc_heap_start"
.LASF29:
	.string	"clockPin"
.LASF31:
	.string	"value"
.LASF2:
	.string	"uint8_t"
.LASF38:
	.string	"shiftOut"
.LASF7:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF20:
	.string	"port_to_mode_PGM"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"__file"
.LASF39:
	.string	"shiftIn"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"flags"
.LASF8:
	.string	"long long unsigned int"
.LASF36:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF22:
	.string	"port_to_output_PGM"
.LASF3:
	.string	"uint16_t"
.LASF10:
	.string	"unget"
.LASF34:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF30:
	.string	"bitOrder"
.LASF13:
	.string	"udata"
.LASF28:
	.string	"dataPin"
.LASF14:
	.string	"char"
.LASF19:
	.string	"_Bool"
.LASF27:
	.string	"MISO"
.LASF9:
	.string	"size_t"
.LASF32:
	.string	"digitalWrite"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"digital_pin_to_port_PGM"
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
.LASF33:
	.string	"digitalRead"
	.ident	"GCC: (GNU) 7.3.0"
