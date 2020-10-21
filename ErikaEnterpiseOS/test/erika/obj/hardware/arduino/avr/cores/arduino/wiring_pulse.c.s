	.file	"wiring_pulse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pulseIn,"ax",@progbits
.global	pulseIn
	.type	pulseIn, @function
pulseIn:
.LFB8:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_pulse.c"
	.loc 1 34 0
	.cfi_startproc
.LVL0:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB2:
	.loc 1 38 0
	ldi r25,0
.LVL1:
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL2:
	.loc 1 38 0
/* #APP */
 ;  38 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r23, Z
	
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE2:
.LBB3:
	.loc 1 39 0
	movw r30,r24
.LVL4:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL5:
	.loc 1 39 0
/* #APP */
 ;  39 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.LBE3:
	.loc 1 40 0
	cpse r22,__zero_reg__
	mov r22,r23
.LVL7:
.L2:
.LBB4:
	.loc 1 46 0 discriminator 4
	ldi r31,0
	lsl r30
	rol r31
.LVL8:
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
.LVL9:
	.loc 1 46 0 discriminator 4
/* #APP */
 ;  46 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE4:
	.loc 1 44 0 discriminator 4
	movw r16,r18
	movw r18,r20
.LVL11:
	andi r19,15
	.loc 1 46 0 discriminator 4
	mov r20,r22
	mov r22,r23
.LVL12:
	call countPulseASM
.LVL13:
	.loc 1 49 0 discriminator 4
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L1
	.loc 1 50 0
	subi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
.LVL14:
	andi r25,15
.LVL15:
.L1:
/* epilogue start */
	.loc 1 53 0
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE8:
	.size	pulseIn, .-pulseIn
	.section	.text.pulseInLong,"ax",@progbits
.global	pulseInLong
	.type	pulseInLong, @function
pulseInLong:
.LFB9:
	.loc 1 64 0
	.cfi_startproc
.LVL16:
	push r4
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 4, -2
	push r5
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 5, -3
	push r6
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 6, -4
	push r7
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 7, -5
	push r8
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 8, -6
	push r9
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 9, -7
	push r10
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 10, -8
	push r11
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 11, -9
	push r12
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 12, -10
	push r13
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 13, -11
	push r14
.LCFI12:
	.cfi_def_cfa_offset 13
	.cfi_offset 14, -12
	push r15
.LCFI13:
	.cfi_def_cfa_offset 14
	.cfi_offset 15, -13
	push r16
.LCFI14:
	.cfi_def_cfa_offset 15
	.cfi_offset 16, -14
	push r17
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -15
	push r28
.LCFI16:
	.cfi_def_cfa_offset 17
	.cfi_offset 28, -16
	push r29
.LCFI17:
	.cfi_def_cfa_offset 18
	.cfi_offset 29, -17
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r7,r22
	movw r8,r18
	movw r10,r20
.LBB5:
	.loc 1 68 0
	ldi r25,0
.LVL17:
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL18:
	.loc 1 68 0
/* #APP */
 ;  68 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r17, Z
	
 ;  0 "" 2
.LVL19:
/* #NOAPP */
.LBE5:
.LBB6:
	.loc 1 69 0
	subi r24,lo8(-(digital_pin_to_port_PGM))
	sbci r25,hi8(-(digital_pin_to_port_PGM))
.LVL20:
	.loc 1 69 0
	movw r30,r24
.LVL21:
/* #APP */
 ;  69 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL22:
/* #NOAPP */
.LBE6:
	.loc 1 70 0
	cpse r22,__zero_reg__
	mov r7,r17
.L9:
.LVL23:
	.loc 1 72 0 discriminator 4
	call micros
.LVL24:
	movw r12,r22
	movw r14,r24
.LVL25:
.LBB7:
	.loc 1 75 0 discriminator 4
	ldi r29,0
	lsl r28
	rol r29
.LVL26:
	subi r28,lo8(-(port_to_input_PGM))
	sbci r29,hi8(-(port_to_input_PGM))
.L10:
.LVL27:
	.loc 1 75 0
	movw r30,r28
/* #APP */
 ;  75 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL28:
/* #NOAPP */
.LBE7:
	.loc 1 75 0
	ld r24,X
	.loc 1 75 0
	and r24,r17
	.loc 1 75 0
	cp r24,r7
	breq .L12
.LVL29:
.L13:
.LBB8:
	.loc 1 81 0
	movw r30,r28
/* #APP */
 ;  81 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL30:
/* #NOAPP */
.LBE8:
	.loc 1 81 0
	ld r16,X
	.loc 1 81 0
	and r16,r17
	.loc 1 81 0
	cpse r16,r7
	rjmp .L15
	.loc 1 86 0
	call micros
.LVL31:
	movw r4,r22
	movw r6,r24
.LVL32:
.L16:
.LBB9:
	.loc 1 88 0
	movw r30,r28
/* #APP */
 ;  88 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL33:
/* #NOAPP */
.LBE9:
	.loc 1 88 0
	ld r24,X
	.loc 1 88 0
	and r24,r17
	.loc 1 88 0
	cp r16,r24
	breq .L17
	.loc 1 92 0
	call micros
.LVL34:
	sub r22,r4
	sbc r23,r5
	sbc r24,r6
	sbc r25,r7
	rjmp .L8
.LVL35:
.L12:
	.loc 1 76 0
	call micros
.LVL36:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cp r8,r22
	cpc r9,r23
	cpc r10,r24
	cpc r11,r25
	brsh .L10
.L14:
	.loc 1 77 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.L8:
/* epilogue start */
	.loc 1 93 0
	pop r29
	pop r28
	pop r17
.LVL37:
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL38:
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
.LVL39:
	pop r6
	pop r5
	pop r4
	ret
.LVL40:
.L15:
	.loc 1 82 0
	call micros
.LVL41:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cp r8,r22
	cpc r9,r23
	cpc r10,r24
	cpc r11,r25
	brlo .+2
	rjmp .L13
	rjmp .L14
.LVL42:
.L17:
	.loc 1 89 0
	call micros
.LVL43:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cp r8,r22
	cpc r9,r23
	cpc r10,r24
	cpc r11,r25
	brlo .+2
	rjmp .L16
	rjmp .L14
	.cfi_endproc
.LFE9:
	.size	pulseInLong, .-pulseInLong
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdio.h"
	.file 5 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 6 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
	.file 7 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 8 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x595
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF42
	.byte	0xc
	.long	.LASF43
	.long	.LASF44
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
	.long	.LASF45
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
	.long	.LASF36
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x6c
	.long	.LFB9
	.long	.LFE9
	.long	.LLST15
	.byte	0x1
	.long	0x448
	.uleb128 0x16
	.string	"pin"
	.byte	0x1
	.byte	0x3f
	.long	0x30
	.long	.LLST16
	.uleb128 0x17
	.long	.LASF28
	.byte	0x1
	.byte	0x3f
	.long	0x30
	.long	.LLST17
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x3f
	.long	0x6c
	.long	.LLST18
	.uleb128 0x18
	.string	"bit"
	.byte	0x1
	.byte	0x44
	.long	0x30
	.long	.LLST19
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x45
	.long	0x30
	.long	.LLST20
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x46
	.long	0x30
	.long	.LLST21
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0x48
	.long	0x6c
	.long	.LLST22
	.uleb128 0x19
	.long	.LASF33
	.byte	0x1
	.byte	0x56
	.long	0x6c
	.long	.LLST23
	.uleb128 0x1a
	.long	.LBB5
	.long	.LBE5
	.long	0x36d
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.byte	0x44
	.long	0x4e
	.long	.LLST24
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x44
	.long	0x30
	.long	.LLST19
	.byte	0
	.uleb128 0x1a
	.long	.LBB6
	.long	.LBE6
	.long	0x399
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.byte	0x45
	.long	0x4e
	.long	.LLST26
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x45
	.long	0x30
	.long	.LLST20
	.byte	0
	.uleb128 0x1a
	.long	.LBB7
	.long	.LBE7
	.long	0x3c1
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x1
	.byte	0x4b
	.long	0x4e
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x4b
	.long	0x4e
	.long	.LLST28
	.byte	0
	.uleb128 0x1a
	.long	.LBB8
	.long	.LBE8
	.long	0x3e9
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x1
	.byte	0x51
	.long	0x4e
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x51
	.long	0x4e
	.long	.LLST29
	.byte	0
	.uleb128 0x1a
	.long	.LBB9
	.long	.LBE9
	.long	0x411
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x1
	.byte	0x58
	.long	0x4e
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x58
	.long	0x4e
	.long	.LLST30
	.byte	0
	.uleb128 0x1c
	.long	.LVL24
	.long	0x57e
	.uleb128 0x1c
	.long	.LVL31
	.long	0x57e
	.uleb128 0x1c
	.long	.LVL34
	.long	0x57e
	.uleb128 0x1c
	.long	.LVL36
	.long	0x57e
	.uleb128 0x1c
	.long	.LVL41
	.long	0x57e
	.uleb128 0x1c
	.long	.LVL43
	.long	0x57e
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x6c
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x57e
	.uleb128 0x16
	.string	"pin"
	.byte	0x1
	.byte	0x21
	.long	0x30
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF28
	.byte	0x1
	.byte	0x21
	.long	0x30
	.long	.LLST2
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x21
	.long	0x6c
	.long	.LLST3
	.uleb128 0x18
	.string	"bit"
	.byte	0x1
	.byte	0x26
	.long	0x30
	.long	.LLST4
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x27
	.long	0x30
	.long	.LLST5
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x28
	.long	0x30
	.long	.LLST6
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.byte	0x2c
	.long	0x6c
	.long	.LLST7
	.uleb128 0x19
	.long	.LASF39
	.byte	0x1
	.byte	0x2e
	.long	0x6c
	.long	.LLST8
	.uleb128 0x1a
	.long	.LBB2
	.long	.LBE2
	.long	0x50a
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.byte	0x26
	.long	0x4e
	.long	.LLST9
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x26
	.long	0x30
	.long	.LLST4
	.byte	0
	.uleb128 0x1a
	.long	.LBB3
	.long	.LBE3
	.long	0x536
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.byte	0x27
	.long	0x4e
	.long	.LLST11
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x27
	.long	0x30
	.long	.LLST5
	.byte	0
	.uleb128 0x1a
	.long	.LBB4
	.long	.LBE4
	.long	0x562
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.byte	0x2e
	.long	0x4e
	.long	.LLST13
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0x2e
	.long	0x4e
	.long	.LLST14
	.byte	0
	.uleb128 0x1d
	.long	.LVL13
	.long	0x58b
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.long	.LASF40
	.long	.LASF40
	.byte	0x6
	.byte	0x8e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.long	.LASF41
	.long	.LASF41
	.byte	0x8
	.byte	0x2c
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
.LLST15:
	.long	.LFB9
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI17
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	0
	.long	0
.LLST16:
	.long	.LVL16
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL16
	.long	.LVL24-1
	.word	0x1
	.byte	0x66
	.long	.LVL24-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL16
	.long	.LVL24-1
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
	.long	.LVL24-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL19
	.long	.LVL37
	.word	0x1
	.byte	0x61
	.long	.LVL40
	.long	.LFE9
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST20:
	.long	.LVL22
	.long	.LVL26
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST21:
	.long	.LVL23
	.long	.LVL39
	.word	0x1
	.byte	0x57
	.long	.LVL40
	.long	.LFE9
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST22:
	.long	.LVL25
	.long	.LVL38
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LFE9
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL32
	.long	.LVL35
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LFE9
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL18
	.long	.LVL21
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LVL20
	.long	.LVL24-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LVL36-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST29:
	.long	.LVL30
	.long	.LVL31-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LVL41-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
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
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL7
	.word	0x1
	.byte	0x66
	.long	.LVL7
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL11
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
	.long	.LVL11
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL13-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL8
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL12
	.word	0x1
	.byte	0x66
	.long	.LVL12
	.long	.LVL13-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL11
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0xc
	.long	0xfffffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL11
	.long	.LFE8
	.word	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0xc
	.long	0xfffffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
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
	.long	.LVL14
	.long	.LVL15
	.word	0x3
	.byte	0x86
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL2
	.long	.LVL4
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL10
	.long	.LVL13-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
.LASF43:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_pulse.c"
.LASF28:
	.string	"state"
.LASF38:
	.string	"maxloops"
.LASF9:
	.string	"size_t"
.LASF17:
	.string	"__malloc_heap_start"
.LASF2:
	.string	"uint8_t"
.LASF41:
	.string	"countPulseASM"
.LASF32:
	.string	"startMicros"
.LASF34:
	.string	"__addr16"
.LASF39:
	.string	"width"
.LASF7:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF37:
	.string	"pulseIn"
.LASF20:
	.string	"port_to_mode_PGM"
.LASF31:
	.string	"stateMask"
.LASF1:
	.string	"unsigned char"
.LASF45:
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
.LASF35:
	.string	"__result"
.LASF10:
	.string	"unget"
.LASF33:
	.string	"start"
.LASF42:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF13:
	.string	"udata"
.LASF14:
	.string	"char"
.LASF19:
	.string	"_Bool"
.LASF27:
	.string	"MISO"
.LASF36:
	.string	"pulseInLong"
.LASF30:
	.string	"port"
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
.LASF44:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF16:
	.string	"__malloc_margin"
.LASF25:
	.string	"digital_pin_to_timer_PGM"
.LASF26:
	.string	"MOSI"
.LASF40:
	.string	"micros"
.LASF29:
	.string	"timeout"
	.ident	"GCC: (GNU) 7.3.0"
