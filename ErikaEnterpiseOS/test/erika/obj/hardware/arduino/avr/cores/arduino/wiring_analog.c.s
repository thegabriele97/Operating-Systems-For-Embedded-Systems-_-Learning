	.file	"wiring_analog.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.analogReference,"ax",@progbits
.global	analogReference
	.type	analogReference, @function
analogReference:
.LFB8:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_analog.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	sts analog_reference,r24
/* epilogue start */
	.loc 1 36 0
	ret
	.cfi_endproc
.LFE8:
	.size	analogReference, .-analogReference
	.section	.text.analogRead,"ax",@progbits
.global	analogRead
	.type	analogRead, @function
analogRead:
.LFB9:
	.loc 1 39 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 0
	cpi r24,lo8(14)
	brlo .L3
	.loc 1 54 0 is_stmt 0 discriminator 1
	subi r24,lo8(-(-14))
.LVL2:
.L3:
	.loc 1 70 0 is_stmt 1
	lds r18,analog_reference
	ldi r25,lo8(64)
	mul r18,r25
	movw r18,r0
	clr __zero_reg__
	andi r24,lo8(7)
.LVL3:
	or r24,r18
	sts 124,r24
	.loc 1 79 0
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
.L4:
	.loc 1 82 0 discriminator 1
	lds r24,122
	.loc 1 82 0 discriminator 1
	sbrc r24,6
	rjmp .L4
	.loc 1 88 0
	lds r24,120
.LVL4:
	.loc 1 89 0
	lds r25,121
.LVL5:
/* epilogue start */
	.loc 1 98 0
	ret
	.cfi_endproc
.LFE9:
	.size	analogRead, .-analogRead
	.section	.text.analogWrite,"ax",@progbits
.global	analogWrite
	.type	analogWrite, @function
analogWrite:
.LFB10:
	.loc 1 105 0
	.cfi_startproc
.LVL6:
	push r17
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	.loc 1 111 0
	ldi r22,lo8(1)
.LVL7:
	call pinMode
.LVL8:
	.loc 1 112 0
	sbiw r28,0
	brne .L7
.L18:
	.loc 1 114 0
	ldi r22,0
.L20:
	.loc 1 118 0
	mov r24,r17
/* epilogue start */
	.loc 1 293 0
	pop r29
	pop r28
.LVL9:
	pop r17
.LVL10:
	.loc 1 118 0
	jmp digitalWrite
.LVL11:
.L7:
	.loc 1 116 0
	cpi r28,-1
	cpc r29,__zero_reg__
	brne .L8
.L19:
	.loc 1 118 0
	ldi r22,lo8(1)
	rjmp .L20
.L8:
.LVL12:
.LBB2:
	.loc 1 122 0
	mov r30,r17
	ldi r31,0
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
	.loc 1 122 0
/* #APP */
 ;  122 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_analog.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL13:
/* #NOAPP */
.LBE2:
	.loc 1 122 0
	cpi r30,lo8(3)
	breq .L10
	brsh .L11
	cpi r30,lo8(1)
	breq .L12
	cpi r30,lo8(2)
	breq .L13
.L9:
	.loc 1 286 0
	cpi r28,-128
	cpc r29,__zero_reg__
	brge .L19
	rjmp .L18
.L11:
	.loc 1 122 0
	cpi r30,lo8(7)
	breq .L14
	cpi r30,lo8(8)
	breq .L15
	cpi r30,lo8(4)
	brne .L9
	.loc 1 160 0
	lds r24,128
	ori r24,lo8(32)
	sts 128,r24
	.loc 1 161 0
	sts 138+1,r29
	sts 138,r28
	.loc 1 162 0
	rjmp .L6
.L12:
	.loc 1 136 0
	in r24,0x24
	ori r24,lo8(-128)
	out 0x24,r24
	.loc 1 137 0
	out 0x27,r28
.L6:
/* epilogue start */
	.loc 1 293 0
	pop r29
	pop r28
.LVL14:
	pop r17
.LVL15:
	ret
.LVL16:
.L13:
	.loc 1 144 0
	in r24,0x24
	ori r24,lo8(32)
	out 0x24,r24
	.loc 1 145 0
	out 0x28,r28
	.loc 1 146 0
	rjmp .L6
.L10:
	.loc 1 152 0
	lds r24,128
	ori r24,lo8(-128)
	sts 128,r24
	.loc 1 153 0
	sts 136+1,r29
	sts 136,r28
	.loc 1 154 0
	rjmp .L6
.L14:
	.loc 1 184 0
	lds r24,176
	ori r24,lo8(-128)
	sts 176,r24
	.loc 1 185 0
	sts 179,r28
	.loc 1 186 0
	rjmp .L6
.L15:
	.loc 1 192 0
	lds r24,176
	ori r24,lo8(32)
	sts 176,r24
	.loc 1 193 0
	sts 180,r28
	.loc 1 194 0
	rjmp .L6
	.cfi_endproc
.LFE10:
	.size	analogWrite, .-analogWrite
.global	analog_reference
	.section	.data.analog_reference,"aw",@progbits
	.type	analog_reference, @object
	.size	analog_reference, 1
analog_reference:
	.byte	1
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdio.h"
	.file 5 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 6 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
	.file 7 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ce
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0xc
	.long	.LASF37
	.long	.LASF38
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
	.long	.LASF39
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
	.long	.LASF28
	.byte	0x1
	.byte	0x1c
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	analog_reference
	.uleb128 0x16
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST1
	.byte	0x1
	.long	0x347
	.uleb128 0x17
	.string	"pin"
	.byte	0x1
	.byte	0x68
	.long	0x30
	.long	.LLST2
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x68
	.long	0x47
	.long	.LLST3
	.uleb128 0x18
	.long	.LBB2
	.long	.LBE2
	.long	0x31b
	.uleb128 0x19
	.long	.LASF40
	.byte	0x1
	.byte	0x7a
	.long	0x4e
	.uleb128 0x1a
	.long	.LASF29
	.byte	0x1
	.byte	0x7a
	.long	0x30
	.byte	0x1
	.byte	0x6e
	.byte	0
	.uleb128 0x1b
	.long	.LVL8
	.long	0x3b7
	.long	0x334
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL11
	.byte	0x1
	.long	0x3c4
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x47
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x38f
	.uleb128 0x17
	.string	"pin"
	.byte	0x1
	.byte	0x26
	.long	0x30
	.long	.LLST0
	.uleb128 0x1f
	.string	"low"
	.byte	0x1
	.byte	0x28
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x1a
	.long	.LASF30
	.byte	0x1
	.byte	0x28
	.long	0x30
	.byte	0x1
	.byte	0x69
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3b7
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0x1e
	.long	0x30
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.long	.LASF34
	.long	.LASF34
	.byte	0x6
	.byte	0x86
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.long	.LASF35
	.long	.LASF35
	.byte	0x6
	.byte	0x87
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
.LLST1:
	.long	.LFB10
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
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL8-1
	.word	0x1
	.byte	0x68
	.long	.LVL8-1
	.long	.LVL10
	.word	0x1
	.byte	0x61
	.long	.LVL10
	.long	.LVL11-1
	.word	0x1
	.byte	0x68
	.long	.LVL11-1
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL15
	.word	0x1
	.byte	0x61
	.long	.LVL15
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LFE10
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL9
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL16
	.long	.LFE10
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF17:
	.string	"__malloc_heap_start"
.LASF33:
	.string	"mode"
.LASF2:
	.string	"uint8_t"
.LASF32:
	.string	"analogReference"
.LASF40:
	.string	"__addr16"
.LASF7:
	.string	"long long int"
.LASF37:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_analog.c"
.LASF31:
	.string	"analogWrite"
.LASF5:
	.string	"long int"
.LASF30:
	.string	"high"
.LASF20:
	.string	"port_to_mode_PGM"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"__file"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"flags"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF22:
	.string	"port_to_output_PGM"
.LASF3:
	.string	"uint16_t"
.LASF29:
	.string	"__result"
.LASF10:
	.string	"unget"
.LASF36:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF13:
	.string	"udata"
.LASF14:
	.string	"char"
.LASF19:
	.string	"_Bool"
.LASF27:
	.string	"MISO"
.LASF35:
	.string	"digitalWrite"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"digital_pin_to_port_PGM"
.LASF28:
	.string	"analog_reference"
.LASF41:
	.string	"analogRead"
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
.LASF38:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF34:
	.string	"pinMode"
.LASF16:
	.string	"__malloc_margin"
.LASF25:
	.string	"digital_pin_to_timer_PGM"
.LASF26:
	.string	"MOSI"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
