	.file	"WMath.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z10randomSeedm,"ax",@progbits
.global	_Z10randomSeedm
	.type	_Z10randomSeedm, @function
_Z10randomSeedm:
.LFB4:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\WMath.cpp"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 30 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L1
	.loc 1 31 0
	jmp srandom
.LVL1:
.L1:
/* epilogue start */
	.loc 1 33 0
	ret
	.cfi_endproc
.LFE4:
	.size	_Z10randomSeedm, .-_Z10randomSeedm
	.section	.text._Z6randoml,"ax",@progbits
.global	_Z6randoml
	.type	_Z6randoml, @function
_Z6randoml:
.LFB5:
	.loc 1 36 0
	.cfi_startproc
.LVL2:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	.loc 1 37 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L4
	.loc 1 40 0
	call random
.LVL3:
	movw r20,r14
	movw r18,r12
	call __divmodsi4
	movw r12,r22
	movw r14,r24
.L4:
	.loc 1 41 0
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE5:
	.size	_Z6randoml, .-_Z6randoml
	.section	.text._Z6randomll,"ax",@progbits
.global	_Z6randomll
	.type	_Z6randomll, @function
_Z6randomll:
.LFB6:
	.loc 1 44 0
	.cfi_startproc
.LVL4:
	push r12
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	.loc 1 45 0
	cp r12,r18
	cpc r13,r19
	cpc r14,r20
	cpc r15,r21
	brge .L9
.LVL5:
	.loc 1 48 0
	movw r24,r20
	movw r22,r18
.LVL6:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	.loc 1 49 0
	call _Z6randoml
.LVL7:
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.LVL8:
.L9:
	.loc 1 50 0
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE6:
	.size	_Z6randomll, .-_Z6randomll
	.section	.text._Z3maplllll,"ax",@progbits
.global	_Z3maplllll
	.type	_Z3maplllll, @function
_Z3maplllll:
.LFB7:
	.loc 1 53 0
	.cfi_startproc
.LVL9:
	push r4
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 4, -2
	push r5
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 5, -3
	push r6
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 6, -4
	push r7
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 7, -5
	push r10
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 10, -6
	push r11
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -7
	push r12
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 12, -8
	push r13
.LCFI15:
	.cfi_def_cfa_offset 10
	.cfi_offset 13, -9
	push r14
.LCFI16:
	.cfi_def_cfa_offset 11
	.cfi_offset 14, -10
	push r15
.LCFI17:
	.cfi_def_cfa_offset 12
	.cfi_offset 15, -11
	push r16
.LCFI18:
	.cfi_def_cfa_offset 13
	.cfi_offset 16, -12
	push r17
.LCFI19:
	.cfi_def_cfa_offset 14
	.cfi_offset 17, -13
	push r28
.LCFI20:
	.cfi_def_cfa_offset 15
	.cfi_offset 28, -14
	push r29
.LCFI21:
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -15
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI22:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r4,r18
	movw r6,r20
	.loc 1 54 0
	movw r18,r22
.LVL10:
	movw r20,r24
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	movw r22,r24
.LVL11:
	movw r24,r26
	sub r22,r10
	sbc r23,r11
	sbc r24,r12
	sbc r25,r13
	call __mulsi3
	movw r20,r16
	movw r18,r14
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	call __divmodsi4
	movw r24,r20
	movw r22,r18
	add r22,r10
	adc r23,r11
	adc r24,r12
	adc r25,r13
/* epilogue start */
	.loc 1 55 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL12:
	pop r13
	pop r12
	pop r11
	pop r10
.LVL13:
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.cfi_endproc
.LFE7:
	.size	_Z3maplllll, .-_Z3maplllll
	.section	.text._Z8makeWordj,"ax",@progbits
.global	_Z8makeWordj
	.type	_Z8makeWordj, @function
_Z8makeWordj:
.LFB8:
	.loc 1 57 0
	.cfi_startproc
.LVL14:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	.loc 1 57 0
	ret
	.cfi_endproc
.LFE8:
	.size	_Z8makeWordj, .-_Z8makeWordj
	.section	.text._Z8makeWordhh,"ax",@progbits
.global	_Z8makeWordhh
	.type	_Z8makeWordhh, @function
_Z8makeWordhh:
.LFB9:
	.loc 1 58 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 58 0
	mov r25,r24
	mov r24,r22
.LVL16:
/* epilogue start */
	ret
	.cfi_endproc
.LFE9:
	.size	_Z8makeWordhh, .-_Z8makeWordhh
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x259
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.long	.LASF23
	.long	.LASF24
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x3
	.byte	0xd8
	.long	0x34
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.word	0x138
	.long	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.word	0x13d
	.long	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.long	0x6b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.word	0x142
	.long	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF7
	.byte	0x1
	.byte	0x3a
	.long	.LASF8
	.long	0x34
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xba
	.uleb128 0x8
	.string	"h"
	.byte	0x1
	.byte	0x3a
	.long	0xba
	.long	.LLST12
	.uleb128 0x9
	.string	"l"
	.byte	0x1
	.byte	0x3a
	.long	0xba
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x7
	.byte	0x1
	.long	.LASF7
	.byte	0x1
	.byte	0x39
	.long	.LASF9
	.long	0x34
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf3
	.uleb128 0x9
	.string	"w"
	.byte	0x1
	.byte	0x39
	.long	0x34
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"map"
	.byte	0x1
	.byte	0x34
	.long	.LASF26
	.long	0x42
	.long	.LFB7
	.long	.LFE7
	.long	.LLST7
	.byte	0x1
	.long	0x15d
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x34
	.long	0x42
	.long	.LLST8
	.uleb128 0xb
	.long	.LASF10
	.byte	0x1
	.byte	0x34
	.long	0x42
	.long	.LLST9
	.uleb128 0xb
	.long	.LASF11
	.byte	0x1
	.byte	0x34
	.long	0x42
	.long	.LLST10
	.uleb128 0xb
	.long	.LASF12
	.byte	0x1
	.byte	0x34
	.long	0x42
	.long	.LLST11
	.uleb128 0xc
	.long	.LASF13
	.byte	0x1
	.byte	0x34
	.long	0x42
	.byte	0x2
	.byte	0x91
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x2b
	.long	.LASF15
	.long	0x42
	.long	.LFB6
	.long	.LFE6
	.long	.LLST3
	.byte	0x1
	.long	0x1b5
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x2b
	.long	0x42
	.long	.LLST4
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x2b
	.long	0x42
	.long	.LLST5
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x30
	.long	0x42
	.long	.LLST6
	.uleb128 0xf
	.long	.LVL7
	.long	0x1b5
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x23
	.long	.LASF18
	.long	0x42
	.long	.LFB5
	.long	.LFE5
	.long	.LLST1
	.byte	0x1
	.long	0x1ef
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x23
	.long	0x42
	.long	.LLST2
	.uleb128 0xf
	.long	.LVL3
	.long	0x240
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x1c
	.long	.LASF29
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x239
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x1c
	.long	0x239
	.long	.LLST0
	.uleb128 0x11
	.long	.LVL1
	.byte	0x1
	.long	0x24e
	.uleb128 0x12
	.byte	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF20
	.uleb128 0x13
	.byte	0x1
	.byte	0x1
	.long	.LASF14
	.long	.LASF14
	.byte	0x2
	.word	0x24e
	.uleb128 0x13
	.byte	0x1
	.byte	0x1
	.long	.LASF21
	.long	.LASF21
	.byte	0x2
	.word	0x253
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST12:
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LFE9
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST7:
	.long	.LFB7
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
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI22
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 16
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL11
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL9
	.long	.LVL10
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL9
	.long	.LVL12
	.word	0xc
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL9
	.long	.LVL13
	.word	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB6
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL7-1
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL7-1
	.long	.LVL8
	.word	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LFB5
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
	.long	.LFE5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-1
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LVL1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL1
	.long	.LFE4
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"size_t"
.LASF13:
	.string	"out_max"
.LASF22:
	.string	"GNU C++11 7.3.0 -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF26:
	.string	"_Z3maplllll"
.LASF5:
	.string	"__malloc_heap_end"
.LASF14:
	.string	"random"
.LASF27:
	.string	"diff"
.LASF12:
	.string	"out_min"
.LASF10:
	.string	"in_min"
.LASF7:
	.string	"makeWord"
.LASF3:
	.string	"__malloc_heap_start"
.LASF21:
	.string	"srandom"
.LASF6:
	.string	"unsigned char"
.LASF17:
	.string	"howbig"
.LASF4:
	.string	"char"
.LASF18:
	.string	"_Z6randoml"
.LASF1:
	.string	"long int"
.LASF19:
	.string	"seed"
.LASF9:
	.string	"_Z8makeWordj"
.LASF20:
	.string	"long unsigned int"
.LASF24:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF11:
	.string	"in_max"
.LASF28:
	.string	"randomSeed"
.LASF8:
	.string	"_Z8makeWordhh"
.LASF29:
	.string	"_Z10randomSeedm"
.LASF2:
	.string	"__malloc_margin"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"howsmall"
.LASF15:
	.string	"_Z6randomll"
.LASF23:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\WMath.cpp"
	.ident	"GCC: (GNU) 7.3.0"
