	.file	"ee_oo_sched_entry_points.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_scheduler_task_wrapper_restore,"ax",@progbits
.global	osEE_scheduler_task_wrapper_restore
	.type	osEE_scheduler_task_wrapper_restore, @function
osEE_scheduler_task_wrapper_restore:
.LFB67:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_oo_sched_entry_points.c"
	.loc 1 192 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 219 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	ldi r24,lo8(4)
	ldi r25,0
.LVL1:
	std Z+3,r25
	std Z+2,r24
/* epilogue start */
	.loc 1 260 0
	ret
	.cfi_endproc
.LFE67:
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.section	.text.osEE_scheduler_task_wrapper_run,"ax",@progbits
.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
.LFB68:
	.loc 1 267 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r28,r24
	.loc 1 268 0
	ldd r30,Y+4
	ldd r31,Y+5
	ldd r24,Z+1
.LVL3:
.LBB89:
.LBB90:
	.loc 1 219 0
	ldi r18,lo8(4)
	ldi r19,0
	std Z+3,r19
	std Z+2,r18
.LVL4:
.LBE90:
.LBE89:
	.loc 1 271 0
	cpi r24,lo8(-1)
	breq .L3
.LVL5:
.LBB91:
.LBB92:
	.file 2 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_hal_internal.h"
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\lab1.1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.L3:
.LBE92:
.LBE91:
	.loc 1 276 0
	ldd r30,Y+9
	ldd r31,Y+10
	icall
.LVL7:
.LBB93:
.LBB94:
	.loc 1 118 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL8:
	.loc 1 124 0
	std Z+16,__zero_reg__
	.loc 1 127 0
	ldd r24,Z+15
	tst r24
	breq .L4
	.loc 1 128 0
	std Z+15,__zero_reg__
	.loc 1 129 0
	ldd r24,Z+13
.LVL9:
.LBB95:
.LBB96:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL10:
.L4:
.LBE96:
.LBE95:
	.loc 1 131 0
	ldd r24,Z+17
	tst r24
	breq .L5
	.loc 1 132 0
	std Z+17,__zero_reg__
.LBB97:
.LBB98:
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\lab1.1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L5:
.LBE98:
.LBE97:
.LBB99:
.LBB100:
.LBB101:
.LBB102:
	.loc 2 116 0
	in r24,__SREG__
.LBB103:
.LBB104:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\lab1.1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL11:
/* #NOAPP */
.LBE104:
.LBE103:
.LBE102:
.LBE101:
.LBE100:
.LBE99:
	.loc 1 140 0
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r30,Y+4
	ldd r31,Y+5
	sbiw r24,2
	brne .L9
.L7:
.LBB105:
.LBB106:
.LBB107:
	.loc 1 66 0
	ldd r26,Z+4
	ldd r27,Z+5
	sbiw r26,0
	brne .L8
.L11:
.LVL12:
.LBE107:
.LBE106:
.LBE105:
.LBB111:
.LBB112:
	.file 3 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_std_change_context.h"
	.loc 3 141 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Y+2
	ldd r25,Y+3
	call osEE_hal_terminate_ctx
.LVL13:
.L8:
.LBE112:
.LBE111:
.LBB113:
.LBB110:
.LBB109:
.LBB108:
	.loc 1 73 0
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
.LVL14:
	.loc 1 75 0
	adiw r26,3+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,3
	.loc 1 88 0
	ld r24,X+
	ld r25,X
	std Z+5,r25
	std Z+4,r24
	rjmp .L7
.LVL15:
.L10:
.LBE108:
.LBE109:
.LBE110:
.LBE113:
.LBB114:
.LBB115:
.LBB116:
	.loc 1 73 0
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
.LVL16:
	.loc 1 75 0
	adiw r26,3+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,3
	.loc 1 88 0
	ld r24,X+
	ld r25,X
	std Z+5,r25
	std Z+4,r24
.LVL17:
.L9:
.LBE116:
	.loc 1 66 0
	ldd r26,Z+4
	ldd r27,Z+5
	sbiw r26,0
	brne .L10
	rjmp .L11
.LBE115:
.LBE114:
.LBE94:
.LBE93:
	.cfi_endproc
.LFE68:
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.section	.text.osEE_idle_hook_wrapper,"ax",@progbits
.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
.LFB69:
	.loc 1 287 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.loc 2 116 0
	in r28,__SREG__
.LVL18:
.LBB121:
.LBB122:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\lab1.1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL19:
/* #NOAPP */
.LBE122:
.LBE121:
.LBE120:
.LBE119:
.LBE118:
.LBE117:
	.loc 1 293 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.LVL20:
.LBB123:
.LBB124:
.LBB125:
.LBB126:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r28
.LBE126:
.LBE125:
.LBE124:
.LBE123:
	.loc 1 296 0
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
.LBB127:
	.loc 1 298 0
	lds r28,osEE_cdb_var+2
	lds r29,osEE_cdb_var+2+1
.L24:
.LBE127:
	.loc 1 296 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,2
	breq .L25
	.loc 1 306 0
	lds r24,osEE_cdb_var+4
	lds r25,osEE_cdb_var+4+1
/* epilogue start */
	.loc 1 307 0
	pop r29
	pop r28
	pop r17
	pop r16
	.loc 1 306 0
	jmp osEE_idle_task_terminate
.LVL21:
.L25:
.LBB128:
	.loc 1 299 0
	sbiw r28,0
	breq .L24
	.loc 1 300 0
	movw r30,r28
	icall
.LVL22:
	rjmp .L24
.LBE128:
	.cfi_endproc
.LFE69:
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
	.text
.Letext0:
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_scheduler_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_kernel_types.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_hal_internal_types.h"
	.file 10 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_get_kernel_and_core.h"
	.file 11 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_kernel.h"
	.file 12 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12f0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF268
	.byte	0xc
	.long	.LASF269
	.long	.LASF270
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
	.uleb128 0x4
	.long	.LASF10
	.byte	0x5
	.byte	0x5b
	.long	0x4c
	.uleb128 0x5
	.long	0x7e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x5
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF12
	.byte	0x5
	.byte	0x68
	.long	0x5e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0x6d
	.long	0x5e
	.uleb128 0x6
	.byte	0x2
	.long	0xb5
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0x78
	.long	0x7e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x6
	.byte	0xc8
	.long	0x4c
	.uleb128 0x5
	.long	0xcd
	.uleb128 0x4
	.long	.LASF17
	.byte	0x6
	.byte	0xf4
	.long	0x4c
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.word	0x13a
	.long	0xaf
	.uleb128 0x5
	.long	0xe8
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x145
	.long	0x120
	.uleb128 0xa
	.long	.LASF19
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.uleb128 0xa
	.long	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.word	0x153
	.long	0xf9
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.word	0x157
	.long	0x120
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x15d
	.long	0x16b
	.uleb128 0xa
	.long	.LASF25
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.uleb128 0xa
	.long	.LASF28
	.byte	0x3
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.word	0x16e
	.long	0x138
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.word	0x17e
	.long	0x16b
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.word	0x19e
	.long	0x99
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.word	0x1b7
	.long	0x1c6
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.word	0x1b9
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.word	0x1bc
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.word	0x1c0
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.word	0x1c2
	.long	0x18f
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.word	0x237
	.long	0xa4
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.word	0x2a3
	.long	0x8e
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x2b1
	.long	0x2a7
	.uleb128 0xa
	.long	.LASF40
	.byte	0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0x2
	.uleb128 0xa
	.long	.LASF43
	.byte	0x3
	.uleb128 0xa
	.long	.LASF44
	.byte	0x4
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.uleb128 0xa
	.long	.LASF48
	.byte	0x8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x9
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.uleb128 0xa
	.long	.LASF51
	.byte	0xb
	.uleb128 0xa
	.long	.LASF52
	.byte	0xc
	.uleb128 0xa
	.long	.LASF53
	.byte	0xd
	.uleb128 0xa
	.long	.LASF54
	.byte	0xe
	.uleb128 0xa
	.long	.LASF55
	.byte	0xf
	.uleb128 0xa
	.long	.LASF56
	.byte	0x10
	.uleb128 0xa
	.long	.LASF57
	.byte	0x11
	.uleb128 0xa
	.long	.LASF58
	.byte	0x12
	.uleb128 0xa
	.long	.LASF59
	.byte	0x13
	.uleb128 0xa
	.long	.LASF60
	.byte	0x14
	.uleb128 0xa
	.long	.LASF61
	.byte	0x15
	.uleb128 0xa
	.long	.LASF62
	.byte	0x16
	.uleb128 0xa
	.long	.LASF63
	.byte	0x17
	.uleb128 0xa
	.long	.LASF64
	.byte	0x18
	.uleb128 0xa
	.long	.LASF65
	.byte	0x19
	.uleb128 0xa
	.long	.LASF66
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF67
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF68
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.word	0x2d4
	.long	0x1ea
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.word	0x2d9
	.long	0x2a7
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x2f4
	.long	0x39a
	.uleb128 0xa
	.long	.LASF71
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0x2
	.uleb128 0xa
	.long	.LASF73
	.byte	0x4
	.uleb128 0xa
	.long	.LASF74
	.byte	0x6
	.uleb128 0xa
	.long	.LASF75
	.byte	0x8
	.uleb128 0xa
	.long	.LASF76
	.byte	0xa
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe
	.uleb128 0xa
	.long	.LASF79
	.byte	0x10
	.uleb128 0xa
	.long	.LASF80
	.byte	0x12
	.uleb128 0xa
	.long	.LASF81
	.byte	0x14
	.uleb128 0xa
	.long	.LASF82
	.byte	0x16
	.uleb128 0xa
	.long	.LASF83
	.byte	0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF85
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF86
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF87
	.byte	0x20
	.uleb128 0xa
	.long	.LASF88
	.byte	0x22
	.uleb128 0xa
	.long	.LASF89
	.byte	0x24
	.uleb128 0xa
	.long	.LASF90
	.byte	0x26
	.uleb128 0xa
	.long	.LASF91
	.byte	0x28
	.uleb128 0xa
	.long	.LASF92
	.byte	0x2a
	.uleb128 0xa
	.long	.LASF93
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF94
	.byte	0x2e
	.uleb128 0xa
	.long	.LASF95
	.byte	0x30
	.uleb128 0xa
	.long	.LASF96
	.byte	0x32
	.uleb128 0xa
	.long	.LASF97
	.byte	0x46
	.uleb128 0xa
	.long	.LASF98
	.byte	0x48
	.uleb128 0xa
	.long	.LASF99
	.byte	0x4a
	.uleb128 0xa
	.long	.LASF100
	.byte	0x4e
	.uleb128 0xa
	.long	.LASF101
	.byte	0x50
	.uleb128 0xa
	.long	.LASF102
	.byte	0x52
	.uleb128 0xa
	.long	.LASF103
	.byte	0x54
	.uleb128 0xa
	.long	.LASF104
	.byte	0x56
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.byte	0x6
	.word	0x336
	.long	0x2bf
	.uleb128 0x8
	.long	.LASF106
	.byte	0x6
	.word	0x339
	.long	0x39a
	.uleb128 0xd
	.long	.LASF109
	.byte	0x4
	.byte	0x7
	.byte	0x4b
	.long	0x3db
	.uleb128 0xe
	.long	.LASF107
	.byte	0x7
	.byte	0x4d
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF108
	.byte	0x7
	.byte	0x4f
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x3b2
	.uleb128 0xf
	.long	.LASF110
	.byte	0xe
	.byte	0x8
	.word	0x108
	.long	0x467
	.uleb128 0x10
	.string	"hdb"
	.byte	0x8
	.word	0x10b
	.long	0x64d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF111
	.byte	0x8
	.word	0x10e
	.long	0x7b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"tid"
	.byte	0x8
	.word	0x110
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF112
	.byte	0x8
	.word	0x112
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF113
	.byte	0x8
	.word	0x114
	.long	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF114
	.byte	0x8
	.word	0x117
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF115
	.byte	0x8
	.word	0x11a
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF116
	.byte	0x8
	.word	0x11c
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.long	0x3e1
	.uleb128 0x6
	.byte	0x2
	.long	0x467
	.uleb128 0x4
	.long	.LASF117
	.byte	0x7
	.byte	0x50
	.long	0x3b2
	.uleb128 0x4
	.long	.LASF118
	.byte	0x7
	.byte	0xd5
	.long	0x488
	.uleb128 0x6
	.byte	0x2
	.long	0x472
	.uleb128 0xd
	.long	.LASF119
	.byte	0x14
	.byte	0x9
	.byte	0x43
	.long	0x59d
	.uleb128 0x11
	.string	"r29"
	.byte	0x9
	.byte	0x44
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0x9
	.byte	0x45
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0x9
	.byte	0x46
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0x9
	.byte	0x47
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0x9
	.byte	0x48
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0x9
	.byte	0x49
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0x9
	.byte	0x4a
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0x9
	.byte	0x4b
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0x9
	.byte	0x4c
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0x9
	.byte	0x4d
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0x9
	.byte	0x4e
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0x9
	.byte	0x4f
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0x9
	.byte	0x50
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0x9
	.byte	0x51
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0x9
	.byte	0x52
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0x9
	.byte	0x53
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0x9
	.byte	0x54
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0x9
	.byte	0x55
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.long	.LASF120
	.byte	0x9
	.byte	0x56
	.long	0x59d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x48e
	.uleb128 0x4
	.long	.LASF121
	.byte	0x9
	.byte	0x57
	.long	0x48e
	.uleb128 0xd
	.long	.LASF122
	.byte	0x2
	.byte	0x9
	.byte	0x5a
	.long	0x5c9
	.uleb128 0xe
	.long	.LASF123
	.byte	0x9
	.byte	0x5b
	.long	0x5c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x5a3
	.uleb128 0x4
	.long	.LASF124
	.byte	0x9
	.byte	0x5c
	.long	0x5ae
	.uleb128 0xd
	.long	.LASF125
	.byte	0x4
	.byte	0x9
	.byte	0x5e
	.long	0x603
	.uleb128 0xe
	.long	.LASF126
	.byte	0x9
	.byte	0x5f
	.long	0x5c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF127
	.byte	0x9
	.byte	0x60
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x5da
	.uleb128 0x4
	.long	.LASF128
	.byte	0x9
	.byte	0x61
	.long	0x603
	.uleb128 0xd
	.long	.LASF129
	.byte	0x4
	.byte	0x9
	.byte	0x63
	.long	0x63c
	.uleb128 0xe
	.long	.LASF130
	.byte	0x9
	.byte	0x64
	.long	0x641
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF131
	.byte	0x9
	.byte	0x65
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x613
	.uleb128 0x6
	.byte	0x2
	.long	0x608
	.uleb128 0x6
	.byte	0x2
	.long	0x5cf
	.uleb128 0x4
	.long	.LASF132
	.byte	0x9
	.byte	0x69
	.long	0x63c
	.uleb128 0x4
	.long	.LASF133
	.byte	0x8
	.byte	0x51
	.long	0xaf
	.uleb128 0x4
	.long	.LASF134
	.byte	0x8
	.byte	0x53
	.long	0x4c
	.uleb128 0x12
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.byte	0x73
	.long	0x694
	.uleb128 0xa
	.long	.LASF135
	.byte	0
	.uleb128 0xa
	.long	.LASF136
	.byte	0x1
	.uleb128 0xa
	.long	.LASF137
	.byte	0x2
	.uleb128 0xa
	.long	.LASF138
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF139
	.byte	0x8
	.byte	0x7d
	.long	0x66e
	.uleb128 0x13
	.long	0x694
	.uleb128 0x14
	.byte	0x5
	.byte	0x8
	.byte	0x90
	.long	0x6d7
	.uleb128 0xe
	.long	.LASF107
	.byte	0x8
	.byte	0x94
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF140
	.byte	0x8
	.byte	0x97
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF141
	.byte	0x8
	.byte	0x9a
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x3
	.byte	0x8
	.byte	0xb5
	.long	0x700
	.uleb128 0xe
	.long	.LASF143
	.byte	0x8
	.byte	0xb7
	.long	0x716
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF144
	.byte	0x8
	.byte	0xc3
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x6d7
	.uleb128 0x6
	.byte	0x2
	.long	0x700
	.uleb128 0x4
	.long	.LASF145
	.byte	0x8
	.byte	0x9b
	.long	0x6a4
	.uleb128 0x6
	.byte	0x2
	.long	0x70b
	.uleb128 0x5
	.long	0x716
	.uleb128 0x4
	.long	.LASF146
	.byte	0x8
	.byte	0xce
	.long	0x700
	.uleb128 0x4
	.long	.LASF147
	.byte	0x8
	.byte	0xd2
	.long	0x721
	.uleb128 0x14
	.byte	0xc
	.byte	0x8
	.byte	0xe0
	.long	0x7a2
	.uleb128 0xe
	.long	.LASF148
	.byte	0x8
	.byte	0xe4
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF149
	.byte	0x8
	.byte	0xea
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF150
	.byte	0x8
	.byte	0xec
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF151
	.byte	0x8
	.byte	0xef
	.long	0x7a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF152
	.byte	0x8
	.byte	0xf3
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF153
	.byte	0x8
	.byte	0xf5
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF154
	.byte	0x8
	.byte	0xfb
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x721
	.uleb128 0x5
	.long	0x7a2
	.uleb128 0x8
	.long	.LASF155
	.byte	0x8
	.word	0x101
	.long	0x737
	.uleb128 0x6
	.byte	0x2
	.long	0x7ad
	.uleb128 0x5
	.long	0x7b9
	.uleb128 0x8
	.long	.LASF156
	.byte	0x8
	.word	0x122
	.long	0x467
	.uleb128 0x6
	.byte	0x2
	.long	0x7c4
	.uleb128 0x5
	.long	0x7d0
	.uleb128 0x8
	.long	.LASF157
	.byte	0x8
	.word	0x151
	.long	0x7e7
	.uleb128 0x6
	.byte	0x2
	.long	0x828
	.uleb128 0xf
	.long	.LASF158
	.byte	0xe
	.byte	0x8
	.word	0x269
	.long	0x828
	.uleb128 0xc
	.long	.LASF159
	.byte	0x8
	.word	0x26b
	.long	0x9f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF160
	.byte	0x8
	.word	0x26d
	.long	0x917
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF161
	.byte	0x8
	.word	0x27b
	.long	0x95b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.long	0x7ed
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.word	0x155
	.long	0x855
	.uleb128 0xc
	.long	.LASF162
	.byte	0x8
	.word	0x157
	.long	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF163
	.byte	0x8
	.word	0x159
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF164
	.byte	0x8
	.word	0x15e
	.long	0x82d
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.word	0x16f
	.long	0x889
	.uleb128 0xc
	.long	.LASF165
	.byte	0x8
	.word	0x171
	.long	0x88e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF166
	.byte	0x8
	.word	0x177
	.long	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x861
	.uleb128 0x6
	.byte	0x2
	.long	0x855
	.uleb128 0x8
	.long	.LASF167
	.byte	0x8
	.word	0x17c
	.long	0x889
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.word	0x17f
	.long	0x8c7
	.uleb128 0xa
	.long	.LASF168
	.byte	0
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1
	.uleb128 0xa
	.long	.LASF170
	.byte	0x2
	.uleb128 0xa
	.long	.LASF171
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF172
	.byte	0x8
	.word	0x184
	.long	0x8a0
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.word	0x189
	.long	0x917
	.uleb128 0x10
	.string	"f"
	.byte	0x8
	.word	0x18b
	.long	0x658
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF108
	.byte	0x8
	.word	0x18d
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF160
	.byte	0x8
	.word	0x18f
	.long	0x917
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF173
	.byte	0x8
	.word	0x192
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x894
	.uleb128 0x5
	.long	0x917
	.uleb128 0x8
	.long	.LASF174
	.byte	0x8
	.word	0x194
	.long	0x8d3
	.uleb128 0xb
	.byte	0xa
	.byte	0x8
	.word	0x198
	.long	0x956
	.uleb128 0xc
	.long	.LASF175
	.byte	0x8
	.word	0x19a
	.long	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF176
	.byte	0x8
	.word	0x19c
	.long	0x8c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.long	0x92e
	.uleb128 0x8
	.long	.LASF177
	.byte	0x8
	.word	0x19d
	.long	0x956
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.word	0x22b
	.long	0x994
	.uleb128 0xa
	.long	.LASF178
	.byte	0
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1
	.uleb128 0xa
	.long	.LASF180
	.byte	0x2
	.uleb128 0xa
	.long	.LASF181
	.byte	0x3
	.uleb128 0xa
	.long	.LASF182
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.word	0x231
	.long	0x967
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.word	0x242
	.long	0x9e6
	.uleb128 0xc
	.long	.LASF107
	.byte	0x8
	.word	0x244
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF184
	.byte	0x8
	.word	0x247
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF150
	.byte	0x8
	.word	0x249
	.long	0x994
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF185
	.byte	0x8
	.word	0x24d
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.word	0x25e
	.long	0x9a0
	.uleb128 0x6
	.byte	0x2
	.long	0x9e6
	.uleb128 0x8
	.long	.LASF187
	.byte	0x8
	.word	0x290
	.long	0x828
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.word	0x295
	.long	0x9f8
	.uleb128 0xb
	.byte	0x6
	.byte	0x8
	.word	0x2a9
	.long	0xa47
	.uleb128 0xc
	.long	.LASF189
	.byte	0x8
	.word	0x2ad
	.long	0xa4c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF190
	.byte	0x8
	.word	0x2af
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF191
	.byte	0x8
	.word	0x2b2
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.long	0xa10
	.uleb128 0x6
	.byte	0x2
	.long	0x9f8
	.uleb128 0x8
	.long	.LASF192
	.byte	0x8
	.word	0x2b8
	.long	0xa47
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.word	0x2bb
	.long	0xa86
	.uleb128 0xc
	.long	.LASF193
	.byte	0x8
	.word	0x2bd
	.long	0xa96
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF194
	.byte	0x8
	.word	0x2bf
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0xa5e
	.uleb128 0x15
	.long	0xa52
	.long	0xa96
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xa8b
	.uleb128 0x8
	.long	.LASF195
	.byte	0x8
	.word	0x2c0
	.long	0xa86
	.uleb128 0xf
	.long	.LASF196
	.byte	0x4
	.byte	0x8
	.word	0x2c7
	.long	0xad4
	.uleb128 0xc
	.long	.LASF197
	.byte	0x8
	.word	0x2c9
	.long	0xae4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF198
	.byte	0x8
	.word	0x2cb
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0xaa8
	.uleb128 0x15
	.long	0x7d6
	.long	0xae4
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xad9
	.uleb128 0x8
	.long	.LASF199
	.byte	0x8
	.word	0x2cc
	.long	0xad4
	.uleb128 0xb
	.byte	0x12
	.byte	0x8
	.word	0x2d9
	.long	0xbb3
	.uleb128 0xc
	.long	.LASF200
	.byte	0x8
	.word	0x2dc
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"rq"
	.byte	0x8
	.word	0x2ee
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF201
	.byte	0x8
	.word	0x2f0
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF202
	.byte	0x8
	.word	0x2ff
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF203
	.byte	0x8
	.word	0x301
	.long	0x69f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF204
	.byte	0x8
	.word	0x305
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF205
	.byte	0x8
	.word	0x307
	.long	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF206
	.byte	0x8
	.word	0x327
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.long	.LASF207
	.byte	0x8
	.word	0x329
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF208
	.byte	0x8
	.word	0x32b
	.long	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xc
	.long	.LASF209
	.byte	0x8
	.word	0x32d
	.long	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF210
	.byte	0x8
	.word	0x330
	.long	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	.LASF211
	.byte	0x8
	.word	0x33a
	.long	0xaf6
	.uleb128 0x5
	.long	0xbb3
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.word	0x344
	.long	0xc46
	.uleb128 0xc
	.long	.LASF212
	.byte	0x8
	.word	0x34a
	.long	0xc4b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF213
	.byte	0x8
	.word	0x351
	.long	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF214
	.byte	0x8
	.word	0x354
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF215
	.byte	0x8
	.word	0x358
	.long	0x917
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF216
	.byte	0x8
	.word	0x35c
	.long	0xc61
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF217
	.byte	0x8
	.word	0x35e
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF218
	.byte	0x8
	.word	0x362
	.long	0xc72
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF219
	.byte	0x8
	.word	0x364
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x5
	.long	0xbc4
	.uleb128 0x6
	.byte	0x2
	.long	0xbb3
	.uleb128 0x5
	.long	0xc4b
	.uleb128 0x15
	.long	0xaea
	.long	0xc61
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xc56
	.uleb128 0x15
	.long	0xa9c
	.long	0xc72
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xc67
	.uleb128 0x8
	.long	.LASF220
	.byte	0x8
	.word	0x36a
	.long	0xc46
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.word	0x36f
	.long	0xc9d
	.uleb128 0xc
	.long	.LASF221
	.byte	0x8
	.word	0x3b1
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.long	.LASF222
	.byte	0x8
	.word	0x3b3
	.long	0xc84
	.uleb128 0xb
	.byte	0x12
	.byte	0x8
	.word	0x3c3
	.long	0xd3a
	.uleb128 0xc
	.long	.LASF223
	.byte	0x8
	.word	0x3c5
	.long	0xd3f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF197
	.byte	0x8
	.word	0x3d1
	.long	0xae4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF198
	.byte	0x8
	.word	0x3d4
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF224
	.byte	0x8
	.word	0x3e0
	.long	0xd5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF225
	.byte	0x8
	.word	0x3e2
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF226
	.byte	0x8
	.word	0x3e6
	.long	0xd6c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF227
	.byte	0x8
	.word	0x3e8
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF228
	.byte	0x8
	.word	0x3eb
	.long	0xd88
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF229
	.byte	0x8
	.word	0x3ed
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	0xca9
	.uleb128 0x6
	.byte	0x2
	.long	0xc9d
	.uleb128 0x15
	.long	0xd56
	.long	0xd50
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x72c
	.uleb128 0x5
	.long	0xd50
	.uleb128 0x6
	.byte	0x2
	.long	0xd45
	.uleb128 0x15
	.long	0x91d
	.long	0xd6c
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xd61
	.uleb128 0x15
	.long	0xd83
	.long	0xd7d
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xa04
	.uleb128 0x5
	.long	0xd7d
	.uleb128 0x6
	.byte	0x2
	.long	0xd72
	.uleb128 0x8
	.long	.LASF230
	.byte	0x8
	.word	0x3fc
	.long	0xd3a
	.uleb128 0x17
	.long	.LASF231
	.byte	0xa
	.byte	0x3f
	.long	0xd8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF232
	.byte	0xa
	.byte	0x40
	.long	0xc78
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF233
	.byte	0xa
	.byte	0x41
	.long	0xc9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF234
	.byte	0xa
	.byte	0x42
	.long	0xbb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF237
	.byte	0x1
	.word	0x11b
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST8
	.byte	0x1
	.long	0xecf
	.uleb128 0x19
	.long	.LASF235
	.byte	0x1
	.word	0x121
	.long	0xed5
	.uleb128 0x19
	.long	.LASF236
	.byte	0x1
	.word	0x124
	.long	0x89
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x18
	.long	0xe1f
	.uleb128 0x19
	.long	.LASF213
	.byte	0x1
	.word	0x12a
	.long	0xf4
	.uleb128 0x1b
	.long	.LVL22
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.long	0x11cf
	.long	.LBB117
	.long	.LBE117
	.byte	0x1
	.word	0x124
	.long	0xe76
	.uleb128 0x1d
	.long	0x11f5
	.long	.LBB118
	.long	.LBE118
	.byte	0xb
	.byte	0xfe
	.uleb128 0x1d
	.long	0x1234
	.long	.LBB119
	.long	.LBE119
	.byte	0x2
	.byte	0x93
	.uleb128 0x1e
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x1f
	.long	0x1245
	.long	.LLST9
	.uleb128 0x20
	.long	0x1259
	.long	.LBB121
	.long	.LBE121
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x11b4
	.long	.LBB123
	.long	.LBE123
	.byte	0x1
	.word	0x126
	.long	0xebb
	.uleb128 0x21
	.long	0x11c2
	.uleb128 0x22
	.long	0x11dc
	.long	.LBB124
	.long	.LBE124
	.byte	0xb
	.word	0x107
	.uleb128 0x21
	.long	0x11e9
	.uleb128 0x1d
	.long	0x121b
	.long	.LBB125
	.long	.LBE125
	.byte	0x2
	.byte	0x9a
	.uleb128 0x21
	.long	0x1228
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL20
	.long	0x12cc
	.uleb128 0x24
	.long	.LVL21
	.byte	0x1
	.long	0x12d9
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xc78
	.uleb128 0x5
	.long	0xecf
	.uleb128 0x25
	.byte	0x1
	.long	.LASF238
	.byte	0x1
	.word	0x107
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x10af
	.uleb128 0x26
	.long	.LASF239
	.byte	0x1
	.word	0x109
	.long	0x7d0
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF271
	.byte	0x1
	.word	0x10c
	.long	0xd8
	.long	.LLST2
	.uleb128 0x1c
	.long	0x10af
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.word	0x10d
	.long	0xf33
	.uleb128 0x28
	.long	0x10bd
	.long	.LLST3
	.byte	0
	.uleb128 0x29
	.long	0x1250
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.word	0x112
	.uleb128 0x22
	.long	0x10c9
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.word	0x117
	.uleb128 0x2a
	.long	0x10d6
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1e
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2b
	.long	0x10e1
	.uleb128 0x2b
	.long	0x10ec
	.uleb128 0x2c
	.long	0x121b
	.long	.LBB95
	.long	.LBE95
	.byte	0x1
	.byte	0x81
	.long	0xf8f
	.uleb128 0x28
	.long	0x1228
	.long	.LLST4
	.byte	0
	.uleb128 0x20
	.long	0x1250
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.byte	0x85
	.uleb128 0x2c
	.long	0x11cf
	.long	.LBB99
	.long	.LBE99
	.byte	0x1
	.byte	0x88
	.long	0xff2
	.uleb128 0x1d
	.long	0x11f5
	.long	.LBB100
	.long	.LBE100
	.byte	0xb
	.byte	0xfe
	.uleb128 0x1d
	.long	0x1234
	.long	.LBB101
	.long	.LBE101
	.byte	0x2
	.byte	0x93
	.uleb128 0x1e
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2d
	.long	0x1245
	.byte	0x1
	.byte	0x68
	.uleb128 0x20
	.long	0x1259
	.long	.LBB103
	.long	.LBE103
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x10f7
	.long	.Ldebug_ranges0+0
	.long	0x1041
	.uleb128 0x2b
	.long	0x10f8
	.uleb128 0x2f
	.long	0x1105
	.long	.LBB106
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x93
	.uleb128 0x21
	.long	0x1116
	.uleb128 0x30
	.long	.Ldebug_ranges0+0
	.uleb128 0x2b
	.long	0x1121
	.uleb128 0x2b
	.long	0x112c
	.uleb128 0x31
	.long	0x1137
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x1f
	.long	0x1138
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1262
	.long	.LBB111
	.long	.LBE111
	.byte	0x1
	.byte	0xb7
	.long	0x106c
	.uleb128 0x28
	.long	0x126f
	.long	.LLST6
	.uleb128 0x21
	.long	0x127a
	.uleb128 0x23
	.long	.LVL13
	.long	0x12e6
	.byte	0
	.uleb128 0x1d
	.long	0x1105
	.long	.LBB114
	.long	.LBE114
	.byte	0x1
	.byte	0xb3
	.uleb128 0x21
	.long	0x1116
	.uleb128 0x1e
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x2b
	.long	0x1121
	.uleb128 0x2b
	.long	0x112c
	.uleb128 0x31
	.long	0x1137
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x1f
	.long	0x1138
	.long	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF272
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.long	0x10c9
	.uleb128 0x33
	.long	.LASF239
	.byte	0x1
	.byte	0xbe
	.long	0x7d0
	.byte	0
	.uleb128 0x34
	.long	.LASF243
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.long	0x1105
	.uleb128 0x33
	.long	.LASF240
	.byte	0x1
	.byte	0x70
	.long	0x7d0
	.uleb128 0x35
	.long	.LASF235
	.byte	0x1
	.byte	0x74
	.long	0xed5
	.uleb128 0x35
	.long	.LASF212
	.byte	0x1
	.byte	0x76
	.long	0xc51
	.uleb128 0x36
	.uleb128 0x35
	.long	.LASF241
	.byte	0x1
	.byte	0x93
	.long	0x7a8
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF257
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x7a2
	.byte	0x1
	.long	0x1145
	.uleb128 0x33
	.long	.LASF108
	.byte	0x1
	.byte	0x3c
	.long	0x7d6
	.uleb128 0x35
	.long	.LASF241
	.byte	0x1
	.byte	0x3f
	.long	0x7a2
	.uleb128 0x35
	.long	.LASF111
	.byte	0x1
	.byte	0x40
	.long	0x7bf
	.uleb128 0x36
	.uleb128 0x35
	.long	.LASF242
	.byte	0x1
	.byte	0x49
	.long	0x71c
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF244
	.byte	0xb
	.word	0x3ed
	.byte	0x1
	.byte	0x3
	.long	0x1160
	.uleb128 0x39
	.long	.LASF235
	.byte	0xb
	.word	0x3ef
	.long	0xecf
	.byte	0
	.uleb128 0x38
	.long	.LASF245
	.byte	0xb
	.word	0x1f8
	.byte	0x1
	.byte	0x3
	.long	0x1187
	.uleb128 0x39
	.long	.LASF212
	.byte	0xb
	.word	0x1fa
	.long	0x1187
	.uleb128 0x39
	.long	.LASF246
	.byte	0xb
	.word	0x1fb
	.long	0x3a6
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xbbf
	.uleb128 0x38
	.long	.LASF247
	.byte	0xb
	.word	0x1e0
	.byte	0x1
	.byte	0x3
	.long	0x11b4
	.uleb128 0x39
	.long	.LASF212
	.byte	0xb
	.word	0x1e2
	.long	0x1187
	.uleb128 0x39
	.long	.LASF248
	.byte	0xb
	.word	0x1e3
	.long	0x2b3
	.byte	0
	.uleb128 0x38
	.long	.LASF249
	.byte	0xb
	.word	0x102
	.byte	0x1
	.byte	0x3
	.long	0x11cf
	.uleb128 0x39
	.long	.LASF236
	.byte	0xb
	.word	0x104
	.long	0x7e
	.byte	0
	.uleb128 0x3a
	.long	.LASF252
	.byte	0xb
	.byte	0xf9
	.byte	0x1
	.long	0x7e
	.byte	0x3
	.uleb128 0x34
	.long	.LASF250
	.byte	0x2
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.long	0x11f5
	.uleb128 0x33
	.long	.LASF251
	.byte	0x2
	.byte	0x98
	.long	0x7e
	.byte	0
	.uleb128 0x3a
	.long	.LASF253
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.long	0x7e
	.byte	0x3
	.uleb128 0x34
	.long	.LASF254
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.byte	0x3
	.long	0x121b
	.uleb128 0x33
	.long	.LASF255
	.byte	0x2
	.byte	0x7f
	.long	0xcd
	.byte	0
	.uleb128 0x34
	.long	.LASF256
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.long	0x1234
	.uleb128 0x33
	.long	.LASF236
	.byte	0x2
	.byte	0x79
	.long	0x7e
	.byte	0
	.uleb128 0x37
	.long	.LASF258
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0x7e
	.byte	0x3
	.long	0x1250
	.uleb128 0x3b
	.string	"sr"
	.byte	0x2
	.byte	0x74
	.long	0x7e
	.byte	0
	.uleb128 0x3c
	.long	.LASF259
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.uleb128 0x3c
	.long	.LASF260
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x34
	.long	.LASF261
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.long	0x1286
	.uleb128 0x33
	.long	.LASF240
	.byte	0x3
	.byte	0x89
	.long	0x1286
	.uleb128 0x33
	.long	.LASF262
	.byte	0x3
	.byte	0x8a
	.long	0x658
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x64d
	.uleb128 0x3a
	.long	.LASF263
	.byte	0xa
	.byte	0x54
	.byte	0x1
	.long	0x1299
	.byte	0x3
	.uleb128 0x6
	.byte	0x2
	.long	0xd8e
	.uleb128 0x3a
	.long	.LASF264
	.byte	0xa
	.byte	0x4b
	.byte	0x1
	.long	0xecf
	.byte	0x3
	.uleb128 0x3d
	.long	0x10af
	.long	.LFB67
	.long	.LFE67
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x12cc
	.uleb128 0x28
	.long	0x10bd
	.long	.LLST0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.byte	0x1
	.long	.LASF265
	.long	.LASF265
	.byte	0xc
	.byte	0x85
	.uleb128 0x3e
	.byte	0x1
	.byte	0x1
	.long	.LASF266
	.long	.LASF266
	.byte	0x3
	.byte	0x9b
	.uleb128 0x3e
	.byte	0x1
	.byte	0x1
	.long	.LASF267
	.long	.LASF267
	.byte	0x3
	.byte	0x77
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.long	.LFB69
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
	.long	.LFE69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
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
.LLST2:
	.long	.LVL3
	.long	.LVL7-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
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
.LLST7:
	.long	.LVL16
	.long	.LVL17
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
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
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
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB105
	.long	.LBE105
	.long	.LBB113
	.long	.LBE113
	.long	0
	.long	0
	.long	.LBB127
	.long	.LBE127
	.long	.LBB128
	.long	.LBE128
	.long	0
	.long	0
	.long	.LFB67
	.long	.LFE67
	.long	.LFB68
	.long	.LFE68
	.long	.LFB69
	.long	.LFE69
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF171:
	.string	"OSEE_ACTION_CALLBACK"
.LASF243:
	.string	"osEE_scheduler_task_not_terminated"
.LASF71:
	.string	"OSServiceId_ActivateTask"
.LASF13:
	.string	"OsEE_event_mask"
.LASF228:
	.string	"p_alarm_ptr_array"
.LASF84:
	.string	"OSServiceId_ReleaseResource"
.LASF241:
	.string	"p_mdb"
.LASF202:
	.string	"p_stk_sn"
.LASF33:
	.string	"TickType"
.LASF204:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF195:
	.string	"OsEE_autostart_trigger"
.LASF97:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF103:
	.string	"OSId_Kernel"
.LASF19:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF57:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF176:
	.string	"type"
.LASF74:
	.string	"OSServiceId_Schedule"
.LASF225:
	.string	"res_array_size"
.LASF230:
	.string	"OsEE_KDB"
.LASF106:
	.string	"OSServiceIdType"
.LASF22:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF88:
	.string	"OSServiceId_WaitEvent"
.LASF70:
	.string	"StatusType"
.LASF31:
	.string	"OsEE_task_status"
.LASF124:
	.string	"OsEE_SCB"
.LASF77:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF175:
	.string	"param"
.LASF191:
	.string	"second_tick_parameter"
.LASF266:
	.string	"osEE_idle_task_terminate"
.LASF25:
	.string	"OSEE_TASK_SUSPENDED"
.LASF21:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF91:
	.string	"OSServiceId_SetRelAlarm"
.LASF112:
	.string	"task_type"
.LASF34:
	.string	"maxallowedvalue"
.LASF231:
	.string	"osEE_kdb_var"
.LASF201:
	.string	"p_free_sn"
.LASF156:
	.string	"OsEE_TDB"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF72:
	.string	"OSServiceId_TerminateTask"
.LASF38:
	.string	"EventMaskType"
.LASF219:
	.string	"autostart_trigger_array_size"
.LASF100:
	.string	"OSId_TaskBody"
.LASF145:
	.string	"OsEE_MCB"
.LASF253:
	.string	"osEE_hal_begin_nested_primitive"
.LASF56:
	.string	"E_OS_PROTECTION_TIME"
.LASF68:
	.string	"E_OS_SYS_ACT"
.LASF83:
	.string	"OSServiceId_GetResource"
.LASF94:
	.string	"OSServiceId_IncrementCounter"
.LASF245:
	.string	"osEE_set_service_id"
.LASF79:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF23:
	.string	"OsEE_task_type"
.LASF143:
	.string	"p_cb"
.LASF16:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF224:
	.string	"p_res_ptr_array"
.LASF182:
	.string	"OSEE_TRIGGER_REENABLED"
.LASF167:
	.string	"OsEE_CounterDB"
.LASF105:
	.string	"OsEE_service_id_type"
.LASF63:
	.string	"E_OS_CORE"
.LASF41:
	.string	"E_OS_ACCESS"
.LASF252:
	.string	"osEE_begin_primitive"
.LASF239:
	.string	"p_tdb_to"
.LASF132:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF139:
	.string	"OsEE_kernel_status"
.LASF128:
	.string	"OsEE_SDB"
.LASF40:
	.string	"E_OK"
.LASF257:
	.string	"osEE_release_all_m"
.LASF123:
	.string	"p_tos"
.LASF80:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF190:
	.string	"first_tick_parameter"
.LASF89:
	.string	"OSServiceId_GetAlarmBase"
.LASF43:
	.string	"E_OS_ID"
.LASF39:
	.string	"MemSize"
.LASF36:
	.string	"mincycle"
.LASF136:
	.string	"OSEE_KERNEL_STARTING"
.LASF221:
	.string	"dummy"
.LASF58:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF93:
	.string	"OSServiceId_CancelAlarm"
.LASF113:
	.string	"task_func"
.LASF163:
	.string	"value"
.LASF116:
	.string	"max_num_of_act"
.LASF146:
	.string	"OsEE_MDB"
.LASF151:
	.string	"p_last_m"
.LASF193:
	.string	"p_trigger_ptr_array"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"AlarmBaseType"
.LASF157:
	.string	"OsEE_TriggerQ"
.LASF78:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF254:
	.string	"osEE_hal_set_ipl"
.LASF165:
	.string	"p_counter_cb"
.LASF8:
	.string	"long unsigned int"
.LASF240:
	.string	"p_to_term"
.LASF186:
	.string	"OsEE_TriggerCB"
.LASF262:
	.string	"kernel_cb"
.LASF55:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF223:
	.string	"p_kcb"
.LASF256:
	.string	"osEE_hal_resumeIRQ"
.LASF184:
	.string	"when"
.LASF18:
	.string	"TaskFunc"
.LASF260:
	.string	"osEE_hal_disableIRQ"
.LASF15:
	.string	"TaskType"
.LASF177:
	.string	"OsEE_action"
.LASF180:
	.string	"OSEE_TRIGGER_ACTIVE"
.LASF203:
	.string	"os_status"
.LASF14:
	.string	"AppModeType"
.LASF110:
	.string	"OsEE_TDB_tag"
.LASF122:
	.string	"OsEE_SCB_tag"
.LASF30:
	.string	"OSEE_TASK_CHAINED"
.LASF255:
	.string	"virt_prio"
.LASF118:
	.string	"OsEE_RQ"
.LASF211:
	.string	"OsEE_CCB"
.LASF187:
	.string	"OsEE_TriggerDB"
.LASF206:
	.string	"prev_s_isr_all_status"
.LASF226:
	.string	"p_counter_ptr_array"
.LASF227:
	.string	"counter_array_size"
.LASF104:
	.string	"OsId_Invalid"
.LASF229:
	.string	"alarm_array_size"
.LASF185:
	.string	"cycle"
.LASF47:
	.string	"E_OS_STATE"
.LASF28:
	.string	"OSEE_TASK_WAITING"
.LASF160:
	.string	"p_counter_db"
.LASF210:
	.string	"d_isr_all_cnt"
.LASF248:
	.string	"Error"
.LASF200:
	.string	"p_curr"
.LASF263:
	.string	"osEE_get_kernel"
.LASF138:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF66:
	.string	"E_OS_SYS_TASK"
.LASF73:
	.string	"OSServiceId_ChainTask"
.LASF76:
	.string	"OSServiceId_GetTaskState"
.LASF2:
	.string	"long double"
.LASF272:
	.string	"osEE_scheduler_task_wrapper_restore"
.LASF147:
	.string	"OsEE_ResourceDB"
.LASF199:
	.string	"OsEE_autostart_tdb"
.LASF161:
	.string	"action"
.LASF141:
	.string	"p_owner"
.LASF17:
	.string	"TaskActivation"
.LASF12:
	.string	"OsEE_tick_type"
.LASF194:
	.string	"trigger_array_size"
.LASF54:
	.string	"E_OS_PARAM_POINTER"
.LASF140:
	.string	"prev_prio"
.LASF258:
	.string	"osEE_hal_suspendIRQ"
.LASF153:
	.string	"event_mask"
.LASF126:
	.string	"p_bos"
.LASF52:
	.string	"E_OS_DISABLEDINT"
.LASF222:
	.string	"OsEE_KCB"
.LASF117:
	.string	"OsEE_SN"
.LASF120:
	.string	"p_ctx"
.LASF269:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_oo_sched_entry_points.c"
.LASF209:
	.string	"s_isr_os_cnt"
.LASF51:
	.string	"E_OS_MISSINGEND"
.LASF259:
	.string	"osEE_hal_enableIRQ"
.LASF144:
	.string	"prio"
.LASF270:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF35:
	.string	"ticksperbase"
.LASF92:
	.string	"OSServiceId_SetAbsAlarm"
.LASF179:
	.string	"OSEE_TRIGGER_CANCELED"
.LASF114:
	.string	"ready_prio"
.LASF27:
	.string	"OSEE_TASK_READY_STACKED"
.LASF48:
	.string	"E_OS_VALUE"
.LASF125:
	.string	"OsEE_SDB_tag"
.LASF188:
	.string	"OsEE_AlarmDB"
.LASF237:
	.string	"osEE_idle_hook_wrapper"
.LASF264:
	.string	"osEE_get_curr_core"
.LASF148:
	.string	"current_num_of_act"
.LASF215:
	.string	"p_sys_counter_db"
.LASF134:
	.string	"OsEE_byte"
.LASF265:
	.string	"osEE_scheduler_task_preemption_point"
.LASF111:
	.string	"p_tcb"
.LASF81:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF267:
	.string	"osEE_hal_terminate_ctx"
.LASF4:
	.string	"unsigned char"
.LASF59:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF119:
	.string	"OsEE_CTX_tag"
.LASF67:
	.string	"E_OS_SYS_STACK"
.LASF137:
	.string	"OSEE_KERNEL_STARTED"
.LASF170:
	.string	"OSEE_ACTION_COUNTER"
.LASF158:
	.string	"OsEE_TriggerDB_tag"
.LASF234:
	.string	"osEE_ccb_var"
.LASF166:
	.string	"info"
.LASF61:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF62:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF197:
	.string	"p_tdb_ptr_array"
.LASF107:
	.string	"p_next"
.LASF26:
	.string	"OSEE_TASK_READY"
.LASF220:
	.string	"OsEE_CDB"
.LASF44:
	.string	"E_OS_LIMIT"
.LASF247:
	.string	"osEE_call_error_hook"
.LASF183:
	.string	"OsEE_trigger_status"
.LASF152:
	.string	"wait_mask"
.LASF208:
	.string	"s_isr_all_cnt"
.LASF90:
	.string	"OSServiceId_GetAlarm"
.LASF233:
	.string	"osEE_kcb_var"
.LASF232:
	.string	"osEE_cdb_var"
.LASF168:
	.string	"OSEE_ACTION_TASK"
.LASF196:
	.string	"OsEE_autostart_tdb_tag"
.LASF20:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF133:
	.string	"OsEE_kernel_cb"
.LASF207:
	.string	"prev_s_isr_os_status"
.LASF205:
	.string	"last_error"
.LASF238:
	.string	"osEE_scheduler_task_wrapper_run"
.LASF109:
	.string	"OsEE_SN_tag"
.LASF251:
	.string	"flag"
.LASF149:
	.string	"current_prio"
.LASF64:
	.string	"E_OS_SYS_INIT"
.LASF162:
	.string	"trigger_queue"
.LASF69:
	.string	"OsEE_status_type"
.LASF108:
	.string	"p_tdb"
.LASF135:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF50:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF246:
	.string	"service_id"
.LASF101:
	.string	"OSId_ISR2Body"
.LASF218:
	.string	"p_autostart_trigger_array"
.LASF11:
	.string	"OsEE_mem_size"
.LASF159:
	.string	"p_trigger_cb"
.LASF154:
	.string	"p_own_sn"
.LASF174:
	.string	"OsEE_action_param"
.LASF189:
	.string	"p_trigger_db"
.LASF131:
	.string	"p_scb"
.LASF32:
	.string	"TaskStateType"
.LASF82:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF244:
	.string	"osEE_stack_monitoring"
.LASF178:
	.string	"OSEE_TRIGGER_INACTIVE"
.LASF235:
	.string	"p_cdb"
.LASF261:
	.string	"osEE_hal_terminate_activation"
.LASF46:
	.string	"E_OS_RESOURCE"
.LASF250:
	.string	"osEE_hal_end_nested_primitive"
.LASF249:
	.string	"osEE_end_primitive"
.LASF198:
	.string	"tdb_array_size"
.LASF85:
	.string	"OSServiceId_SetEvent"
.LASF99:
	.string	"OSServiceId_StartOS"
.LASF75:
	.string	"OSServiceId_GetTaskID"
.LASF102:
	.string	"OSId_Action"
.LASF173:
	.string	"mask"
.LASF150:
	.string	"status"
.LASF169:
	.string	"OSEE_ACTION_EVENT"
.LASF65:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF87:
	.string	"OSServiceId_GetEvent"
.LASF268:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF115:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF242:
	.string	"p_last_m_cb"
.LASF236:
	.string	"flags"
.LASF49:
	.string	"E_OS_SERVICEID"
.LASF86:
	.string	"OSServiceId_ClearEvent"
.LASF181:
	.string	"OSEE_TRIGGER_EXPIRED"
.LASF155:
	.string	"OsEE_TCB"
.LASF98:
	.string	"OSServiceId_ShutdownOS"
.LASF217:
	.string	"autostart_tdb_array_size"
.LASF129:
	.string	"OsEE_HDB_tag"
.LASF127:
	.string	"stack_size"
.LASF164:
	.string	"OsEE_CounterCB"
.LASF45:
	.string	"E_OS_NOFUNC"
.LASF214:
	.string	"p_idle_task"
.LASF130:
	.string	"p_sdb"
.LASF42:
	.string	"E_OS_CALLEVEL"
.LASF24:
	.string	"TaskExecutionType"
.LASF29:
	.string	"OSEE_TASK_RUNNING"
.LASF192:
	.string	"OsEE_autostart_trigger_info"
.LASF142:
	.string	"OsEE_MDB_tag"
.LASF271:
	.string	"task_priority"
.LASF172:
	.string	"OsEE_action_type"
.LASF53:
	.string	"E_OS_STACKFAULT"
.LASF216:
	.string	"p_autostart_tdb_array"
.LASF212:
	.string	"p_ccb"
.LASF213:
	.string	"p_idle_hook"
.LASF96:
	.string	"OSServiceId_GetElapsedValue"
.LASF95:
	.string	"OSServiceId_GetCounterValue"
.LASF60:
	.string	"E_OS_SPINLOCK"
.LASF121:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
