	.file	"ee_oo_api_extension.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.WaitSem,"ax",@progbits
.global	WaitSem
	.type	WaitSem, @function
WaitSem:
.LFB56:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_api_extension.c"
	.loc 1 87 0
	.cfi_startproc
.LVL0:
	push r10
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
	rcall .
.LCFI9:
	.cfi_def_cfa_offset 13
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI10:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 11 */
.L__stack_usage = 11
	.loc 1 91 0
	sbiw r24,0
	breq .L5
.LBB56:
.LBB57:
.LBB58:
	.file 2 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_kernel.h"
	.loc 2 172 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r14,Z
	ldd r15,Z+1
.LBE58:
.LBE57:
.LBB59:
.LBB60:
.LBB61:
.LBB62:
	.file 3 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_hal_internal.h"
	.loc 3 116 0
	in r13,__SREG__
.LVL1:
.LBB63:
.LBB64:
	.loc 3 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL2:
/* #NOAPP */
.LBE64:
.LBE63:
.LBE62:
.LBE61:
.LBE60:
.LBE59:
	.loc 1 99 0
	movw r30,r14
	ldd r18,Z+7
	ldd r19,Z+8
	cpi r18,1
	cpc r19,__zero_reg__
	brne .L6
	.loc 1 103 0
	movw r30,r24
	ldd r18,Z+2
	tst r18
	breq .L4
	.loc 1 104 0
	subi r18,lo8(-(-1))
	std Z+2,r18
.LVL3:
.L7:
	.loc 1 122 0
	ldi r25,0
	ldi r24,0
.L3:
.LVL4:
.LBB65:
.LBB66:
.LBB67:
.LBB68:
	.loc 3 123 0
	.loc 3 124 0
	out __SREG__,r13
.LVL5:
.L1:
/* epilogue start */
.LBE68:
.LBE67:
.LBE66:
.LBE65:
.LBE56:
	.loc 1 127 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
.LVL6:
.L4:
	movw r16,r24
.LBB70:
.LBB69:
	.loc 1 109 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL7:
	call osEE_scheduler_task_block_current
.LVL8:
	movw r10,r24
.LVL9:
	.loc 1 111 0
	ldd r22,Y+1
	ldd r23,Y+2
	ldi r21,0
	ldi r20,0
	movw r24,r16
	call osEE_sn_priority_insert
.LVL10:
	.loc 1 119 0
	movw r22,r10
	movw r24,r14
	call osEE_change_context_from_running
.LVL11:
	rjmp .L7
.LVL12:
.L6:
.LBE69:
	.loc 1 100 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL13:
	rjmp .L3
.LVL14:
.L5:
.LBE70:
	.loc 1 92 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL15:
	.loc 1 126 0
	rjmp .L1
	.cfi_endproc
.LFE56:
	.size	WaitSem, .-WaitSem
	.section	.text.PostSem,"ax",@progbits
.global	PostSem
	.type	PostSem, @function
PostSem:
.LFB57:
	.loc 1 134 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r30,r24
	.loc 1 139 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL17:
	.loc 1 138 0
	sbiw r30,0
	breq .L8
.LBB71:
.LBB72:
.LBB73:
.LBB74:
.LBB75:
	.loc 3 116 0
	in r28,__SREG__
.LVL18:
.LBB76:
.LBB77:
	.loc 3 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL19:
/* #NOAPP */
.LBE77:
.LBE76:
.LBE75:
.LBE74:
.LBE73:
.LBE72:
	.loc 1 145 0
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L10
.LVL20:
.LBB78:
	.loc 1 154 0
	movw r26,r22
	ld r24,X+
	ld r25,X
	std Z+1,r25
	st Z,r24
	.loc 1 157 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
.LVL21:
	.loc 1 161 0
	or r24,r25
	breq .L11
	.loc 1 162 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL22:
	call osEE_scheduler_task_preemption_point
.LVL23:
.L11:
.LBE78:
.LBB79:
.LBB80:
.LBB81:
.LBB82:
	.loc 3 123 0
	.loc 3 124 0
	out __SREG__,r28
.LVL24:
.LBE82:
.LBE81:
.LBE80:
.LBE79:
	.loc 1 169 0
	ldi r25,0
	ldi r24,0
.LVL25:
.L8:
/* epilogue start */
.LBE71:
	.loc 1 173 0
	pop r28
	ret
.LVL26:
.L10:
.LBB83:
	.loc 1 165 0
	ldd r24,Z+2
	subi r24,lo8(-(1))
	std Z+2,r24
	rjmp .L11
.LBE83:
	.cfi_endproc
.LFE57:
	.size	PostSem, .-PostSem
	.text
.Letext0:
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_oo_api_extension.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_scheduler_types.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_hal_internal_types.h"
	.file 11 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_get_kernel_and_core.h"
	.file 12 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc3d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF165
	.byte	0xc
	.long	.LASF166
	.long	.LASF167
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
	.byte	0x4
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x4
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
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.byte	0x51
	.long	0x98
	.uleb128 0x6
	.long	.LASF10
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x5
	.byte	0x54
	.long	0x7e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0x5b
	.long	0x4c
	.uleb128 0x7
	.long	0xa3
	.uleb128 0x4
	.long	.LASF14
	.byte	0x5
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x6d
	.long	0x5e
	.uleb128 0x8
	.byte	0x2
	.long	0xcf
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.long	.LASF16
	.byte	0x6
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF17
	.byte	0x6
	.byte	0x78
	.long	0xa3
	.uleb128 0x4
	.long	.LASF18
	.byte	0x6
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF19
	.byte	0x6
	.byte	0xf4
	.long	0x4c
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.word	0x13a
	.long	0xc9
	.uleb128 0xb
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x145
	.long	0x130
	.uleb128 0x6
	.long	.LASF21
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.uleb128 0x6
	.long	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.word	0x153
	.long	0x109
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.word	0x157
	.long	0x130
	.uleb128 0xb
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x15d
	.long	0x17b
	.uleb128 0x6
	.long	.LASF27
	.byte	0
	.uleb128 0x6
	.long	.LASF28
	.byte	0x1
	.uleb128 0x6
	.long	.LASF29
	.byte	0x2
	.uleb128 0x6
	.long	.LASF30
	.byte	0x3
	.uleb128 0x6
	.long	.LASF31
	.byte	0x4
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.word	0x16e
	.long	0x148
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.word	0x17e
	.long	0x17b
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.word	0x237
	.long	0xbe
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.word	0x2a3
	.long	0xb3
	.uleb128 0xb
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x2b1
	.long	0x268
	.uleb128 0x6
	.long	.LASF37
	.byte	0
	.uleb128 0x6
	.long	.LASF38
	.byte	0x1
	.uleb128 0x6
	.long	.LASF39
	.byte	0x2
	.uleb128 0x6
	.long	.LASF40
	.byte	0x3
	.uleb128 0x6
	.long	.LASF41
	.byte	0x4
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.uleb128 0x6
	.long	.LASF43
	.byte	0x6
	.uleb128 0x6
	.long	.LASF44
	.byte	0x7
	.uleb128 0x6
	.long	.LASF45
	.byte	0x8
	.uleb128 0x6
	.long	.LASF46
	.byte	0x9
	.uleb128 0x6
	.long	.LASF47
	.byte	0xa
	.uleb128 0x6
	.long	.LASF48
	.byte	0xb
	.uleb128 0x6
	.long	.LASF49
	.byte	0xc
	.uleb128 0x6
	.long	.LASF50
	.byte	0xd
	.uleb128 0x6
	.long	.LASF51
	.byte	0xe
	.uleb128 0x6
	.long	.LASF52
	.byte	0xf
	.uleb128 0x6
	.long	.LASF53
	.byte	0x10
	.uleb128 0x6
	.long	.LASF54
	.byte	0x11
	.uleb128 0x6
	.long	.LASF55
	.byte	0x12
	.uleb128 0x6
	.long	.LASF56
	.byte	0x13
	.uleb128 0x6
	.long	.LASF57
	.byte	0x14
	.uleb128 0x6
	.long	.LASF58
	.byte	0x15
	.uleb128 0x6
	.long	.LASF59
	.byte	0x16
	.uleb128 0x6
	.long	.LASF60
	.byte	0x17
	.uleb128 0x6
	.long	.LASF61
	.byte	0x18
	.uleb128 0x6
	.long	.LASF62
	.byte	0x19
	.uleb128 0x6
	.long	.LASF63
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF64
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF65
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x6
	.word	0x2d4
	.long	0x1ab
	.uleb128 0xa
	.long	.LASF67
	.byte	0x6
	.word	0x2d9
	.long	0x268
	.uleb128 0x4
	.long	.LASF68
	.byte	0x7
	.byte	0x47
	.long	0x28b
	.uleb128 0x8
	.byte	0x2
	.long	0x291
	.uleb128 0xc
	.long	.LASF72
	.byte	0x3
	.byte	0x8
	.byte	0xdb
	.long	0x2ba
	.uleb128 0xd
	.long	.LASF69
	.byte	0x8
	.byte	0xe1
	.long	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x8
	.byte	0xe3
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x7
	.byte	0x51
	.long	0xa3
	.uleb128 0xc
	.long	.LASF73
	.byte	0x4
	.byte	0x8
	.byte	0x4b
	.long	0x2ee
	.uleb128 0xd
	.long	.LASF74
	.byte	0x8
	.byte	0x4d
	.long	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF75
	.byte	0x8
	.byte	0x4f
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x2c5
	.uleb128 0xe
	.long	.LASF76
	.byte	0xe
	.byte	0x9
	.word	0x108
	.long	0x37a
	.uleb128 0xf
	.string	"hdb"
	.byte	0x9
	.word	0x10b
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF77
	.byte	0x9
	.word	0x10e
	.long	0x61a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"tid"
	.byte	0x9
	.word	0x110
	.long	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF78
	.byte	0x9
	.word	0x112
	.long	0x13c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.long	.LASF79
	.byte	0x9
	.word	0x114
	.long	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.long	.LASF80
	.byte	0x9
	.word	0x117
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF81
	.byte	0x9
	.word	0x11a
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.long	.LASF82
	.byte	0x9
	.word	0x11c
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.long	0x2f4
	.uleb128 0x8
	.byte	0x2
	.long	0x37a
	.uleb128 0x4
	.long	.LASF83
	.byte	0x8
	.byte	0x50
	.long	0x2c5
	.uleb128 0x4
	.long	.LASF84
	.byte	0x8
	.byte	0xd5
	.long	0x39b
	.uleb128 0x8
	.byte	0x2
	.long	0x385
	.uleb128 0x7
	.long	0x39b
	.uleb128 0xc
	.long	.LASF85
	.byte	0x14
	.byte	0xa
	.byte	0x43
	.long	0x4b5
	.uleb128 0x11
	.string	"r29"
	.byte	0xa
	.byte	0x44
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0xa
	.byte	0x45
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0xa
	.byte	0x46
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0xa
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0xa
	.byte	0x48
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0xa
	.byte	0x49
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0xa
	.byte	0x4a
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0xa
	.byte	0x4b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0xa
	.byte	0x4c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0xa
	.byte	0x4d
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0xa
	.byte	0x4e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0xa
	.byte	0x4f
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0xa
	.byte	0x50
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0xa
	.byte	0x51
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0xa
	.byte	0x52
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0xa
	.byte	0x53
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0xa
	.byte	0x54
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0xa
	.byte	0x55
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.long	.LASF86
	.byte	0xa
	.byte	0x56
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x3a6
	.uleb128 0x4
	.long	.LASF87
	.byte	0xa
	.byte	0x57
	.long	0x3a6
	.uleb128 0xc
	.long	.LASF88
	.byte	0x2
	.byte	0xa
	.byte	0x5a
	.long	0x4e1
	.uleb128 0xd
	.long	.LASF89
	.byte	0xa
	.byte	0x5b
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x4bb
	.uleb128 0x4
	.long	.LASF90
	.byte	0xa
	.byte	0x5c
	.long	0x4c6
	.uleb128 0xc
	.long	.LASF91
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.long	0x51b
	.uleb128 0xd
	.long	.LASF92
	.byte	0xa
	.byte	0x5f
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF93
	.byte	0xa
	.byte	0x60
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x4f2
	.uleb128 0x4
	.long	.LASF94
	.byte	0xa
	.byte	0x61
	.long	0x51b
	.uleb128 0xc
	.long	.LASF95
	.byte	0x4
	.byte	0xa
	.byte	0x63
	.long	0x554
	.uleb128 0xd
	.long	.LASF96
	.byte	0xa
	.byte	0x64
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF97
	.byte	0xa
	.byte	0x65
	.long	0x55f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x52b
	.uleb128 0x8
	.byte	0x2
	.long	0x520
	.uleb128 0x8
	.byte	0x2
	.long	0x4e7
	.uleb128 0x4
	.long	.LASF98
	.byte	0xa
	.byte	0x69
	.long	0x554
	.uleb128 0x4
	.long	.LASF99
	.byte	0x9
	.byte	0x53
	.long	0x4c
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0x73
	.long	0x5a1
	.uleb128 0x6
	.long	.LASF100
	.byte	0
	.uleb128 0x6
	.long	.LASF101
	.byte	0x1
	.uleb128 0x6
	.long	.LASF102
	.byte	0x2
	.uleb128 0x6
	.long	.LASF103
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF104
	.byte	0x9
	.byte	0x7d
	.long	0x57b
	.uleb128 0x12
	.long	0x5a1
	.uleb128 0x13
	.byte	0xa
	.byte	0x9
	.byte	0xe0
	.long	0x60e
	.uleb128 0xd
	.long	.LASF105
	.byte	0x9
	.byte	0xe4
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x9
	.byte	0xea
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF107
	.byte	0x9
	.byte	0xec
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF108
	.byte	0x9
	.byte	0xf3
	.long	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF109
	.byte	0x9
	.byte	0xf5
	.long	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF110
	.byte	0x9
	.byte	0xfb
	.long	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x9
	.word	0x101
	.long	0x5b1
	.uleb128 0x8
	.byte	0x2
	.long	0x60e
	.uleb128 0xa
	.long	.LASF112
	.byte	0x9
	.word	0x122
	.long	0x37a
	.uleb128 0x8
	.byte	0x2
	.long	0x620
	.uleb128 0x7
	.long	0x62c
	.uleb128 0xe
	.long	.LASF113
	.byte	0x4
	.byte	0x9
	.word	0x2c7
	.long	0x663
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.word	0x2c9
	.long	0x673
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.word	0x2cb
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x637
	.uleb128 0x14
	.long	0x632
	.long	0x673
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x668
	.uleb128 0xa
	.long	.LASF116
	.byte	0x9
	.word	0x2cc
	.long	0x663
	.uleb128 0x16
	.byte	0x12
	.byte	0x9
	.word	0x2d9
	.long	0x742
	.uleb128 0x10
	.long	.LASF117
	.byte	0x9
	.word	0x2dc
	.long	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"rq"
	.byte	0x9
	.word	0x2ee
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF118
	.byte	0x9
	.word	0x2f0
	.long	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF119
	.byte	0x9
	.word	0x2ff
	.long	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF120
	.byte	0x9
	.word	0x301
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF121
	.byte	0x9
	.word	0x305
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.long	.LASF122
	.byte	0x9
	.word	0x307
	.long	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF123
	.byte	0x9
	.word	0x327
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.long	.LASF124
	.byte	0x9
	.word	0x329
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.long	.LASF125
	.byte	0x9
	.word	0x32b
	.long	0x570
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF126
	.byte	0x9
	.word	0x32d
	.long	0x570
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF127
	.byte	0x9
	.word	0x330
	.long	0x570
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0x9
	.word	0x33a
	.long	0x685
	.uleb128 0x16
	.byte	0xa
	.byte	0x9
	.word	0x344
	.long	0x7a3
	.uleb128 0x10
	.long	.LASF129
	.byte	0x9
	.word	0x34a
	.long	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF130
	.byte	0x9
	.word	0x351
	.long	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF131
	.byte	0x9
	.word	0x354
	.long	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF132
	.byte	0x9
	.word	0x35c
	.long	0x7b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF133
	.byte	0x9
	.word	0x35e
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x74e
	.uleb128 0x8
	.byte	0x2
	.long	0x742
	.uleb128 0x14
	.long	0x679
	.long	0x7b9
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x7ae
	.uleb128 0xa
	.long	.LASF134
	.byte	0x9
	.word	0x36a
	.long	0x7a3
	.uleb128 0x16
	.byte	0x1
	.byte	0x9
	.word	0x36f
	.long	0x7e4
	.uleb128 0x10
	.long	.LASF135
	.byte	0x9
	.word	0x3b1
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.long	.LASF136
	.byte	0x9
	.word	0x3b3
	.long	0x7cb
	.uleb128 0x16
	.byte	0x6
	.byte	0x9
	.word	0x3c3
	.long	0x827
	.uleb128 0x10
	.long	.LASF137
	.byte	0x9
	.word	0x3c5
	.long	0x82c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.word	0x3d1
	.long	0x673
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.word	0x3d4
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	0x7f0
	.uleb128 0x8
	.byte	0x2
	.long	0x7e4
	.uleb128 0xa
	.long	.LASF138
	.byte	0x9
	.word	0x3fc
	.long	0x827
	.uleb128 0x17
	.long	.LASF139
	.byte	0xb
	.byte	0x3f
	.long	0x832
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF140
	.byte	0xb
	.byte	0x40
	.long	0x7bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF141
	.byte	0xb
	.byte	0x41
	.long	0x7e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF142
	.byte	0xb
	.byte	0x42
	.long	0x742
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	0x274
	.long	.LFB57
	.long	.LFE57
	.long	.LLST8
	.byte	0x1
	.long	0x9aa
	.uleb128 0x19
	.string	"Sem"
	.byte	0x1
	.byte	0x84
	.long	0x280
	.long	.LLST9
	.uleb128 0x1a
	.string	"ev"
	.byte	0x1
	.byte	0x88
	.long	0x274
	.long	.LLST10
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1
	.byte	0x8d
	.long	0xae
	.uleb128 0x1d
	.long	.LBB78
	.long	.LBE78
	.long	0x906
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x1
	.byte	0x93
	.long	0x98
	.long	.LLST12
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x1
	.byte	0x95
	.long	0x9b0
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.byte	0x97
	.long	0x3a1
	.long	.LLST13
	.uleb128 0x1f
	.long	.LVL21
	.long	0xbff
	.uleb128 0x1f
	.long	.LVL23
	.long	0xc0c
	.byte	0
	.uleb128 0x20
	.long	0xb61
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0x8d
	.long	0x95c
	.uleb128 0x21
	.long	0xb94
	.long	.LBB73
	.long	.LBE73
	.byte	0x2
	.byte	0xfe
	.uleb128 0x21
	.long	0xbba
	.long	.LBB74
	.long	.LBE74
	.byte	0x3
	.byte	0x93
	.uleb128 0x22
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x23
	.long	0xbcb
	.long	.LLST11
	.uleb128 0x24
	.long	0xbd6
	.long	.LBB76
	.long	.LBE76
	.byte	0x3
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0xb46
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.byte	0xa8
	.uleb128 0x25
	.long	0xb54
	.long	.LLST14
	.uleb128 0x26
	.long	0xb7b
	.long	.LBB80
	.long	.LBE80
	.byte	0x2
	.word	0x107
	.uleb128 0x25
	.long	0xb88
	.long	.LLST14
	.uleb128 0x21
	.long	0xba1
	.long	.LBB81
	.long	.LBE81
	.byte	0x3
	.byte	0x9a
	.uleb128 0x25
	.long	0xbae
	.long	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x832
	.uleb128 0x7
	.long	0x9aa
	.uleb128 0x18
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	0x274
	.long	.LFB56
	.long	.LFE56
	.long	.LLST0
	.byte	0x1
	.long	0xb46
	.uleb128 0x19
	.string	"Sem"
	.byte	0x1
	.byte	0x55
	.long	0x280
	.long	.LLST1
	.uleb128 0x1a
	.string	"ev"
	.byte	0x1
	.byte	0x59
	.long	0x274
	.long	.LLST2
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x1
	.byte	0x5e
	.long	0x9b0
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.byte	0x60
	.long	0x632
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1
	.byte	0x61
	.long	0xae
	.uleb128 0x1d
	.long	.LBB69
	.long	.LBE69
	.long	0xa93
	.uleb128 0x27
	.long	.LASF149
	.byte	0x1
	.byte	0x6b
	.long	0x39b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.byte	0x6d
	.long	0x632
	.long	.LLST7
	.uleb128 0x28
	.long	.LVL8
	.long	0xc19
	.long	0xa59
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x28
	.long	.LVL10
	.long	0xc26
	.long	0xa72
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.long	.LVL11
	.long	0xc33
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0xb6e
	.long	.LBB57
	.long	.LBE57
	.byte	0x1
	.byte	0x60
	.uleb128 0x20
	.long	0xb61
	.long	.LBB59
	.long	.LBE59
	.byte	0x1
	.byte	0x61
	.long	0xaf8
	.uleb128 0x21
	.long	0xb94
	.long	.LBB60
	.long	.LBE60
	.byte	0x2
	.byte	0xfe
	.uleb128 0x21
	.long	0xbba
	.long	.LBB61
	.long	.LBE61
	.byte	0x3
	.byte	0x93
	.uleb128 0x22
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x23
	.long	0xbcb
	.long	.LLST3
	.uleb128 0x24
	.long	0xbd6
	.long	.LBB63
	.long	.LBE63
	.byte	0x3
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0xb46
	.long	.LBB65
	.long	.LBE65
	.byte	0x1
	.byte	0x7c
	.uleb128 0x25
	.long	0xb54
	.long	.LLST4
	.uleb128 0x26
	.long	0xb7b
	.long	.LBB66
	.long	.LBE66
	.byte	0x2
	.word	0x107
	.uleb128 0x25
	.long	0xb88
	.long	.LLST4
	.uleb128 0x21
	.long	0xba1
	.long	.LBB67
	.long	.LBE67
	.byte	0x3
	.byte	0x9a
	.uleb128 0x25
	.long	0xbae
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF153
	.byte	0x2
	.word	0x102
	.byte	0x1
	.byte	0x3
	.long	0xb61
	.uleb128 0x2c
	.long	.LASF144
	.byte	0x2
	.word	0x104
	.long	0xa3
	.byte	0
	.uleb128 0x2d
	.long	.LASF151
	.byte	0x2
	.byte	0xf9
	.byte	0x1
	.long	0xa3
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF152
	.byte	0x2
	.byte	0xa7
	.byte	0x1
	.long	0x62c
	.byte	0x3
	.uleb128 0x2e
	.long	.LASF154
	.byte	0x3
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.long	0xb94
	.uleb128 0x2f
	.long	.LASF155
	.byte	0x3
	.byte	0x98
	.long	0xa3
	.byte	0
	.uleb128 0x2d
	.long	.LASF156
	.byte	0x3
	.byte	0x91
	.byte	0x1
	.long	0xa3
	.byte	0x3
	.uleb128 0x2e
	.long	.LASF157
	.byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.long	0xbba
	.uleb128 0x2f
	.long	.LASF144
	.byte	0x3
	.byte	0x79
	.long	0xa3
	.byte	0
	.uleb128 0x30
	.long	.LASF168
	.byte	0x3
	.byte	0x72
	.byte	0x1
	.long	0xa3
	.byte	0x3
	.long	0xbd6
	.uleb128 0x31
	.string	"sr"
	.byte	0x3
	.byte	0x74
	.long	0xa3
	.byte	0
	.uleb128 0x32
	.long	.LASF169
	.byte	0x3
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF158
	.byte	0xb
	.byte	0x54
	.byte	0x1
	.long	0x9aa
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF159
	.byte	0xb
	.byte	0x4b
	.byte	0x1
	.long	0xbf9
	.byte	0x3
	.uleb128 0x8
	.byte	0x2
	.long	0x7bf
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF160
	.long	.LASF160
	.byte	0xc
	.byte	0x94
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF161
	.long	.LASF161
	.byte	0xc
	.byte	0x85
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF162
	.long	.LASF162
	.byte	0xc
	.byte	0x8c
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF163
	.long	.LASF163
	.byte	0x8
	.byte	0x92
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF164
	.long	.LASF164
	.byte	0x2
	.byte	0x58
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x55
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
.LLST8:
	.long	.LFB57
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11
	.long	.LFE57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST9:
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
	.long	.LVL21-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL26
	.long	.LFE57
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL24
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST14:
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST0:
	.long	.LFB56
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
	.sleb128 13
	.long	.LCFI10
	.long	.LFE56
	.word	0x2
	.byte	0x8c
	.sleb128 13
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8-1
	.long	.LVL12
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
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
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LFE56
	.word	0x2
	.byte	0x3e
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL12
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x5d
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
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB56
	.long	.LBE56
	.long	.LBB70
	.long	.LBE70
	.long	0
	.long	0
	.long	.LBB71
	.long	.LBE71
	.long	.LBB83
	.long	.LBE83
	.long	0
	.long	0
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"count"
.LASF15:
	.string	"OsEE_event_mask"
.LASF148:
	.string	"WaitSem"
.LASF99:
	.string	"OsEE_byte"
.LASF132:
	.string	"p_autostart_tdb_array"
.LASF119:
	.string	"p_stk_sn"
.LASF121:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF72:
	.string	"OsEE_sem_tag"
.LASF112:
	.string	"OsEE_TDB"
.LASF21:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF54:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF138:
	.string	"OsEE_KDB"
.LASF24:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF67:
	.string	"StatusType"
.LASF33:
	.string	"OsEE_task_status"
.LASF90:
	.string	"OsEE_SCB"
.LASF27:
	.string	"OSEE_TASK_SUSPENDED"
.LASF23:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF134:
	.string	"OsEE_CDB"
.LASF78:
	.string	"task_type"
.LASF139:
	.string	"osEE_kdb_var"
.LASF118:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF35:
	.string	"EventMaskType"
.LASF53:
	.string	"E_OS_PROTECTION_TIME"
.LASF65:
	.string	"E_OS_SYS_ACT"
.LASF131:
	.string	"p_idle_task"
.LASF25:
	.string	"OsEE_task_type"
.LASF18:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF60:
	.string	"E_OS_CORE"
.LASF38:
	.string	"E_OS_ACCESS"
.LASF151:
	.string	"osEE_begin_primitive"
.LASF98:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF104:
	.string	"OsEE_kernel_status"
.LASF94:
	.string	"OsEE_SDB"
.LASF37:
	.string	"E_OK"
.LASF89:
	.string	"p_tos"
.LASF40:
	.string	"E_OS_ID"
.LASF80:
	.string	"ready_prio"
.LASF36:
	.string	"MemSize"
.LASF62:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF101:
	.string	"OSEE_KERNEL_STARTING"
.LASF135:
	.string	"dummy"
.LASF55:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF79:
	.string	"task_func"
.LASF82:
	.string	"max_num_of_act"
.LASF133:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF108:
	.string	"wait_mask"
.LASF169:
	.string	"osEE_hal_disableIRQ"
.LASF11:
	.string	"OSEE_TRUE"
.LASF68:
	.string	"SemRefType"
.LASF8:
	.string	"long unsigned int"
.LASF52:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF137:
	.string	"p_kcb"
.LASF157:
	.string	"osEE_hal_resumeIRQ"
.LASF20:
	.string	"TaskFunc"
.LASF17:
	.string	"TaskType"
.LASF145:
	.string	"p_kdb"
.LASF164:
	.string	"osEE_change_context_from_running"
.LASF120:
	.string	"os_status"
.LASF16:
	.string	"AppModeType"
.LASF76:
	.string	"OsEE_TDB_tag"
.LASF88:
	.string	"OsEE_SCB_tag"
.LASF152:
	.string	"osEE_get_curr_task"
.LASF32:
	.string	"OSEE_TASK_CHAINED"
.LASF158:
	.string	"osEE_get_kernel"
.LASF84:
	.string	"OsEE_RQ"
.LASF128:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF130:
	.string	"p_idle_hook"
.LASF163:
	.string	"osEE_sn_priority_insert"
.LASF123:
	.string	"prev_s_isr_all_status"
.LASF150:
	.string	"p_to"
.LASF126:
	.string	"s_isr_os_cnt"
.LASF44:
	.string	"E_OS_STATE"
.LASF30:
	.string	"OSEE_TASK_WAITING"
.LASF127:
	.string	"d_isr_all_cnt"
.LASF143:
	.string	"is_preemption"
.LASF117:
	.string	"p_curr"
.LASF103:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF63:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF116:
	.string	"OsEE_autostart_tdb"
.LASF19:
	.string	"TaskActivation"
.LASF51:
	.string	"E_OS_PARAM_POINTER"
.LASF109:
	.string	"event_mask"
.LASF92:
	.string	"p_bos"
.LASF49:
	.string	"E_OS_DISABLEDINT"
.LASF166:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_api_extension.c"
.LASF136:
	.string	"OsEE_KCB"
.LASF83:
	.string	"OsEE_SN"
.LASF48:
	.string	"E_OS_MISSINGEND"
.LASF12:
	.string	"OsEE_bool"
.LASF29:
	.string	"OSEE_TASK_READY_STACKED"
.LASF45:
	.string	"E_OS_VALUE"
.LASF91:
	.string	"OsEE_SDB_tag"
.LASF71:
	.string	"CountType"
.LASF159:
	.string	"osEE_get_curr_core"
.LASF105:
	.string	"current_num_of_act"
.LASF147:
	.string	"PostSem"
.LASF77:
	.string	"p_tcb"
.LASF160:
	.string	"osEE_scheduler_task_unblocked"
.LASF4:
	.string	"unsigned char"
.LASF56:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF85:
	.string	"OsEE_CTX_tag"
.LASF64:
	.string	"E_OS_SYS_STACK"
.LASF102:
	.string	"OSEE_KERNEL_STARTED"
.LASF58:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF59:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF114:
	.string	"p_tdb_ptr_array"
.LASF74:
	.string	"p_next"
.LASF28:
	.string	"OSEE_TASK_READY"
.LASF41:
	.string	"E_OS_LIMIT"
.LASF129:
	.string	"p_ccb"
.LASF141:
	.string	"osEE_kcb_var"
.LASF140:
	.string	"osEE_cdb_var"
.LASF113:
	.string	"OsEE_autostart_tdb_tag"
.LASF22:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF124:
	.string	"prev_s_isr_os_status"
.LASF122:
	.string	"last_error"
.LASF73:
	.string	"OsEE_SN_tag"
.LASF155:
	.string	"flag"
.LASF106:
	.string	"current_prio"
.LASF61:
	.string	"E_OS_SYS_INIT"
.LASF66:
	.string	"OsEE_status_type"
.LASF75:
	.string	"p_tdb"
.LASF100:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF47:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF161:
	.string	"osEE_scheduler_task_preemption_point"
.LASF167:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF14:
	.string	"OsEE_mem_size"
.LASF110:
	.string	"p_own_sn"
.LASF162:
	.string	"osEE_scheduler_task_block_current"
.LASF97:
	.string	"p_scb"
.LASF34:
	.string	"TaskStateType"
.LASF149:
	.string	"blocked_sn"
.LASF146:
	.string	"p_sn_released"
.LASF43:
	.string	"E_OS_RESOURCE"
.LASF154:
	.string	"osEE_hal_end_nested_primitive"
.LASF153:
	.string	"osEE_end_primitive"
.LASF115:
	.string	"tdb_array_size"
.LASF125:
	.string	"s_isr_all_cnt"
.LASF156:
	.string	"osEE_hal_begin_nested_primitive"
.LASF107:
	.string	"status"
.LASF165:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF81:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF144:
	.string	"flags"
.LASF46:
	.string	"E_OS_SERVICEID"
.LASF93:
	.string	"stack_size"
.LASF111:
	.string	"OsEE_TCB"
.LASF95:
	.string	"OsEE_HDB_tag"
.LASF42:
	.string	"E_OS_NOFUNC"
.LASF168:
	.string	"osEE_hal_suspendIRQ"
.LASF96:
	.string	"p_sdb"
.LASF39:
	.string	"E_OS_CALLEVEL"
.LASF26:
	.string	"TaskExecutionType"
.LASF31:
	.string	"OSEE_TASK_RUNNING"
.LASF69:
	.string	"blocked_queue"
.LASF142:
	.string	"osEE_ccb_var"
.LASF50:
	.string	"E_OS_STACKFAULT"
.LASF86:
	.string	"p_ctx"
.LASF57:
	.string	"E_OS_SPINLOCK"
.LASF87:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
