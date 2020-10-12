	.file	"ee_oo_alarm.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_alarm_set_rel,"ax",@progbits
.global	osEE_alarm_set_rel
	.type	osEE_alarm_set_rel, @function
osEE_alarm_set_rel:
.LFB65:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_oo_alarm.c"
	.loc 1 62 0
	.cfi_startproc
.LVL0:
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
	movw r26,r22
	ld r30,X+
	ld r31,X
.LVL1:
	.loc 1 77 0
	ldd r26,Z+4
	ldd r27,Z+5
	cpi r26,2
	cpc r27,__zero_reg__
	brsh .L6
	.loc 1 80 0
	std Z+7,r19
	std Z+6,r18
	.loc 1 79 0
	sbiw r26,1
	brne .L3
.LVL2:
.LBB16:
.LBB17:
	.file 2 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_kernel.h"
	.loc 2 789 0
	movw r28,r24
	ldd r18,Y+2
	ldd r19,Y+3
.LVL3:
	.loc 2 791 0
	ld r26,Y
	ldd r27,Y+1
	adiw r26,2
	ld r24,X+
	ld r25,X
.LVL4:
	.loc 2 793 0
	movw r22,r18
.LVL5:
	sub r22,r20
	sbc r23,r21
	cp r22,r24
	cpc r23,r25
	brlo .L4
	.loc 2 794 0
	add r20,r24
	adc r21,r25
.LVL6:
.L5:
.LBE17:
.LBE16:
	.loc 1 83 0
	std Z+3,r21
	std Z+2,r20
	.loc 1 84 0
	ldi r24,lo8(4)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
.LVL7:
.L7:
	.loc 1 96 0
	ldi r25,0
	ldi r24,0
.LVL8:
.L1:
/* epilogue start */
	.loc 1 102 0
	pop r29
	pop r28
	ret
.LVL9:
.L4:
.LBB19:
.LBB18:
	.loc 2 796 0
	subi r20,1
	sbc r21,__zero_reg__
.LVL10:
	add r20,r24
	adc r21,r25
.LVL11:
	sub r20,r18
	sbc r21,r19
.LVL12:
	rjmp .L5
.LVL13:
.L3:
.LBE18:
.LBE19:
	.loc 1 90 0
	ldi r18,lo8(2)
	ldi r19,0
.LVL14:
	std Z+5,r19
	std Z+4,r18
	.loc 1 92 0
	call osEE_counter_insert_rel_trigger
.LVL15:
	rjmp .L7
.LVL16:
.L6:
	.loc 1 78 0
	ldi r24,lo8(7)
	ldi r25,0
.LVL17:
	.loc 1 101 0
	rjmp .L1
	.cfi_endproc
.LFE65:
	.size	osEE_alarm_set_rel, .-osEE_alarm_set_rel
	.section	.text.osEE_alarm_set_abs,"ax",@progbits
.global	osEE_alarm_set_abs
	.type	osEE_alarm_set_abs, @function
osEE_alarm_set_abs:
.LFB66:
	.loc 1 112 0
	.cfi_startproc
.LVL18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	ld r30,X+
	ld r31,X
.LVL19:
	.loc 1 127 0
	ldd r26,Z+4
	ldd r27,Z+5
	cpi r26,2
	cpc r27,__zero_reg__
	brsh .L11
	.loc 1 130 0
	std Z+7,r19
	std Z+6,r18
	.loc 1 129 0
	sbiw r26,1
	brne .L10
	.loc 1 133 0
	std Z+3,r21
	std Z+2,r20
	.loc 1 134 0
	ldi r24,lo8(4)
	ldi r25,0
.LVL20:
	std Z+5,r25
	std Z+4,r24
.LVL21:
.L12:
	.loc 1 146 0
	ldi r25,0
	ldi r24,0
	ret
.LVL22:
.L10:
	.loc 1 140 0
	ldi r18,lo8(2)
	ldi r19,0
.LVL23:
	std Z+5,r19
	std Z+4,r18
	.loc 1 142 0
	call osEE_counter_insert_abs_trigger
.LVL24:
	rjmp .L12
.LVL25:
.L11:
	.loc 1 128 0
	ldi r24,lo8(7)
	ldi r25,0
.LVL26:
/* epilogue start */
	.loc 1 152 0
	ret
	.cfi_endproc
.LFE66:
	.size	osEE_alarm_set_abs, .-osEE_alarm_set_abs
	.section	.text.osEE_alarm_cancel,"ax",@progbits
.global	osEE_alarm_cancel
	.type	osEE_alarm_cancel, @function
osEE_alarm_cancel:
.LFB67:
	.loc 1 159 0
	.cfi_startproc
.LVL27:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 164 0
	movw r26,r24
	ld r30,X+
	ld r31,X
.LVL28:
	.loc 1 174 0
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .L16
	.loc 1 176 0
	cpi r18,2
	cpc r19,__zero_reg__
	breq .L15
	.loc 1 177 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL29:
	std Z+5,r25
	std Z+4,r24
.LVL30:
.L17:
	.loc 1 182 0
	ldi r25,0
	ldi r24,0
	ret
.LVL31:
.L15:
	movw r22,r24
	.loc 1 166 0
	movw r26,r24
	adiw r26,2
	ld r24,X+
	ld r25,X
.LVL32:
	.loc 1 180 0
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	.loc 1 181 0
	call osEE_counter_cancel_trigger
.LVL33:
	rjmp .L17
.LVL34:
.L16:
	.loc 1 175 0
	ldi r24,lo8(5)
	ldi r25,0
.LVL35:
/* epilogue start */
	.loc 1 188 0
	ret
	.cfi_endproc
.LFE67:
	.size	osEE_alarm_cancel, .-osEE_alarm_cancel
	.section	.text.osEE_alarm_get,"ax",@progbits
.global	osEE_alarm_get
	.type	osEE_alarm_get, @function
osEE_alarm_get:
.LFB68:
	.loc 1 196 0
	.cfi_startproc
.LVL36:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 201 0
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
.LVL37:
	.loc 1 211 0
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	.loc 1 212 0
	ldi r24,lo8(5)
	ldi r25,0
.LVL38:
	.loc 1 211 0
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .L18
	.loc 1 203 0
	ldd r30,Y+2
	ldd r31,Y+3
	.loc 1 214 0
	adiw r26,2
	ld r24,X+
	ld r25,X
.LVL39:
.LBB22:
.LBB23:
	.loc 2 813 0
	ldd r20,Z+2
	ldd r21,Z+3
.LVL40:
	.loc 2 815 0
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL41:
	ldd r18,Z+2
	ldd r19,Z+3
.LVL42:
	.loc 2 817 0
	cp r18,r24
	cpc r19,r25
	brsh .L20
.LVL43:
.L23:
	.loc 2 820 0
	sub r24,r18
	sbc r25,r19
.LVL44:
.LBE23:
.LBE22:
	.loc 1 214 0
	movw r30,r22
	std Z+1,r25
	st Z,r24
.LVL45:
	.loc 1 215 0
	ldi r25,0
	ldi r24,0
.LVL46:
.L18:
/* epilogue start */
	.loc 1 221 0
	pop r29
	pop r28
.LVL47:
	ret
.LVL48:
.L20:
.LBB25:
.LBB24:
	.loc 2 820 0
	add r24,r20
	adc r25,r21
.LVL49:
	adiw r24,1
	rjmp .L23
.LBE24:
.LBE25:
	.cfi_endproc
.LFE68:
	.size	osEE_alarm_get, .-osEE_alarm_get
	.text
.Letext0:
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 4 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_platform_types.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_api_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_scheduler_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_kernel_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_hal_internal_types.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10cd
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF217
	.byte	0xc
	.long	.LASF218
	.long	.LASF219
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x80
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.byte	0x5b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x68
	.long	0x5e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x6d
	.long	0x5e
	.uleb128 0x5
	.byte	0x2
	.long	0xb0
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF14
	.byte	0x5
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x78
	.long	0x7e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF17
	.byte	0x5
	.byte	0xf4
	.long	0x4c
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.word	0x13a
	.long	0xaa
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.word	0x145
	.long	0x111
	.uleb128 0x9
	.long	.LASF19
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.word	0x153
	.long	0xea
	.uleb128 0x7
	.long	.LASF24
	.byte	0x5
	.word	0x157
	.long	0x111
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.word	0x15d
	.long	0x15c
	.uleb128 0x9
	.long	.LASF25
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.uleb128 0x9
	.long	.LASF27
	.byte	0x2
	.uleb128 0x9
	.long	.LASF28
	.byte	0x3
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF31
	.byte	0x5
	.word	0x16e
	.long	0x129
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5
	.word	0x17e
	.long	0x15c
	.uleb128 0x7
	.long	.LASF33
	.byte	0x5
	.word	0x19e
	.long	0x94
	.uleb128 0xa
	.long	0x174
	.uleb128 0x5
	.byte	0x2
	.long	0x174
	.uleb128 0xb
	.byte	0x6
	.byte	0x5
	.word	0x1b7
	.long	0x1c2
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.word	0x1b9
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.word	0x1bc
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.word	0x1c0
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x5
	.word	0x1c2
	.long	0x18b
	.uleb128 0x7
	.long	.LASF38
	.byte	0x5
	.word	0x237
	.long	0x9f
	.uleb128 0x7
	.long	.LASF39
	.byte	0x5
	.word	0x2a3
	.long	0x89
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.word	0x2b1
	.long	0x2a3
	.uleb128 0x9
	.long	.LASF40
	.byte	0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x1
	.uleb128 0x9
	.long	.LASF42
	.byte	0x2
	.uleb128 0x9
	.long	.LASF43
	.byte	0x3
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x9
	.uleb128 0x9
	.long	.LASF50
	.byte	0xa
	.uleb128 0x9
	.long	.LASF51
	.byte	0xb
	.uleb128 0x9
	.long	.LASF52
	.byte	0xc
	.uleb128 0x9
	.long	.LASF53
	.byte	0xd
	.uleb128 0x9
	.long	.LASF54
	.byte	0xe
	.uleb128 0x9
	.long	.LASF55
	.byte	0xf
	.uleb128 0x9
	.long	.LASF56
	.byte	0x10
	.uleb128 0x9
	.long	.LASF57
	.byte	0x11
	.uleb128 0x9
	.long	.LASF58
	.byte	0x12
	.uleb128 0x9
	.long	.LASF59
	.byte	0x13
	.uleb128 0x9
	.long	.LASF60
	.byte	0x14
	.uleb128 0x9
	.long	.LASF61
	.byte	0x15
	.uleb128 0x9
	.long	.LASF62
	.byte	0x16
	.uleb128 0x9
	.long	.LASF63
	.byte	0x17
	.uleb128 0x9
	.long	.LASF64
	.byte	0x18
	.uleb128 0x9
	.long	.LASF65
	.byte	0x19
	.uleb128 0x9
	.long	.LASF66
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF67
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF68
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.long	.LASF69
	.byte	0x5
	.word	0x2d4
	.long	0x1e6
	.uleb128 0x7
	.long	.LASF70
	.byte	0x5
	.word	0x2d9
	.long	0x2a3
	.uleb128 0xd
	.long	.LASF73
	.byte	0x4
	.byte	0x6
	.byte	0x4b
	.long	0x2e4
	.uleb128 0xe
	.long	.LASF71
	.byte	0x6
	.byte	0x4d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF72
	.byte	0x6
	.byte	0x4f
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x2bb
	.uleb128 0xf
	.long	.LASF74
	.byte	0xe
	.byte	0x7
	.word	0x108
	.long	0x370
	.uleb128 0x10
	.string	"hdb"
	.byte	0x7
	.word	0x10b
	.long	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF75
	.byte	0x7
	.word	0x10e
	.long	0x6b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"tid"
	.byte	0x7
	.word	0x110
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF76
	.byte	0x7
	.word	0x112
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF77
	.byte	0x7
	.word	0x114
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF78
	.byte	0x7
	.word	0x117
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF79
	.byte	0x7
	.word	0x11a
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF80
	.byte	0x7
	.word	0x11c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xa
	.long	0x2ea
	.uleb128 0x5
	.byte	0x2
	.long	0x370
	.uleb128 0x4
	.long	.LASF81
	.byte	0x6
	.byte	0x50
	.long	0x2bb
	.uleb128 0x4
	.long	.LASF82
	.byte	0x6
	.byte	0xd5
	.long	0x391
	.uleb128 0x5
	.byte	0x2
	.long	0x37b
	.uleb128 0xd
	.long	.LASF83
	.byte	0x14
	.byte	0x8
	.byte	0x43
	.long	0x4a6
	.uleb128 0x11
	.string	"r29"
	.byte	0x8
	.byte	0x44
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0x8
	.byte	0x45
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0x8
	.byte	0x46
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0x8
	.byte	0x47
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0x8
	.byte	0x48
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0x8
	.byte	0x49
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0x8
	.byte	0x4a
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0x8
	.byte	0x4b
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0x8
	.byte	0x4c
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0x8
	.byte	0x4d
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0x8
	.byte	0x4e
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0x8
	.byte	0x4f
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0x8
	.byte	0x50
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0x8
	.byte	0x51
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0x8
	.byte	0x52
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0x8
	.byte	0x53
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0x8
	.byte	0x54
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0x8
	.byte	0x55
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.long	.LASF84
	.byte	0x8
	.byte	0x56
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x397
	.uleb128 0x4
	.long	.LASF85
	.byte	0x8
	.byte	0x57
	.long	0x397
	.uleb128 0xd
	.long	.LASF86
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.long	0x4d2
	.uleb128 0xe
	.long	.LASF87
	.byte	0x8
	.byte	0x5b
	.long	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x4ac
	.uleb128 0x4
	.long	.LASF88
	.byte	0x8
	.byte	0x5c
	.long	0x4b7
	.uleb128 0xd
	.long	.LASF89
	.byte	0x4
	.byte	0x8
	.byte	0x5e
	.long	0x50c
	.uleb128 0xe
	.long	.LASF90
	.byte	0x8
	.byte	0x5f
	.long	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF91
	.byte	0x8
	.byte	0x60
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x4e3
	.uleb128 0x4
	.long	.LASF92
	.byte	0x8
	.byte	0x61
	.long	0x50c
	.uleb128 0xd
	.long	.LASF93
	.byte	0x4
	.byte	0x8
	.byte	0x63
	.long	0x545
	.uleb128 0xe
	.long	.LASF94
	.byte	0x8
	.byte	0x64
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF95
	.byte	0x8
	.byte	0x65
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x51c
	.uleb128 0x5
	.byte	0x2
	.long	0x511
	.uleb128 0x5
	.byte	0x2
	.long	0x4d8
	.uleb128 0x4
	.long	.LASF96
	.byte	0x8
	.byte	0x69
	.long	0x545
	.uleb128 0x4
	.long	.LASF97
	.byte	0x7
	.byte	0x51
	.long	0xaa
	.uleb128 0x4
	.long	.LASF98
	.byte	0x7
	.byte	0x53
	.long	0x4c
	.uleb128 0x12
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0x73
	.long	0x59d
	.uleb128 0x9
	.long	.LASF99
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0x1
	.uleb128 0x9
	.long	.LASF101
	.byte	0x2
	.uleb128 0x9
	.long	.LASF102
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF103
	.byte	0x7
	.byte	0x7d
	.long	0x577
	.uleb128 0x13
	.long	0x59d
	.uleb128 0x14
	.byte	0x5
	.byte	0x7
	.byte	0x90
	.long	0x5e0
	.uleb128 0xe
	.long	.LASF71
	.byte	0x7
	.byte	0x94
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x7
	.byte	0x97
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF105
	.byte	0x7
	.byte	0x9a
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x3
	.byte	0x7
	.byte	0xb5
	.long	0x609
	.uleb128 0xe
	.long	.LASF107
	.byte	0x7
	.byte	0xb7
	.long	0x61f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF108
	.byte	0x7
	.byte	0xc3
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x5e0
	.uleb128 0x5
	.byte	0x2
	.long	0x609
	.uleb128 0x4
	.long	.LASF109
	.byte	0x7
	.byte	0x9b
	.long	0x5ad
	.uleb128 0x5
	.byte	0x2
	.long	0x614
	.uleb128 0x4
	.long	.LASF110
	.byte	0x7
	.byte	0xce
	.long	0x609
	.uleb128 0x4
	.long	.LASF111
	.byte	0x7
	.byte	0xd2
	.long	0x625
	.uleb128 0x14
	.byte	0xc
	.byte	0x7
	.byte	0xe0
	.long	0x6a6
	.uleb128 0xe
	.long	.LASF112
	.byte	0x7
	.byte	0xe4
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF113
	.byte	0x7
	.byte	0xea
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF114
	.byte	0x7
	.byte	0xec
	.long	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF115
	.byte	0x7
	.byte	0xef
	.long	0x6a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF116
	.byte	0x7
	.byte	0xf3
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF117
	.byte	0x7
	.byte	0xf5
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF118
	.byte	0x7
	.byte	0xfb
	.long	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x625
	.uleb128 0x7
	.long	.LASF119
	.byte	0x7
	.word	0x101
	.long	0x63b
	.uleb128 0x5
	.byte	0x2
	.long	0x6ac
	.uleb128 0x7
	.long	.LASF120
	.byte	0x7
	.word	0x122
	.long	0x370
	.uleb128 0x5
	.byte	0x2
	.long	0x6be
	.uleb128 0xa
	.long	0x6ca
	.uleb128 0x7
	.long	.LASF121
	.byte	0x7
	.word	0x151
	.long	0x6e1
	.uleb128 0x5
	.byte	0x2
	.long	0x722
	.uleb128 0xf
	.long	.LASF122
	.byte	0xe
	.byte	0x7
	.word	0x269
	.long	0x722
	.uleb128 0xc
	.long	.LASF123
	.byte	0x7
	.word	0x26b
	.long	0x8f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF124
	.byte	0x7
	.word	0x26d
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF125
	.byte	0x7
	.word	0x27b
	.long	0x85a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.long	0x6e7
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.word	0x155
	.long	0x74f
	.uleb128 0xc
	.long	.LASF126
	.byte	0x7
	.word	0x157
	.long	0x6d5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF127
	.byte	0x7
	.word	0x159
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF128
	.byte	0x7
	.word	0x15e
	.long	0x727
	.uleb128 0xa
	.long	0x74f
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.word	0x16f
	.long	0x788
	.uleb128 0xc
	.long	.LASF129
	.byte	0x7
	.word	0x171
	.long	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF130
	.byte	0x7
	.word	0x177
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x760
	.uleb128 0x5
	.byte	0x2
	.long	0x74f
	.uleb128 0x7
	.long	.LASF131
	.byte	0x7
	.word	0x17c
	.long	0x788
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.word	0x17f
	.long	0x7c6
	.uleb128 0x9
	.long	.LASF132
	.byte	0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x1
	.uleb128 0x9
	.long	.LASF134
	.byte	0x2
	.uleb128 0x9
	.long	.LASF135
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF136
	.byte	0x7
	.word	0x184
	.long	0x79f
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.word	0x189
	.long	0x816
	.uleb128 0x10
	.string	"f"
	.byte	0x7
	.word	0x18b
	.long	0x561
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x7
	.word	0x18d
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF124
	.byte	0x7
	.word	0x18f
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF137
	.byte	0x7
	.word	0x192
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x793
	.uleb128 0xa
	.long	0x816
	.uleb128 0x7
	.long	.LASF138
	.byte	0x7
	.word	0x194
	.long	0x7d2
	.uleb128 0xb
	.byte	0xa
	.byte	0x7
	.word	0x198
	.long	0x855
	.uleb128 0xc
	.long	.LASF139
	.byte	0x7
	.word	0x19a
	.long	0x821
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF140
	.byte	0x7
	.word	0x19c
	.long	0x7c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.long	0x82d
	.uleb128 0x7
	.long	.LASF141
	.byte	0x7
	.word	0x19d
	.long	0x855
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.word	0x22b
	.long	0x893
	.uleb128 0x9
	.long	.LASF142
	.byte	0
	.uleb128 0x9
	.long	.LASF143
	.byte	0x1
	.uleb128 0x9
	.long	.LASF144
	.byte	0x2
	.uleb128 0x9
	.long	.LASF145
	.byte	0x3
	.uleb128 0x9
	.long	.LASF146
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF147
	.byte	0x7
	.word	0x231
	.long	0x866
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.word	0x242
	.long	0x8e5
	.uleb128 0xc
	.long	.LASF71
	.byte	0x7
	.word	0x244
	.long	0x6e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF148
	.byte	0x7
	.word	0x247
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF114
	.byte	0x7
	.word	0x249
	.long	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF149
	.byte	0x7
	.word	0x24d
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF150
	.byte	0x7
	.word	0x25e
	.long	0x89f
	.uleb128 0xa
	.long	0x8e5
	.uleb128 0x5
	.byte	0x2
	.long	0x8e5
	.uleb128 0xa
	.long	0x8f6
	.uleb128 0x7
	.long	.LASF151
	.byte	0x7
	.word	0x290
	.long	0x722
	.uleb128 0x7
	.long	.LASF152
	.byte	0x7
	.word	0x294
	.long	0x8e5
	.uleb128 0x7
	.long	.LASF153
	.byte	0x7
	.word	0x295
	.long	0x901
	.uleb128 0xb
	.byte	0x6
	.byte	0x7
	.word	0x2a9
	.long	0x95c
	.uleb128 0xc
	.long	.LASF154
	.byte	0x7
	.word	0x2ad
	.long	0x961
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF155
	.byte	0x7
	.word	0x2af
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF156
	.byte	0x7
	.word	0x2b2
	.long	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.long	0x925
	.uleb128 0x5
	.byte	0x2
	.long	0x901
	.uleb128 0xa
	.long	0x961
	.uleb128 0x7
	.long	.LASF157
	.byte	0x7
	.word	0x2b8
	.long	0x95c
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.word	0x2bb
	.long	0x9a0
	.uleb128 0xc
	.long	.LASF158
	.byte	0x7
	.word	0x2bd
	.long	0x9b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF159
	.byte	0x7
	.word	0x2bf
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x978
	.uleb128 0x15
	.long	0x96c
	.long	0x9b0
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x9a5
	.uleb128 0x7
	.long	.LASF160
	.byte	0x7
	.word	0x2c0
	.long	0x9a0
	.uleb128 0xf
	.long	.LASF161
	.byte	0x4
	.byte	0x7
	.word	0x2c7
	.long	0x9ee
	.uleb128 0xc
	.long	.LASF162
	.byte	0x7
	.word	0x2c9
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF163
	.byte	0x7
	.word	0x2cb
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x9c2
	.uleb128 0x15
	.long	0x6d0
	.long	0x9fe
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x9f3
	.uleb128 0x7
	.long	.LASF164
	.byte	0x7
	.word	0x2cc
	.long	0x9ee
	.uleb128 0xb
	.byte	0x12
	.byte	0x7
	.word	0x2d9
	.long	0xacd
	.uleb128 0xc
	.long	.LASF165
	.byte	0x7
	.word	0x2dc
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"rq"
	.byte	0x7
	.word	0x2ee
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF166
	.byte	0x7
	.word	0x2f0
	.long	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF167
	.byte	0x7
	.word	0x2ff
	.long	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF168
	.byte	0x7
	.word	0x301
	.long	0x5a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF169
	.byte	0x7
	.word	0x305
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF170
	.byte	0x7
	.word	0x307
	.long	0x2af
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF171
	.byte	0x7
	.word	0x327
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.long	.LASF172
	.byte	0x7
	.word	0x329
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF173
	.byte	0x7
	.word	0x32b
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xc
	.long	.LASF174
	.byte	0x7
	.word	0x32d
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF175
	.byte	0x7
	.word	0x330
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	.LASF176
	.byte	0x7
	.word	0x33a
	.long	0xa10
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.word	0x344
	.long	0xb5b
	.uleb128 0xc
	.long	.LASF177
	.byte	0x7
	.word	0x34a
	.long	0xb60
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF178
	.byte	0x7
	.word	0x351
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF179
	.byte	0x7
	.word	0x354
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF180
	.byte	0x7
	.word	0x358
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF181
	.byte	0x7
	.word	0x35c
	.long	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF182
	.byte	0x7
	.word	0x35e
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF183
	.byte	0x7
	.word	0x362
	.long	0xb82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF184
	.byte	0x7
	.word	0x364
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0xa
	.long	0xad9
	.uleb128 0x5
	.byte	0x2
	.long	0xacd
	.uleb128 0x15
	.long	0xa04
	.long	0xb71
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xb66
	.uleb128 0x15
	.long	0x9b6
	.long	0xb82
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xb77
	.uleb128 0x7
	.long	.LASF185
	.byte	0x7
	.word	0x36a
	.long	0xb5b
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.word	0x36f
	.long	0xbad
	.uleb128 0xc
	.long	.LASF186
	.byte	0x7
	.word	0x3b1
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF187
	.byte	0x7
	.word	0x3b3
	.long	0xb94
	.uleb128 0xb
	.byte	0x12
	.byte	0x7
	.word	0x3c3
	.long	0xc4a
	.uleb128 0xc
	.long	.LASF188
	.byte	0x7
	.word	0x3c5
	.long	0xc4f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF162
	.byte	0x7
	.word	0x3d1
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF163
	.byte	0x7
	.word	0x3d4
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF189
	.byte	0x7
	.word	0x3e0
	.long	0xc6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF190
	.byte	0x7
	.word	0x3e2
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF191
	.byte	0x7
	.word	0x3e6
	.long	0xc7c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF192
	.byte	0x7
	.word	0x3e8
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF193
	.byte	0x7
	.word	0x3eb
	.long	0xc98
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF194
	.byte	0x7
	.word	0x3ed
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.long	0xbb9
	.uleb128 0x5
	.byte	0x2
	.long	0xbad
	.uleb128 0x15
	.long	0xc66
	.long	0xc60
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x630
	.uleb128 0xa
	.long	0xc60
	.uleb128 0x5
	.byte	0x2
	.long	0xc55
	.uleb128 0x15
	.long	0x81c
	.long	0xc7c
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xc71
	.uleb128 0x15
	.long	0xc93
	.long	0xc8d
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x919
	.uleb128 0xa
	.long	0xc8d
	.uleb128 0x5
	.byte	0x2
	.long	0xc82
	.uleb128 0x7
	.long	.LASF195
	.byte	0x7
	.word	0x3fc
	.long	0xc4a
	.uleb128 0x17
	.long	.LASF196
	.byte	0x9
	.byte	0x3f
	.long	0xc9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF197
	.byte	0x9
	.byte	0x40
	.long	0xb88
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF198
	.byte	0x9
	.byte	0x41
	.long	0xbad
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF199
	.byte	0x9
	.byte	0x42
	.long	0xacd
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF202
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x2af
	.long	.LFB68
	.long	.LFE68
	.long	.LLST23
	.byte	0x1
	.long	0xd98
	.uleb128 0x19
	.long	.LASF200
	.byte	0x1
	.byte	0xc1
	.long	0xc8d
	.long	.LLST24
	.uleb128 0x1a
	.long	.LASF201
	.byte	0x1
	.byte	0xc2
	.long	0x185
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0xc5
	.long	0x2af
	.long	.LLST25
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.byte	0xc7
	.long	0x967
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x1
	.byte	0xc9
	.long	0xd9e
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x1
	.byte	0xcb
	.long	0x81c
	.uleb128 0x1e
	.long	0xfe5
	.long	.LBB22
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xd6
	.uleb128 0x1f
	.long	0x1003
	.long	.LLST26
	.uleb128 0x20
	.long	0xff7
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x22
	.long	0x100f
	.uleb128 0x23
	.long	0x101b
	.long	.LLST27
	.uleb128 0x23
	.long	0x1027
	.long	.LLST28
	.uleb128 0x23
	.long	0x1033
	.long	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x8f1
	.uleb128 0xa
	.long	0xd98
	.uleb128 0x24
	.byte	0x1
	.long	.LASF203
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x2af
	.long	.LFB67
	.long	.LFE67
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xe1e
	.uleb128 0x19
	.long	.LASF200
	.byte	0x1
	.byte	0x9d
	.long	0xc8d
	.long	.LLST19
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0xa0
	.long	0x2af
	.long	.LLST20
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.byte	0xa2
	.long	0x967
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.byte	0xa4
	.long	0x8fc
	.long	.LLST21
	.uleb128 0x25
	.long	.LASF124
	.byte	0x1
	.byte	0xa6
	.long	0x81c
	.long	.LLST22
	.uleb128 0x26
	.long	.LVL33
	.long	0x10a6
	.uleb128 0x27
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF204
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	0x2af
	.long	.LFB66
	.long	.LFE66
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xeb5
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0x6b
	.long	0x816
	.long	.LLST13
	.uleb128 0x19
	.long	.LASF200
	.byte	0x1
	.byte	0x6c
	.long	0xc8d
	.long	.LLST14
	.uleb128 0x19
	.long	.LASF205
	.byte	0x1
	.byte	0x6d
	.long	0x174
	.long	.LLST15
	.uleb128 0x19
	.long	.LASF149
	.byte	0x1
	.byte	0x6e
	.long	0x174
	.long	.LLST16
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0x71
	.long	0x2af
	.long	.LLST17
	.uleb128 0x1c
	.long	.LASF206
	.byte	0x1
	.byte	0x73
	.long	0xebb
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.byte	0x75
	.long	0x967
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.byte	0x77
	.long	0x8fc
	.long	.LLST18
	.uleb128 0x28
	.long	.LVL24
	.long	0x10b4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x90d
	.uleb128 0xa
	.long	0xeb5
	.uleb128 0x18
	.byte	0x1
	.long	.LASF207
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x2af
	.long	.LFB65
	.long	.LFE65
	.long	.LLST0
	.byte	0x1
	.long	0xfa7
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0x39
	.long	0x816
	.long	.LLST1
	.uleb128 0x19
	.long	.LASF200
	.byte	0x1
	.byte	0x3a
	.long	0xc8d
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF208
	.byte	0x1
	.byte	0x3b
	.long	0x174
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF149
	.byte	0x1
	.byte	0x3c
	.long	0x174
	.long	.LLST4
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0x3f
	.long	0x2af
	.long	.LLST5
	.uleb128 0x1c
	.long	.LASF206
	.byte	0x1
	.byte	0x41
	.long	0xebb
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.byte	0x43
	.long	0x967
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.byte	0x45
	.long	0x8fc
	.long	.LLST6
	.uleb128 0x29
	.long	0x104b
	.long	.LBB16
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x53
	.long	0xf9d
	.uleb128 0x1f
	.long	0x1069
	.long	.LLST7
	.uleb128 0x1f
	.long	0x105d
	.long	.LLST8
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.uleb128 0x23
	.long	0x1075
	.long	.LLST9
	.uleb128 0x23
	.long	0x1081
	.long	.LLST10
	.uleb128 0x23
	.long	0x108d
	.long	.LLST11
	.uleb128 0x23
	.long	0x1099
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LVL15
	.long	0x10c2
	.byte	0
	.uleb128 0x2a
	.long	.LASF209
	.byte	0x2
	.word	0x376
	.byte	0x1
	.long	0xeb5
	.byte	0x3
	.long	0xfc6
	.uleb128 0x2b
	.long	.LASF200
	.byte	0x2
	.word	0x378
	.long	0xc8d
	.byte	0
	.uleb128 0x2a
	.long	.LASF210
	.byte	0x2
	.word	0x369
	.byte	0x1
	.long	0x961
	.byte	0x3
	.long	0xfe5
	.uleb128 0x2b
	.long	.LASF200
	.byte	0x2
	.word	0x36b
	.long	0xc8d
	.byte	0
	.uleb128 0x2a
	.long	.LASF211
	.byte	0x2
	.word	0x323
	.byte	0x1
	.long	0x174
	.byte	0x3
	.long	0x1040
	.uleb128 0x2b
	.long	.LASF124
	.byte	0x2
	.word	0x325
	.long	0x816
	.uleb128 0x2b
	.long	.LASF148
	.byte	0x2
	.word	0x326
	.long	0x174
	.uleb128 0x2c
	.long	.LASF212
	.byte	0x2
	.word	0x329
	.long	0x174
	.uleb128 0x2c
	.long	.LASF129
	.byte	0x2
	.word	0x32b
	.long	0x1046
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x2
	.word	0x32d
	.long	0x180
	.uleb128 0x2c
	.long	.LASF127
	.byte	0x2
	.word	0x32f
	.long	0x180
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x75b
	.uleb128 0xa
	.long	0x1040
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x2
	.word	0x30b
	.byte	0x1
	.long	0x174
	.byte	0x3
	.long	0x10a6
	.uleb128 0x2b
	.long	.LASF124
	.byte	0x2
	.word	0x30d
	.long	0x816
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x2
	.word	0x30e
	.long	0x174
	.uleb128 0x2c
	.long	.LASF148
	.byte	0x2
	.word	0x311
	.long	0x174
	.uleb128 0x2c
	.long	.LASF129
	.byte	0x2
	.word	0x313
	.long	0x1046
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x2
	.word	0x315
	.long	0x180
	.uleb128 0x2c
	.long	.LASF127
	.byte	0x2
	.word	0x317
	.long	0x180
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF214
	.long	.LASF214
	.byte	0x2
	.word	0x2fd
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF215
	.long	.LASF215
	.byte	0x2
	.word	0x2f5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
	.byte	0x2
	.word	0x2ed
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
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
.LLST23:
	.long	.LFB68
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
	.long	.LFE68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST24:
	.long	.LVL36
	.long	.LVL38
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL47
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL47
	.long	.LVL48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL48
	.long	.LFE68
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL45
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL39
	.long	.LVL43
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x8a
	.sleb128 2
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LFE68
	.word	0x2
	.byte	0x8a
	.sleb128 2
	.long	0
	.long	0
.LLST27:
	.long	.LVL39
	.long	.LVL41
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL41
	.long	.LVL44
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LFE68
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL40
	.long	.LVL44
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LFE68
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST29:
	.long	.LVL42
	.long	.LVL44
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LFE68
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL30
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL33-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33-1
	.long	.LVL34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LFE67
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL30
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LFE67
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL28
	.long	.LVL30
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL33-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LFE67
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x88
	.sleb128 2
	.long	.LVL29
	.long	.LVL30
	.word	0x2
	.byte	0x8a
	.sleb128 2
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x88
	.sleb128 2
	.long	.LVL32
	.long	.LVL33-1
	.word	0x2
	.byte	0x86
	.sleb128 2
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x88
	.sleb128 2
	.long	.LVL35
	.long	.LFE67
	.word	0x2
	.byte	0x8a
	.sleb128 2
	.long	0
	.long	0
.LLST13:
	.long	.LVL18
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL18
	.long	.LVL21
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL25
	.long	.LFE66
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL18
	.long	.LVL21
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL25
	.long	.LFE66
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL18
	.long	.LVL21
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL24-1
	.word	0x2
	.byte	0x8e
	.sleb128 6
	.long	.LVL24-1
	.long	.LVL25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL25
	.long	.LFE66
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LFE66
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL19
	.long	.LVL21
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL24-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE66
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST0:
	.long	.LFB65
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
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL4
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL7
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL15-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL5
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL13
	.long	.LVL15-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL16
	.long	.LFE65
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL6
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL13
	.long	.LVL15-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL16
	.long	.LFE65
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL3
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL7
	.word	0x2
	.byte	0x8e
	.sleb128 6
	.long	.LVL7
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL9
	.long	.LVL13
	.word	0x2
	.byte	0x8e
	.sleb128 6
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15-1
	.word	0x2
	.byte	0x8e
	.sleb128 6
	.long	.LVL15-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL16
	.long	.LFE65
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LFE65
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL1
	.long	.LVL7
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL15-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LFE65
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL2
	.long	.LVL6
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL2
	.long	.LVL4
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL2
	.long	.LVL4
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL3
	.long	.LVL6
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
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
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB16
	.long	.LBE16
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB22
	.long	.LBE22
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB67
	.long	.LFE67
	.long	.LFB68
	.long	.LFE68
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
	.string	"OSEE_ACTION_CALLBACK"
.LASF13:
	.string	"OsEE_event_mask"
.LASF193:
	.string	"p_alarm_ptr_array"
.LASF98:
	.string	"OsEE_byte"
.LASF132:
	.string	"OSEE_ACTION_TASK"
.LASF167:
	.string	"p_stk_sn"
.LASF33:
	.string	"TickType"
.LASF169:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF160:
	.string	"OsEE_autostart_trigger"
.LASF120:
	.string	"OsEE_TDB"
.LASF19:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF57:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF140:
	.string	"type"
.LASF190:
	.string	"res_array_size"
.LASF195:
	.string	"OsEE_KDB"
.LASF22:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF70:
	.string	"StatusType"
.LASF31:
	.string	"OsEE_task_status"
.LASF88:
	.string	"OsEE_SCB"
.LASF212:
	.string	"delta"
.LASF25:
	.string	"OSEE_TASK_SUSPENDED"
.LASF21:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF185:
	.string	"OsEE_CDB"
.LASF76:
	.string	"task_type"
.LASF34:
	.string	"maxallowedvalue"
.LASF196:
	.string	"osEE_kdb_var"
.LASF166:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF38:
	.string	"EventMaskType"
.LASF184:
	.string	"autostart_trigger_array_size"
.LASF218:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_oo_alarm.c"
.LASF109:
	.string	"OsEE_MCB"
.LASF56:
	.string	"E_OS_PROTECTION_TIME"
.LASF68:
	.string	"E_OS_SYS_ACT"
.LASF179:
	.string	"p_idle_task"
.LASF23:
	.string	"OsEE_task_type"
.LASF107:
	.string	"p_cb"
.LASF16:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF189:
	.string	"p_res_ptr_array"
.LASF146:
	.string	"OSEE_TRIGGER_REENABLED"
.LASF131:
	.string	"OsEE_CounterDB"
.LASF63:
	.string	"E_OS_CORE"
.LASF41:
	.string	"E_OS_ACCESS"
.LASF96:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF103:
	.string	"OsEE_kernel_status"
.LASF92:
	.string	"OsEE_SDB"
.LASF40:
	.string	"E_OK"
.LASF87:
	.string	"p_tos"
.LASF156:
	.string	"second_tick_parameter"
.LASF155:
	.string	"first_tick_parameter"
.LASF208:
	.string	"increment"
.LASF43:
	.string	"E_OS_ID"
.LASF39:
	.string	"MemSize"
.LASF204:
	.string	"osEE_alarm_set_abs"
.LASF36:
	.string	"mincycle"
.LASF100:
	.string	"OSEE_KERNEL_STARTING"
.LASF186:
	.string	"dummy"
.LASF58:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF77:
	.string	"task_func"
.LASF127:
	.string	"value"
.LASF80:
	.string	"max_num_of_act"
.LASF110:
	.string	"OsEE_MDB"
.LASF115:
	.string	"p_last_m"
.LASF158:
	.string	"p_trigger_ptr_array"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"AlarmBaseType"
.LASF121:
	.string	"OsEE_TriggerQ"
.LASF133:
	.string	"OSEE_ACTION_EVENT"
.LASF129:
	.string	"p_counter_cb"
.LASF8:
	.string	"long unsigned int"
.LASF150:
	.string	"OsEE_TriggerCB"
.LASF152:
	.string	"OsEE_AlarmCB"
.LASF55:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF188:
	.string	"p_kcb"
.LASF148:
	.string	"when"
.LASF18:
	.string	"TaskFunc"
.LASF15:
	.string	"TaskType"
.LASF141:
	.string	"OsEE_action"
.LASF144:
	.string	"OSEE_TRIGGER_ACTIVE"
.LASF168:
	.string	"os_status"
.LASF14:
	.string	"AppModeType"
.LASF74:
	.string	"OsEE_TDB_tag"
.LASF86:
	.string	"OsEE_SCB_tag"
.LASF30:
	.string	"OSEE_TASK_CHAINED"
.LASF82:
	.string	"OsEE_RQ"
.LASF176:
	.string	"OsEE_CCB"
.LASF178:
	.string	"p_idle_hook"
.LASF202:
	.string	"osEE_alarm_get"
.LASF171:
	.string	"prev_s_isr_all_status"
.LASF191:
	.string	"p_counter_ptr_array"
.LASF192:
	.string	"counter_array_size"
.LASF194:
	.string	"alarm_array_size"
.LASF174:
	.string	"s_isr_os_cnt"
.LASF47:
	.string	"E_OS_STATE"
.LASF28:
	.string	"OSEE_TASK_WAITING"
.LASF124:
	.string	"p_counter_db"
.LASF175:
	.string	"d_isr_all_cnt"
.LASF165:
	.string	"p_curr"
.LASF102:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF66:
	.string	"E_OS_SYS_TASK"
.LASF106:
	.string	"OsEE_MDB_tag"
.LASF134:
	.string	"OSEE_ACTION_COUNTER"
.LASF2:
	.string	"long double"
.LASF111:
	.string	"OsEE_ResourceDB"
.LASF164:
	.string	"OsEE_autostart_tdb"
.LASF201:
	.string	"p_tick"
.LASF125:
	.string	"action"
.LASF105:
	.string	"p_owner"
.LASF17:
	.string	"TaskActivation"
.LASF12:
	.string	"OsEE_tick_type"
.LASF159:
	.string	"trigger_array_size"
.LASF54:
	.string	"E_OS_PARAM_POINTER"
.LASF104:
	.string	"prev_prio"
.LASF117:
	.string	"event_mask"
.LASF90:
	.string	"p_bos"
.LASF52:
	.string	"E_OS_DISABLEDINT"
.LASF187:
	.string	"OsEE_KCB"
.LASF81:
	.string	"OsEE_SN"
.LASF51:
	.string	"E_OS_MISSINGEND"
.LASF108:
	.string	"prio"
.LASF219:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF35:
	.string	"ticksperbase"
.LASF143:
	.string	"OSEE_TRIGGER_CANCELED"
.LASF78:
	.string	"ready_prio"
.LASF27:
	.string	"OSEE_TASK_READY_STACKED"
.LASF48:
	.string	"E_OS_VALUE"
.LASF89:
	.string	"OsEE_SDB_tag"
.LASF153:
	.string	"OsEE_AlarmDB"
.LASF112:
	.string	"current_num_of_act"
.LASF180:
	.string	"p_sys_counter_db"
.LASF213:
	.string	"osEE_counter_eval_when"
.LASF75:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF59:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF83:
	.string	"OsEE_CTX_tag"
.LASF67:
	.string	"E_OS_SYS_STACK"
.LASF101:
	.string	"OSEE_KERNEL_STARTED"
.LASF122:
	.string	"OsEE_TriggerDB_tag"
.LASF130:
	.string	"info"
.LASF61:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF62:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF162:
	.string	"p_tdb_ptr_array"
.LASF71:
	.string	"p_next"
.LASF26:
	.string	"OSEE_TASK_READY"
.LASF205:
	.string	"start"
.LASF44:
	.string	"E_OS_LIMIT"
.LASF147:
	.string	"OsEE_trigger_status"
.LASF116:
	.string	"wait_mask"
.LASF177:
	.string	"p_ccb"
.LASF198:
	.string	"osEE_kcb_var"
.LASF197:
	.string	"osEE_cdb_var"
.LASF151:
	.string	"OsEE_TriggerDB"
.LASF161:
	.string	"OsEE_autostart_tdb_tag"
.LASF20:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF97:
	.string	"OsEE_kernel_cb"
.LASF172:
	.string	"prev_s_isr_os_status"
.LASF203:
	.string	"osEE_alarm_cancel"
.LASF170:
	.string	"last_error"
.LASF73:
	.string	"OsEE_SN_tag"
.LASF113:
	.string	"current_prio"
.LASF64:
	.string	"E_OS_SYS_INIT"
.LASF126:
	.string	"trigger_queue"
.LASF69:
	.string	"OsEE_status_type"
.LASF72:
	.string	"p_tdb"
.LASF211:
	.string	"osEE_counter_eval_delta"
.LASF99:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF210:
	.string	"osEE_alarm_get_trigger_db"
.LASF50:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF200:
	.string	"p_alarm_db"
.LASF183:
	.string	"p_autostart_trigger_array"
.LASF11:
	.string	"OsEE_mem_size"
.LASF123:
	.string	"p_trigger_cb"
.LASF118:
	.string	"p_own_sn"
.LASF138:
	.string	"OsEE_action_param"
.LASF154:
	.string	"p_trigger_db"
.LASF209:
	.string	"osEE_alarm_get_cb"
.LASF95:
	.string	"p_scb"
.LASF32:
	.string	"TaskStateType"
.LASF139:
	.string	"param"
.LASF214:
	.string	"osEE_counter_cancel_trigger"
.LASF142:
	.string	"OSEE_TRIGGER_INACTIVE"
.LASF46:
	.string	"E_OS_RESOURCE"
.LASF215:
	.string	"osEE_counter_insert_abs_trigger"
.LASF163:
	.string	"tdb_array_size"
.LASF173:
	.string	"s_isr_all_cnt"
.LASF207:
	.string	"osEE_alarm_set_rel"
.LASF149:
	.string	"cycle"
.LASF137:
	.string	"mask"
.LASF114:
	.string	"status"
.LASF65:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF217:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF79:
	.string	"dispatch_prio"
.LASF216:
	.string	"osEE_counter_insert_rel_trigger"
.LASF5:
	.string	"uint8_t"
.LASF49:
	.string	"E_OS_SERVICEID"
.LASF91:
	.string	"stack_size"
.LASF145:
	.string	"OSEE_TRIGGER_EXPIRED"
.LASF119:
	.string	"OsEE_TCB"
.LASF182:
	.string	"autostart_tdb_array_size"
.LASF93:
	.string	"OsEE_HDB_tag"
.LASF128:
	.string	"OsEE_CounterCB"
.LASF45:
	.string	"E_OS_NOFUNC"
.LASF94:
	.string	"p_sdb"
.LASF42:
	.string	"E_OS_CALLEVEL"
.LASF24:
	.string	"TaskExecutionType"
.LASF206:
	.string	"p_alarm_cb"
.LASF29:
	.string	"OSEE_TASK_RUNNING"
.LASF157:
	.string	"OsEE_autostart_trigger_info"
.LASF199:
	.string	"osEE_ccb_var"
.LASF136:
	.string	"OsEE_action_type"
.LASF53:
	.string	"E_OS_STACKFAULT"
.LASF181:
	.string	"p_autostart_tdb_array"
.LASF84:
	.string	"p_ctx"
.LASF60:
	.string	"E_OS_SPINLOCK"
.LASF85:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
