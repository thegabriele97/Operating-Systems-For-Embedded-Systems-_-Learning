	.file	"wiring_digital.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.turnOffPWM,"ax",@progbits
	.type	turnOffPWM, @function
turnOffPWM:
.LFB9:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_digital.c"
	.loc 1 76 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 0
	cpi r24,lo8(3)
	breq .L3
	brsh .L4
	cpi r24,lo8(1)
	breq .L5
	cpi r24,lo8(2)
	breq .L6
	ret
.L4:
	cpi r24,lo8(7)
	breq .L7
	cpi r24,lo8(8)
	breq .L8
	cpi r24,lo8(4)
	brne .L1
	.loc 1 83 0
	lds r24,128
.LVL1:
	andi r24,lo8(-33)
	rjmp .L10
.LVL2:
.L3:
	.loc 1 80 0
	lds r24,128
.LVL3:
	andi r24,lo8(127)
.L10:
	.loc 1 83 0
	sts 128,r24
	.loc 1 83 0
	ret
.LVL4:
.L5:
.LBB4:
.LBB5:
	.loc 1 94 0
	in r24,0x24
.LVL5:
	andi r24,lo8(127)
.LVL6:
.L12:
.LBE5:
.LBE4:
	.loc 1 98 0
	out 0x24,r24
	.loc 1 98 0
	ret
.LVL7:
.L6:
	.loc 1 98 0
	in r24,0x24
.LVL8:
	andi r24,lo8(-33)
	rjmp .L12
.LVL9:
.L7:
	.loc 1 101 0
	lds r24,176
.LVL10:
	andi r24,lo8(127)
.L11:
	.loc 1 104 0
	sts 176,r24
.L1:
/* epilogue start */
	.loc 1 136 0
	ret
.LVL11:
.L8:
	.loc 1 104 0
	lds r24,176
.LVL12:
	andi r24,lo8(-33)
	rjmp .L11
	.cfi_endproc
.LFE9:
	.size	turnOffPWM, .-turnOffPWM
	.section	.text.pinMode,"ax",@progbits
.global	pinMode
	.type	pinMode, @function
pinMode:
.LFB8:
	.loc 1 30 0
	.cfi_startproc
.LVL13:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB6:
	.loc 1 31 0
	ldi r25,0
.LVL14:
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL15:
	.loc 1 31 0
/* #APP */
 ;  31 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL16:
/* #NOAPP */
.LBE6:
.LBB7:
	.loc 1 32 0
	subi r24,lo8(-(digital_pin_to_port_PGM))
	sbci r25,hi8(-(digital_pin_to_port_PGM))
.LVL17:
	.loc 1 32 0
	movw r30,r24
.LVL18:
/* #APP */
 ;  32 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL19:
/* #NOAPP */
.LBE7:
	.loc 1 35 0
	tst r24
	breq .L13
.LBB8:
	.loc 1 38 0
	ldi r25,0
	lsl r24
	rol r25
.LVL20:
	movw r30,r24
.LVL21:
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
.LVL22:
	.loc 1 38 0
/* #APP */
 ;  38 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL23:
/* #NOAPP */
.LBE8:
.LBB9:
	.loc 1 39 0
	movw r30,r24
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL24:
	.loc 1 39 0
/* #APP */
 ;  39 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r28, Z+
	lpm r29, Z
	
 ;  0 "" 2
.LVL25:
/* #NOAPP */
.LBE9:
	.loc 1 41 0
	cpse r22,__zero_reg__
	rjmp .L15
.LBB10:
	.loc 1 42 0
	in r25,__SREG__
.LVL26:
	.loc 1 43 0
/* #APP */
 ;  43 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 44 0
/* #NOAPP */
	ld r24,X
	com r18
.LVL27:
	and r24,r18
	st X,r24
	.loc 1 45 0
	ld r24,Y
	and r18,r24
.LVL28:
.L20:
.LBE10:
.LBB11:
	.loc 1 51 0
	st Y,r18
	.loc 1 52 0
	out __SREG__,r25
.LVL29:
.L13:
/* epilogue start */
.LBE11:
	.loc 1 59 0
	pop r29
	pop r28
	ret
.LVL30:
.L15:
	.loc 1 47 0
	cpi r22,lo8(2)
	brne .L16
.LBB12:
	.loc 1 48 0
	in r25,__SREG__
.LVL31:
	.loc 1 49 0
/* #APP */
 ;  49 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 50 0
/* #NOAPP */
	ld r19,X
	mov r24,r18
	com r24
	and r24,r19
	st X,r24
	.loc 1 51 0
	ld r30,Y
	or r18,r30
.LVL32:
	rjmp .L20
.LVL33:
.L16:
.LBE12:
.LBB13:
	.loc 1 54 0
	in r24,__SREG__
.LVL34:
	.loc 1 55 0
/* #APP */
 ;  55 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 56 0
/* #NOAPP */
	ld r30,X
	or r18,r30
.LVL35:
	st X,r18
	.loc 1 57 0
	out __SREG__,r24
	rjmp .L13
.LBE13:
	.cfi_endproc
.LFE8:
	.size	pinMode, .-pinMode
	.section	.text.digitalWrite,"ax",@progbits
.global	digitalWrite
	.type	digitalWrite, @function
digitalWrite:
.LFB10:
	.loc 1 139 0
	.cfi_startproc
.LVL36:
	push r17
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB14:
	.loc 1 140 0
	mov r18,r24
	ldi r19,0
.LVL37:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
.LVL38:
	.loc 1 140 0
/* #APP */
 ;  140 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL39:
/* #NOAPP */
.LBE14:
.LBB15:
	.loc 1 141 0
	movw r30,r18
.LVL40:
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL41:
	.loc 1 141 0
/* #APP */
 ;  141 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
.LVL42:
/* #NOAPP */
.LBE15:
.LBB16:
	.loc 1 142 0
	movw r30,r18
.LVL43:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL44:
	.loc 1 142 0
/* #APP */
 ;  142 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL45:
/* #NOAPP */
.LBE16:
	.loc 1 145 0
	tst r28
	breq .L21
	mov r17,r22
	.loc 1 149 0
	cpse r24,__zero_reg__
	.loc 1 149 0 is_stmt 0 discriminator 1
	call turnOffPWM
.LVL46:
.L23:
.LBB17:
	.loc 1 151 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL47:
	.loc 1 151 0
/* #APP */
 ;  151 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL48:
/* #NOAPP */
.LBE17:
	.loc 1 153 0
	in r24,__SREG__
.LVL49:
	.loc 1 154 0
/* #APP */
 ;  154 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 157 0
/* #NOAPP */
	ld r30,X
	.loc 1 156 0
	cpse r17,__zero_reg__
	rjmp .L24
	.loc 1 157 0
	com r29
.LVL50:
	and r29,r30
.LVL51:
.L32:
	.loc 1 159 0
	st X,r29
	.loc 1 162 0
	out __SREG__,r24
.LVL52:
.L21:
/* epilogue start */
	.loc 1 163 0
	pop r29
	pop r28
.LVL53:
	pop r17
	ret
.LVL54:
.L24:
	.loc 1 159 0
	or r29,r30
.LVL55:
	rjmp .L32
	.cfi_endproc
.LFE10:
	.size	digitalWrite, .-digitalWrite
	.section	.text.digitalRead,"ax",@progbits
.global	digitalRead
	.type	digitalRead, @function
digitalRead:
.LFB11:
	.loc 1 166 0
	.cfi_startproc
.LVL56:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB18:
	.loc 1 167 0
	mov r18,r24
	ldi r19,0
.LVL57:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
.LVL58:
	.loc 1 167 0
/* #APP */
 ;  167 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL59:
/* #NOAPP */
.LBE18:
.LBB19:
	.loc 1 168 0
	movw r30,r18
.LVL60:
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL61:
	.loc 1 168 0
/* #APP */
 ;  168 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
.LVL62:
/* #NOAPP */
.LBE19:
.LBB20:
	.loc 1 169 0
	movw r30,r18
.LVL63:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL64:
	.loc 1 169 0
/* #APP */
 ;  169 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL65:
/* #NOAPP */
.LBE20:
	.loc 1 171 0
	tst r28
	breq .L37
	.loc 1 175 0
	cpse r24,__zero_reg__
	.loc 1 175 0 is_stmt 0 discriminator 1
	call turnOffPWM
.LVL66:
.L35:
.LBB21:
	.loc 1 177 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
.LVL67:
	.loc 1 177 0
/* #APP */
 ;  177 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL68:
/* #NOAPP */
.LBE21:
	.loc 1 177 0
	ld r30,X
	and r30,r29
	ldi r24,lo8(1)
	ldi r25,0
	brne .L33
	ldi r24,0
.LVL69:
.L33:
/* epilogue start */
	.loc 1 179 0
	pop r29
.LVL70:
	pop r28
.LVL71:
	ret
.LVL72:
.L37:
	.loc 1 171 0
	ldi r24,0
.LVL73:
	ldi r25,0
	rjmp .L33
	.cfi_endproc
.LFE11:
	.size	digitalRead, .-digitalRead
.global	digital_pin_to_timer_PGM
	.section	.progmem.data.digital_pin_to_timer_PGM,"a",@progbits
	.type	digital_pin_to_timer_PGM, @object
	.size	digital_pin_to_timer_PGM, 20
digital_pin_to_timer_PGM:
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	4
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.global	digital_pin_to_bit_mask_PGM
	.section	.progmem.data.digital_pin_to_bit_mask_PGM,"a",@progbits
	.type	digital_pin_to_bit_mask_PGM, @object
	.size	digital_pin_to_bit_mask_PGM, 20
digital_pin_to_bit_mask_PGM:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
.global	digital_pin_to_port_PGM
	.section	.progmem.data.digital_pin_to_port_PGM,"a",@progbits
	.type	digital_pin_to_port_PGM, @object
	.size	digital_pin_to_port_PGM, 20
digital_pin_to_port_PGM:
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
.global	port_to_input_PGM
	.section	.progmem.data.port_to_input_PGM,"a",@progbits
	.type	port_to_input_PGM, @object
	.size	port_to_input_PGM, 10
port_to_input_PGM:
	.word	0
	.word	0
	.word	35
	.word	38
	.word	41
.global	port_to_output_PGM
	.section	.progmem.data.port_to_output_PGM,"a",@progbits
	.type	port_to_output_PGM, @object
	.size	port_to_output_PGM, 10
port_to_output_PGM:
	.word	0
	.word	0
	.word	37
	.word	40
	.word	43
.global	port_to_mode_PGM
	.section	.progmem.data.port_to_mode_PGM,"a",@progbits
	.type	port_to_mode_PGM, @object
	.size	port_to_mode_PGM, 10
port_to_mode_PGM:
	.word	0
	.word	0
	.word	36
	.word	39
	.word	42
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
	.long	0x70e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0xc
	.long	.LASF37
	.long	.LASF38
	.long	.Ldebug_ranges0+0x18
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
	.long	0x45
	.uleb128 0x4
	.long	0x30
	.uleb128 0x5
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x80
	.long	0x63
	.uleb128 0x4
	.long	0x53
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
	.long	0x63
	.uleb128 0x7
	.long	.LASF39
	.byte	0xe
	.byte	0x4
	.byte	0xf4
	.long	0x113
	.uleb128 0x8
	.string	"buf"
	.byte	0x4
	.byte	0xf5
	.long	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF10
	.byte	0x4
	.byte	0xf6
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0xf7
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.word	0x107
	.long	0x4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"len"
	.byte	0x4
	.word	0x108
	.long	0x4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"put"
	.byte	0x4
	.word	0x109
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"get"
	.byte	0x4
	.word	0x10a
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.word	0x10b
	.long	0x157
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x119
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xd
	.byte	0x1
	.long	0x4c
	.long	0x135
	.uleb128 0xe
	.long	0x119
	.uleb128 0xe
	.long	0x135
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x91
	.uleb128 0xc
	.byte	0x2
	.long	0x120
	.uleb128 0xd
	.byte	0x1
	.long	0x4c
	.long	0x151
	.uleb128 0xe
	.long	0x135
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x141
	.uleb128 0xf
	.byte	0x2
	.uleb128 0x10
	.long	0x135
	.long	0x164
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF15
	.byte	0x4
	.word	0x197
	.long	0x159
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF16
	.byte	0x5
	.word	0x138
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF17
	.byte	0x5
	.word	0x13d
	.long	0x113
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF18
	.byte	0x5
	.word	0x142
	.long	0x113
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF19
	.uleb128 0x10
	.long	0x5e
	.long	0x1ae
	.uleb128 0x11
	.byte	0
	.uleb128 0x4
	.long	0x1a3
	.uleb128 0x13
	.long	.LASF20
	.byte	0x6
	.byte	0xa4
	.long	0x1ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF21
	.byte	0x6
	.byte	0xa5
	.long	0x1ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF22
	.byte	0x6
	.byte	0xa6
	.long	0x1ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x3b
	.long	0x1e5
	.uleb128 0x11
	.byte	0
	.uleb128 0x4
	.long	0x1da
	.uleb128 0x13
	.long	.LASF23
	.byte	0x6
	.byte	0xa8
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF24
	.byte	0x6
	.byte	0xaa
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF25
	.byte	0x6
	.byte	0xab
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"SS"
	.byte	0x7
	.byte	0x2b
	.long	0x3b
	.byte	0xa
	.uleb128 0x15
	.long	.LASF26
	.byte	0x7
	.byte	0x2c
	.long	0x3b
	.byte	0xb
	.uleb128 0x15
	.long	.LASF27
	.byte	0x7
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0x14
	.string	"SCK"
	.byte	0x7
	.byte	0x2e
	.long	0x3b
	.byte	0xd
	.uleb128 0x14
	.string	"SDA"
	.byte	0x7
	.byte	0x33
	.long	0x3b
	.byte	0x12
	.uleb128 0x14
	.string	"SCL"
	.byte	0x7
	.byte	0x34
	.long	0x3b
	.byte	0x13
	.uleb128 0x14
	.string	"A0"
	.byte	0x7
	.byte	0x41
	.long	0x3b
	.byte	0xe
	.uleb128 0x14
	.string	"A1"
	.byte	0x7
	.byte	0x42
	.long	0x3b
	.byte	0xf
	.uleb128 0x14
	.string	"A2"
	.byte	0x7
	.byte	0x43
	.long	0x3b
	.byte	0x10
	.uleb128 0x14
	.string	"A3"
	.byte	0x7
	.byte	0x44
	.long	0x3b
	.byte	0x11
	.uleb128 0x14
	.string	"A4"
	.byte	0x7
	.byte	0x45
	.long	0x3b
	.byte	0x12
	.uleb128 0x14
	.string	"A5"
	.byte	0x7
	.byte	0x46
	.long	0x3b
	.byte	0x13
	.uleb128 0x14
	.string	"A6"
	.byte	0x7
	.byte	0x47
	.long	0x3b
	.byte	0x14
	.uleb128 0x14
	.string	"A7"
	.byte	0x7
	.byte	0x48
	.long	0x3b
	.byte	0x15
	.uleb128 0x16
	.long	0x1b3
	.byte	0x7
	.byte	0x7e
	.byte	0x5
	.byte	0x3
	.long	port_to_mode_PGM
	.uleb128 0x16
	.long	0x1cd
	.byte	0x7
	.byte	0x86
	.byte	0x5
	.byte	0x3
	.long	port_to_output_PGM
	.uleb128 0x16
	.long	0x1c0
	.byte	0x7
	.byte	0x8e
	.byte	0x5
	.byte	0x3
	.long	port_to_input_PGM
	.uleb128 0x16
	.long	0x1ea
	.byte	0x7
	.byte	0x96
	.byte	0x5
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.uleb128 0x16
	.long	0x1f7
	.byte	0x7
	.byte	0xad
	.byte	0x5
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.uleb128 0x16
	.long	0x204
	.byte	0x7
	.byte	0xc4
	.byte	0x5
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.uleb128 0x17
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x4c
	.long	.LFB11
	.long	.LFE11
	.long	.LLST34
	.byte	0x1
	.long	0x412
	.uleb128 0x18
	.string	"pin"
	.byte	0x1
	.byte	0xa5
	.long	0x30
	.long	.LLST35
	.uleb128 0x19
	.long	.LASF28
	.byte	0x1
	.byte	0xa7
	.long	0x30
	.long	.LLST36
	.uleb128 0x1a
	.string	"bit"
	.byte	0x1
	.byte	0xa8
	.long	0x30
	.long	.LLST37
	.uleb128 0x19
	.long	.LASF29
	.byte	0x1
	.byte	0xa9
	.long	0x30
	.long	.LLST38
	.uleb128 0x1b
	.long	.LBB18
	.long	.LBE18
	.long	0x384
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0xa7
	.long	0x53
	.long	.LLST39
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0xa7
	.long	0x30
	.long	.LLST36
	.byte	0
	.uleb128 0x1b
	.long	.LBB19
	.long	.LBE19
	.long	0x3b0
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0xa8
	.long	0x53
	.long	.LLST41
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0xa8
	.long	0x30
	.long	.LLST37
	.byte	0
	.uleb128 0x1b
	.long	.LBB20
	.long	.LBE20
	.long	0x3dc
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0xa9
	.long	0x53
	.long	.LLST43
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0xa9
	.long	0x30
	.long	.LLST38
	.byte	0
	.uleb128 0x1b
	.long	.LBB21
	.long	.LBE21
	.long	0x408
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0xb1
	.long	0x53
	.long	.LLST45
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0xb1
	.long	0x53
	.long	.LLST46
	.byte	0
	.uleb128 0x1c
	.long	.LVL66
	.long	0x555
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST18
	.byte	0x1
	.long	0x54f
	.uleb128 0x18
	.string	"pin"
	.byte	0x1
	.byte	0x8a
	.long	0x30
	.long	.LLST19
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x8a
	.long	0x30
	.long	.LLST20
	.uleb128 0x19
	.long	.LASF28
	.byte	0x1
	.byte	0x8c
	.long	0x30
	.long	.LLST21
	.uleb128 0x1a
	.string	"bit"
	.byte	0x1
	.byte	0x8d
	.long	0x30
	.long	.LLST22
	.uleb128 0x19
	.long	.LASF29
	.byte	0x1
	.byte	0x8e
	.long	0x30
	.long	.LLST23
	.uleb128 0x1a
	.string	"out"
	.byte	0x1
	.byte	0x8f
	.long	0x54f
	.long	.LLST24
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0x99
	.long	0x30
	.long	.LLST25
	.uleb128 0x1b
	.long	.LBB14
	.long	.LBE14
	.long	0x4c1
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x8c
	.long	0x53
	.long	.LLST26
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x8c
	.long	0x30
	.long	.LLST21
	.byte	0
	.uleb128 0x1b
	.long	.LBB15
	.long	.LBE15
	.long	0x4ed
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x8d
	.long	0x53
	.long	.LLST28
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x8d
	.long	0x30
	.long	.LLST22
	.byte	0
	.uleb128 0x1b
	.long	.LBB16
	.long	.LBE16
	.long	0x519
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x8e
	.long	0x53
	.long	.LLST30
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x8e
	.long	0x30
	.long	.LLST23
	.byte	0
	.uleb128 0x1b
	.long	.LBB17
	.long	.LBE17
	.long	0x545
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x97
	.long	0x53
	.long	.LLST32
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x97
	.long	0x53
	.long	.LLST24
	.byte	0
	.uleb128 0x1c
	.long	.LVL46
	.long	0x555
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x40
	.uleb128 0x1e
	.long	.LASF41
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.long	0x56e
	.uleb128 0x1f
	.long	.LASF28
	.byte	0x1
	.byte	0x4b
	.long	0x30
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST2
	.byte	0x1
	.long	0x6de
	.uleb128 0x18
	.string	"pin"
	.byte	0x1
	.byte	0x1d
	.long	0x30
	.long	.LLST3
	.uleb128 0x20
	.long	.LASF35
	.byte	0x1
	.byte	0x1d
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0x1a
	.string	"bit"
	.byte	0x1
	.byte	0x1f
	.long	0x30
	.long	.LLST4
	.uleb128 0x19
	.long	.LASF29
	.byte	0x1
	.byte	0x20
	.long	0x30
	.long	.LLST5
	.uleb128 0x1a
	.string	"reg"
	.byte	0x1
	.byte	0x21
	.long	0x54f
	.long	.LLST6
	.uleb128 0x1a
	.string	"out"
	.byte	0x1
	.byte	0x21
	.long	0x54f
	.long	.LLST7
	.uleb128 0x1b
	.long	.LBB6
	.long	.LBE6
	.long	0x60c
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x1f
	.long	0x53
	.long	.LLST8
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x1f
	.long	0x30
	.long	.LLST4
	.byte	0
	.uleb128 0x1b
	.long	.LBB7
	.long	.LBE7
	.long	0x638
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x20
	.long	0x53
	.long	.LLST10
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x20
	.long	0x30
	.long	.LLST5
	.byte	0
	.uleb128 0x1b
	.long	.LBB8
	.long	.LBE8
	.long	0x664
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x26
	.long	0x53
	.long	.LLST12
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x26
	.long	0x53
	.long	.LLST6
	.byte	0
	.uleb128 0x1b
	.long	.LBB9
	.long	.LBE9
	.long	0x690
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x27
	.long	0x53
	.long	.LLST14
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x27
	.long	0x53
	.long	.LLST7
	.byte	0
	.uleb128 0x1b
	.long	.LBB10
	.long	.LBE10
	.long	0x6ad
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0x2a
	.long	0x30
	.long	.LLST16
	.byte	0
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.long	0x6c6
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0x30
	.long	0x30
	.long	.LLST17
	.byte	0
	.uleb128 0x22
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x23
	.long	.LASF32
	.byte	0x1
	.byte	0x36
	.long	0x30
	.byte	0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x555
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x25
	.long	0x562
	.long	.LLST0
	.uleb128 0x26
	.long	0x555
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.long	0x562
	.long	.LLST1
	.byte	0
	.byte	0
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST34:
	.long	.LFB11
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST35:
	.long	.LVL56
	.long	.LVL59
	.word	0x1
	.byte	0x68
	.long	.LVL59
	.long	.LVL66-1
	.word	0x1
	.byte	0x62
	.long	.LVL66-1
	.long	.LVL72
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL72
	.long	.LFE11
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST36:
	.long	.LVL59
	.long	.LVL66-1
	.word	0x1
	.byte	0x68
	.long	.LVL72
	.long	.LVL73
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST37:
	.long	.LVL62
	.long	.LVL70
	.word	0x1
	.byte	0x6d
	.long	.LVL72
	.long	.LFE11
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST38:
	.long	.LVL65
	.long	.LVL71
	.word	0x1
	.byte	0x6c
	.long	.LVL72
	.long	.LFE11
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST39:
	.long	.LVL57
	.long	.LVL58
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL58
	.long	.LVL60
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL66-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL72
	.long	.LFE11
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL59
	.long	.LVL61
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL61
	.long	.LVL63
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL66-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL72
	.long	.LFE11
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL62
	.long	.LVL64
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL64
	.long	.LVL66-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LFE11
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST45:
	.long	.LVL67
	.long	.LVL68
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST46:
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LFB10
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
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST19:
	.long	.LVL36
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	.LVL39
	.long	.LVL46-1
	.word	0x1
	.byte	0x62
	.long	.LVL46-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL36
	.long	.LVL46-1
	.word	0x1
	.byte	0x66
	.long	.LVL46-1
	.long	.LVL52
	.word	0x1
	.byte	0x61
	.long	.LVL52
	.long	.LVL54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL54
	.long	.LFE10
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST21:
	.long	.LVL39
	.long	.LVL46-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LVL42
	.long	.LVL50
	.word	0x1
	.byte	0x6d
	.long	.LVL50
	.long	.LVL51
	.word	0x4
	.byte	0x8d
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST23:
	.long	.LVL45
	.long	.LVL53
	.word	0x1
	.byte	0x6c
	.long	.LVL54
	.long	.LFE10
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST24:
	.long	.LVL48
	.long	.LVL52
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LFE10
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL49
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL54
	.long	.LFE10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST26:
	.long	.LVL37
	.long	.LVL38
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL38
	.long	.LVL40
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LVL46-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL39
	.long	.LVL41
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL41
	.long	.LVL43
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43
	.long	.LVL46-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL42
	.long	.LVL44
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL44
	.long	.LVL46-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
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
.LLST3:
	.long	.LVL13
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL16
	.long	.LVL27
	.word	0x1
	.byte	0x62
	.long	.LVL27
	.long	.LVL28
	.word	0x4
	.byte	0x82
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL30
	.long	.LVL32
	.word	0x1
	.byte	0x62
	.long	.LVL33
	.long	.LVL35
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LVL23
	.long	.LVL29
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LFE8
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL25
	.long	.LVL29
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LFE8
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL15
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL15
	.long	.LVL18
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL19
	.word	0xf
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x1c
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21
	.word	0xf
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL17
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
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
.LLST12:
	.long	.LVL22
	.long	.LVL23
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
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL26
	.long	.LVL28
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LVL31
	.long	.LVL33
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB11
	.long	.LBE11
	.long	.LBB12
	.long	.LBE12
	.long	0
	.long	0
	.long	.LFB9
	.long	.LFE9
	.long	.LFB8
	.long	.LFE8
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF17:
	.string	"__malloc_heap_start"
.LASF35:
	.string	"mode"
.LASF10:
	.string	"unget"
.LASF2:
	.string	"uint8_t"
.LASF28:
	.string	"timer"
.LASF30:
	.string	"__addr16"
.LASF41:
	.string	"turnOffPWM"
.LASF7:
	.string	"long long int"
.LASF34:
	.string	"pinMode"
.LASF5:
	.string	"long int"
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
.LASF31:
	.string	"__result"
.LASF37:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\wiring_digital.c"
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
.LASF33:
	.string	"digitalWrite"
.LASF29:
	.string	"port"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"digital_pin_to_port_PGM"
.LASF32:
	.string	"oldSREG"
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
.LASF16:
	.string	"__malloc_margin"
.LASF25:
	.string	"digital_pin_to_timer_PGM"
.LASF26:
	.string	"MOSI"
.LASF40:
	.string	"digitalRead"
	.ident	"GCC: (GNU) 7.3.0"
