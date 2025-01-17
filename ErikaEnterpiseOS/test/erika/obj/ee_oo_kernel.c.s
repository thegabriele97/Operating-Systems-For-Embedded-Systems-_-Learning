	.file	"ee_oo_kernel.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_task_activated,"ax",@progbits
.global	osEE_task_activated
	.type	osEE_task_activated, @function
osEE_task_activated:
.LFB56:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_kernel.c"
	.loc 1 59 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	.loc 1 61 0
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
.LVL1:
	.loc 1 71 0
	ld r25,Z
	adiw r26,13
	ld r24,X
.LVL2:
	cp r25,r24
	brsh .L3
	.loc 1 72 0
	subi r25,lo8(-(1))
	st Z,r25
.LVL3:
	.loc 1 73 0
	ldi r25,0
	ldi r24,0
	ret
.LVL4:
.L3:
	.loc 1 75 0
	ldi r24,lo8(4)
	ldi r25,0
.LVL5:
/* epilogue start */
	.loc 1 87 0
	ret
	.cfi_endproc
.LFE56:
	.size	osEE_task_activated, .-osEE_task_activated
	.section	.text.osEE_task_end,"ax",@progbits
.global	osEE_task_end
	.type	osEE_task_end, @function
osEE_task_end:
.LFB57:
	.loc 1 94 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 96 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
.LVL7:
	.loc 1 98 0
	adiw r26,11
	ld r24,X
.LVL8:
	std Z+1,r24
	.loc 1 100 0
	ld r24,Z
	subi r24,lo8(-(-1))
	st Z,r24
	.loc 1 102 0
	cpse r24,__zero_reg__
	rjmp .L5
	.loc 1 103 0
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ret
.L5:
	.loc 1 105 0
	ldi r24,lo8(1)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
/* epilogue start */
	.loc 1 107 0
	ret
	.cfi_endproc
.LFE57:
	.size	osEE_task_end, .-osEE_task_end
	.section	.text.osEE_task_event_set_mask,"ax",@progbits
.global	osEE_task_event_set_mask
	.type	osEE_task_event_set_mask, @function
osEE_task_event_set_mask:
.LFB58:
	.loc 1 117 0
	.cfi_startproc
.LVL9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 122 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
.LVL10:
	.loc 1 143 0
	ldd r24,Z+6
	ldd r25,Z+7
.LVL11:
	or r24,r22
	or r25,r23
	std Z+7,r25
	std Z+6,r24
	.loc 1 145 0
	movw r26,r20
.LVL12:
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 147 0
	ldd r24,Z+4
	ldd r25,Z+5
	and r22,r24
.LVL13:
	and r23,r25
	or r22,r23
	breq .L9
	.loc 1 148 0
	ldd r24,Z+8
	ldd r25,Z+9
.LVL14:
	.loc 1 152 0
	sbiw r24,0
	breq .L7
	.loc 1 153 0
	std Z+9,__zero_reg__
	std Z+8,__zero_reg__
	ret
.LVL15:
.L9:
	.loc 1 120 0
	ldi r25,0
	ldi r24,0
.LVL16:
.L7:
/* epilogue start */
	.loc 1 167 0
	ret
	.cfi_endproc
.LFE58:
	.size	osEE_task_event_set_mask, .-osEE_task_event_set_mask
	.section	.text.osEE_activate_isr2,"ax",@progbits
.global	osEE_activate_isr2
	.type	osEE_activate_isr2, @function
osEE_activate_isr2:
.LFB59:
	.loc 1 193 0
	.cfi_startproc
.LVL17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB5:
	.loc 1 200 0
	lds r30,osEE_kdb_var+2
	lds r31,osEE_kdb_var+2+1
	ldi r25,0
	lsl r24
	rol r25
.LVL18:
	add r30,r24
	adc r31,r25
	ld r22,Z
	ldd r23,Z+1
.LVL19:
	.loc 1 205 0
	movw r26,r22
	adiw r26,4
	ld r30,X+
	ld r31,X
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	.loc 1 207 0
	ldi r21,0
	ldi r20,0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	jmp osEE_scheduler_task_set_running
.LVL20:
.LBE5:
	.cfi_endproc
.LFE59:
	.size	osEE_activate_isr2, .-osEE_activate_isr2
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_platform_types.h"
	.file 4 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_api_types.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_scheduler_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_kernel_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_get_kernel_and_core.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x97d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF147
	.byte	0xc
	.long	.LASF148
	.long	.LASF149
	.long	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
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
	.byte	0x3
	.byte	0x5b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x6d
	.long	0x5e
	.uleb128 0x5
	.byte	0x2
	.long	0xa5
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x78
	.long	0x7e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0xf4
	.long	0x4c
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.word	0x13a
	.long	0x9f
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x145
	.long	0x106
	.uleb128 0x9
	.long	.LASF18
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.uleb128 0x9
	.long	.LASF20
	.byte	0x2
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.word	0x153
	.long	0xdf
	.uleb128 0x7
	.long	.LASF23
	.byte	0x4
	.word	0x157
	.long	0x106
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x15d
	.long	0x151
	.uleb128 0x9
	.long	.LASF24
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.uleb128 0x9
	.long	.LASF27
	.byte	0x3
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x4
	.word	0x16e
	.long	0x11e
	.uleb128 0x7
	.long	.LASF31
	.byte	0x4
	.word	0x17e
	.long	0x151
	.uleb128 0x7
	.long	.LASF32
	.byte	0x4
	.word	0x237
	.long	0x94
	.uleb128 0x7
	.long	.LASF33
	.byte	0x4
	.word	0x2a3
	.long	0x89
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x2b1
	.long	0x23e
	.uleb128 0x9
	.long	.LASF34
	.byte	0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.uleb128 0x9
	.long	.LASF36
	.byte	0x2
	.uleb128 0x9
	.long	.LASF37
	.byte	0x3
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.uleb128 0x9
	.long	.LASF43
	.byte	0x9
	.uleb128 0x9
	.long	.LASF44
	.byte	0xa
	.uleb128 0x9
	.long	.LASF45
	.byte	0xb
	.uleb128 0x9
	.long	.LASF46
	.byte	0xc
	.uleb128 0x9
	.long	.LASF47
	.byte	0xd
	.uleb128 0x9
	.long	.LASF48
	.byte	0xe
	.uleb128 0x9
	.long	.LASF49
	.byte	0xf
	.uleb128 0x9
	.long	.LASF50
	.byte	0x10
	.uleb128 0x9
	.long	.LASF51
	.byte	0x11
	.uleb128 0x9
	.long	.LASF52
	.byte	0x12
	.uleb128 0x9
	.long	.LASF53
	.byte	0x13
	.uleb128 0x9
	.long	.LASF54
	.byte	0x14
	.uleb128 0x9
	.long	.LASF55
	.byte	0x15
	.uleb128 0x9
	.long	.LASF56
	.byte	0x16
	.uleb128 0x9
	.long	.LASF57
	.byte	0x17
	.uleb128 0x9
	.long	.LASF58
	.byte	0x18
	.uleb128 0x9
	.long	.LASF59
	.byte	0x19
	.uleb128 0x9
	.long	.LASF60
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF61
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF62
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.long	.LASF63
	.byte	0x4
	.word	0x2d4
	.long	0x181
	.uleb128 0x7
	.long	.LASF64
	.byte	0x4
	.word	0x2d9
	.long	0x23e
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x27f
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.byte	0x4d
	.long	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x5
	.byte	0x4f
	.long	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x256
	.uleb128 0xc
	.long	.LASF68
	.byte	0xe
	.byte	0x6
	.word	0x108
	.long	0x30b
	.uleb128 0xd
	.string	"hdb"
	.byte	0x6
	.word	0x10b
	.long	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x6
	.word	0x10e
	.long	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"tid"
	.byte	0x6
	.word	0x110
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF70
	.byte	0x6
	.word	0x112
	.long	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.long	.LASF71
	.byte	0x6
	.word	0x114
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.long	.LASF72
	.byte	0x6
	.word	0x117
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.long	.LASF73
	.byte	0x6
	.word	0x11a
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF74
	.byte	0x6
	.word	0x11c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xf
	.long	0x285
	.uleb128 0x5
	.byte	0x2
	.long	0x30b
	.uleb128 0x4
	.long	.LASF75
	.byte	0x5
	.byte	0x50
	.long	0x256
	.uleb128 0x4
	.long	.LASF76
	.byte	0x5
	.byte	0xd5
	.long	0x32c
	.uleb128 0x5
	.byte	0x2
	.long	0x316
	.uleb128 0xa
	.long	.LASF77
	.byte	0x14
	.byte	0x7
	.byte	0x43
	.long	0x441
	.uleb128 0x10
	.string	"r29"
	.byte	0x7
	.byte	0x44
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"r28"
	.byte	0x7
	.byte	0x45
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"r17"
	.byte	0x7
	.byte	0x46
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"r16"
	.byte	0x7
	.byte	0x47
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x10
	.string	"r15"
	.byte	0x7
	.byte	0x48
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"r14"
	.byte	0x7
	.byte	0x49
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.string	"r13"
	.byte	0x7
	.byte	0x4a
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"r12"
	.byte	0x7
	.byte	0x4b
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.string	"r11"
	.byte	0x7
	.byte	0x4c
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"r10"
	.byte	0x7
	.byte	0x4d
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.string	"r9"
	.byte	0x7
	.byte	0x4e
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.string	"r8"
	.byte	0x7
	.byte	0x4f
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.string	"r7"
	.byte	0x7
	.byte	0x50
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"r6"
	.byte	0x7
	.byte	0x51
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.string	"r5"
	.byte	0x7
	.byte	0x52
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.string	"r4"
	.byte	0x7
	.byte	0x53
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.string	"r3"
	.byte	0x7
	.byte	0x54
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"r2"
	.byte	0x7
	.byte	0x55
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF78
	.byte	0x7
	.byte	0x56
	.long	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x332
	.uleb128 0x4
	.long	.LASF79
	.byte	0x7
	.byte	0x57
	.long	0x332
	.uleb128 0xa
	.long	.LASF80
	.byte	0x2
	.byte	0x7
	.byte	0x5a
	.long	0x46d
	.uleb128 0xb
	.long	.LASF81
	.byte	0x7
	.byte	0x5b
	.long	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x447
	.uleb128 0x4
	.long	.LASF82
	.byte	0x7
	.byte	0x5c
	.long	0x452
	.uleb128 0xa
	.long	.LASF83
	.byte	0x4
	.byte	0x7
	.byte	0x5e
	.long	0x4a7
	.uleb128 0xb
	.long	.LASF84
	.byte	0x7
	.byte	0x5f
	.long	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF85
	.byte	0x7
	.byte	0x60
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x47e
	.uleb128 0x4
	.long	.LASF86
	.byte	0x7
	.byte	0x61
	.long	0x4a7
	.uleb128 0xa
	.long	.LASF87
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.long	0x4e0
	.uleb128 0xb
	.long	.LASF88
	.byte	0x7
	.byte	0x64
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x7
	.byte	0x65
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x4b7
	.uleb128 0x5
	.byte	0x2
	.long	0x4ac
	.uleb128 0x5
	.byte	0x2
	.long	0x473
	.uleb128 0x4
	.long	.LASF90
	.byte	0x7
	.byte	0x69
	.long	0x4e0
	.uleb128 0x4
	.long	.LASF91
	.byte	0x6
	.byte	0x53
	.long	0x4c
	.uleb128 0x11
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x73
	.long	0x52d
	.uleb128 0x9
	.long	.LASF92
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0x1
	.uleb128 0x9
	.long	.LASF94
	.byte	0x2
	.uleb128 0x9
	.long	.LASF95
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF96
	.byte	0x6
	.byte	0x7d
	.long	0x507
	.uleb128 0x12
	.long	0x52d
	.uleb128 0x13
	.byte	0xa
	.byte	0x6
	.byte	0xe0
	.long	0x59a
	.uleb128 0xb
	.long	.LASF97
	.byte	0x6
	.byte	0xe4
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.byte	0xea
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF99
	.byte	0x6
	.byte	0xec
	.long	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF100
	.byte	0x6
	.byte	0xf3
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF101
	.byte	0x6
	.byte	0xf5
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF102
	.byte	0x6
	.byte	0xfb
	.long	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF103
	.byte	0x6
	.word	0x101
	.long	0x53d
	.uleb128 0x5
	.byte	0x2
	.long	0x59a
	.uleb128 0xf
	.long	0x5a6
	.uleb128 0x7
	.long	.LASF104
	.byte	0x6
	.word	0x122
	.long	0x30b
	.uleb128 0x5
	.byte	0x2
	.long	0x5b1
	.uleb128 0xf
	.long	0x5bd
	.uleb128 0xc
	.long	.LASF105
	.byte	0x4
	.byte	0x6
	.word	0x2c7
	.long	0x5f4
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.word	0x2c9
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.word	0x2cb
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x5c8
	.uleb128 0x14
	.long	0x5c3
	.long	0x604
	.uleb128 0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x5f9
	.uleb128 0x7
	.long	.LASF108
	.byte	0x6
	.word	0x2cc
	.long	0x5f4
	.uleb128 0x16
	.byte	0x12
	.byte	0x6
	.word	0x2d9
	.long	0x6d3
	.uleb128 0xe
	.long	.LASF109
	.byte	0x6
	.word	0x2dc
	.long	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"rq"
	.byte	0x6
	.word	0x2ee
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF110
	.byte	0x6
	.word	0x2f0
	.long	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF111
	.byte	0x6
	.word	0x2ff
	.long	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF112
	.byte	0x6
	.word	0x301
	.long	0x538
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF113
	.byte	0x6
	.word	0x305
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.long	.LASF114
	.byte	0x6
	.word	0x307
	.long	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.long	.LASF115
	.byte	0x6
	.word	0x327
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.long	.LASF116
	.byte	0x6
	.word	0x329
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.long	.LASF117
	.byte	0x6
	.word	0x32b
	.long	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xe
	.long	.LASF118
	.byte	0x6
	.word	0x32d
	.long	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF119
	.byte	0x6
	.word	0x330
	.long	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	.LASF120
	.byte	0x6
	.word	0x33a
	.long	0x616
	.uleb128 0x16
	.byte	0xa
	.byte	0x6
	.word	0x344
	.long	0x734
	.uleb128 0xe
	.long	.LASF121
	.byte	0x6
	.word	0x34a
	.long	0x739
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF122
	.byte	0x6
	.word	0x351
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF123
	.byte	0x6
	.word	0x354
	.long	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF124
	.byte	0x6
	.word	0x35c
	.long	0x74a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF125
	.byte	0x6
	.word	0x35e
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.long	0x6df
	.uleb128 0x5
	.byte	0x2
	.long	0x6d3
	.uleb128 0x14
	.long	0x60a
	.long	0x74a
	.uleb128 0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x73f
	.uleb128 0x7
	.long	.LASF126
	.byte	0x6
	.word	0x36a
	.long	0x734
	.uleb128 0x16
	.byte	0x1
	.byte	0x6
	.word	0x36f
	.long	0x775
	.uleb128 0xe
	.long	.LASF127
	.byte	0x6
	.word	0x3b1
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF128
	.byte	0x6
	.word	0x3b3
	.long	0x75c
	.uleb128 0x16
	.byte	0x6
	.byte	0x6
	.word	0x3c3
	.long	0x7b8
	.uleb128 0xe
	.long	.LASF129
	.byte	0x6
	.word	0x3c5
	.long	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.word	0x3d1
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.word	0x3d4
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.long	0x781
	.uleb128 0x5
	.byte	0x2
	.long	0x775
	.uleb128 0x7
	.long	.LASF130
	.byte	0x6
	.word	0x3fc
	.long	0x7b8
	.uleb128 0x17
	.long	.LASF131
	.byte	0x8
	.byte	0x3f
	.long	0x7c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF132
	.byte	0x8
	.byte	0x40
	.long	0x750
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF133
	.byte	0x8
	.byte	0x41
	.long	0x775
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF134
	.byte	0x8
	.byte	0x42
	.long	0x6d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x85b
	.uleb128 0x19
	.long	.LASF135
	.byte	0x1
	.byte	0xbf
	.long	0xb2
	.long	.LLST6
	.uleb128 0x1a
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x1
	.byte	0xc6
	.long	0x861
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x1
	.byte	0xc8
	.long	0x5c3
	.long	.LLST7
	.uleb128 0x1d
	.long	.LVL20
	.byte	0x1
	.long	0x973
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x7c3
	.uleb128 0xf
	.long	0x85b
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF143
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	0x32c
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x8d6
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.byte	0x71
	.long	0x5bd
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF137
	.byte	0x1
	.byte	0x72
	.long	0x169
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF138
	.byte	0x1
	.byte	0x73
	.long	0x8d6
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.byte	0x78
	.long	0x32c
	.long	.LLST5
	.uleb128 0x20
	.long	.LASF140
	.byte	0x1
	.byte	0x7a
	.long	0x5ac
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x24a
	.uleb128 0x18
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x918
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.byte	0x5c
	.long	0x5c3
	.long	.LLST2
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.byte	0x60
	.long	0x5ac
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x24a
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x966
	.uleb128 0x19
	.long	.LASF145
	.byte	0x1
	.byte	0x39
	.long	0x5bd
	.long	.LLST0
	.uleb128 0x21
	.string	"ev"
	.byte	0x1
	.byte	0x3c
	.long	0x24a
	.long	.LLST1
	.uleb128 0x20
	.long	.LASF146
	.byte	0x1
	.byte	0x3d
	.long	0x5ac
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x22
	.long	.LASF151
	.byte	0x8
	.byte	0x54
	.byte	0x1
	.long	0x85b
	.byte	0x3
	.uleb128 0x23
	.byte	0x1
	.byte	0x1
	.long	.LASF152
	.long	.LASF152
	.byte	0x9
	.byte	0x9b
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	.LVL18
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL20-1
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
	.long	.LVL9
	.long	.LVL11
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE57
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
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE56
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LFE56
	.word	0x2
	.byte	0x34
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
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"OsEE_event_mask"
.LASF91:
	.string	"OsEE_byte"
.LASF124:
	.string	"p_autostart_tdb_array"
.LASF111:
	.string	"p_stk_sn"
.LASF113:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF104:
	.string	"OsEE_TDB"
.LASF18:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF51:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF130:
	.string	"OsEE_KDB"
.LASF21:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF148:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_kernel.c"
.LASF9:
	.string	"long long unsigned int"
.LASF142:
	.string	"osEE_task_end"
.LASF64:
	.string	"StatusType"
.LASF30:
	.string	"OsEE_task_status"
.LASF82:
	.string	"OsEE_SCB"
.LASF135:
	.string	"isr2_id"
.LASF24:
	.string	"OSEE_TASK_SUSPENDED"
.LASF20:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF126:
	.string	"OsEE_CDB"
.LASF70:
	.string	"task_type"
.LASF131:
	.string	"osEE_kdb_var"
.LASF110:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF32:
	.string	"EventMaskType"
.LASF50:
	.string	"E_OS_PROTECTION_TIME"
.LASF62:
	.string	"E_OS_SYS_ACT"
.LASF123:
	.string	"p_idle_task"
.LASF22:
	.string	"OsEE_task_type"
.LASF15:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF57:
	.string	"E_OS_CORE"
.LASF35:
	.string	"E_OS_ACCESS"
.LASF90:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF96:
	.string	"OsEE_kernel_status"
.LASF86:
	.string	"OsEE_SDB"
.LASF34:
	.string	"E_OK"
.LASF81:
	.string	"p_tos"
.LASF143:
	.string	"osEE_task_event_set_mask"
.LASF37:
	.string	"E_OS_ID"
.LASF33:
	.string	"MemSize"
.LASF152:
	.string	"osEE_scheduler_task_set_running"
.LASF59:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF93:
	.string	"OSEE_KERNEL_STARTING"
.LASF127:
	.string	"dummy"
.LASF52:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF71:
	.string	"task_func"
.LASF74:
	.string	"max_num_of_act"
.LASF125:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF100:
	.string	"wait_mask"
.LASF8:
	.string	"long unsigned int"
.LASF49:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF129:
	.string	"p_kcb"
.LASF17:
	.string	"TaskFunc"
.LASF14:
	.string	"TaskType"
.LASF150:
	.string	"p_kdb"
.LASF144:
	.string	"osEE_task_activated"
.LASF112:
	.string	"os_status"
.LASF13:
	.string	"AppModeType"
.LASF68:
	.string	"OsEE_TDB_tag"
.LASF80:
	.string	"OsEE_SCB_tag"
.LASF29:
	.string	"OSEE_TASK_CHAINED"
.LASF151:
	.string	"osEE_get_kernel"
.LASF76:
	.string	"OsEE_RQ"
.LASF120:
	.string	"OsEE_CCB"
.LASF122:
	.string	"p_idle_hook"
.LASF115:
	.string	"prev_s_isr_all_status"
.LASF140:
	.string	"p_tcb_waking_up"
.LASF118:
	.string	"s_isr_os_cnt"
.LASF41:
	.string	"E_OS_STATE"
.LASF27:
	.string	"OSEE_TASK_WAITING"
.LASF119:
	.string	"d_isr_all_cnt"
.LASF109:
	.string	"p_curr"
.LASF95:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF60:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF145:
	.string	"p_tdb_act"
.LASF108:
	.string	"OsEE_autostart_tdb"
.LASF16:
	.string	"TaskActivation"
.LASF48:
	.string	"E_OS_PARAM_POINTER"
.LASF101:
	.string	"event_mask"
.LASF84:
	.string	"p_bos"
.LASF46:
	.string	"E_OS_DISABLEDINT"
.LASF128:
	.string	"OsEE_KCB"
.LASF75:
	.string	"OsEE_SN"
.LASF45:
	.string	"E_OS_MISSINGEND"
.LASF141:
	.string	"osEE_activate_isr2"
.LASF72:
	.string	"ready_prio"
.LASF26:
	.string	"OSEE_TASK_READY_STACKED"
.LASF42:
	.string	"E_OS_VALUE"
.LASF83:
	.string	"OsEE_SDB_tag"
.LASF97:
	.string	"current_num_of_act"
.LASF146:
	.string	"p_tcb_act"
.LASF69:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF53:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF77:
	.string	"OsEE_CTX_tag"
.LASF61:
	.string	"E_OS_SYS_STACK"
.LASF94:
	.string	"OSEE_KERNEL_STARTED"
.LASF55:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF56:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF106:
	.string	"p_tdb_ptr_array"
.LASF65:
	.string	"p_next"
.LASF25:
	.string	"OSEE_TASK_READY"
.LASF139:
	.string	"p_act_tdb"
.LASF38:
	.string	"E_OS_LIMIT"
.LASF121:
	.string	"p_ccb"
.LASF133:
	.string	"osEE_kcb_var"
.LASF132:
	.string	"osEE_cdb_var"
.LASF105:
	.string	"OsEE_autostart_tdb_tag"
.LASF19:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF116:
	.string	"prev_s_isr_os_status"
.LASF114:
	.string	"last_error"
.LASF67:
	.string	"OsEE_SN_tag"
.LASF98:
	.string	"current_prio"
.LASF58:
	.string	"E_OS_SYS_INIT"
.LASF63:
	.string	"OsEE_status_type"
.LASF66:
	.string	"p_tdb"
.LASF92:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF44:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF149:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF11:
	.string	"OsEE_mem_size"
.LASF102:
	.string	"p_own_sn"
.LASF89:
	.string	"p_scb"
.LASF31:
	.string	"TaskStateType"
.LASF136:
	.string	"p_tdb_waking_up"
.LASF40:
	.string	"E_OS_RESOURCE"
.LASF137:
	.string	"Mask"
.LASF107:
	.string	"tdb_array_size"
.LASF117:
	.string	"s_isr_all_cnt"
.LASF99:
	.string	"status"
.LASF147:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF73:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF43:
	.string	"E_OS_SERVICEID"
.LASF85:
	.string	"stack_size"
.LASF103:
	.string	"OsEE_TCB"
.LASF138:
	.string	"p_ev"
.LASF87:
	.string	"OsEE_HDB_tag"
.LASF39:
	.string	"E_OS_NOFUNC"
.LASF88:
	.string	"p_sdb"
.LASF36:
	.string	"E_OS_CALLEVEL"
.LASF23:
	.string	"TaskExecutionType"
.LASF28:
	.string	"OSEE_TASK_RUNNING"
.LASF134:
	.string	"osEE_ccb_var"
.LASF47:
	.string	"E_OS_STACKFAULT"
.LASF78:
	.string	"p_ctx"
.LASF54:
	.string	"E_OS_SPINLOCK"
.LASF79:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
