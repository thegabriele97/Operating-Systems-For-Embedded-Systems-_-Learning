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
.LFB57:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_sched_entry_points.c"
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
.LFE57:
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.section	.text.osEE_scheduler_task_wrapper_run,"ax",@progbits
.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
.LFB58:
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
.LBB76:
.LBB77:
	.loc 1 219 0
	ldi r18,lo8(4)
	ldi r19,0
	std Z+3,r19
	std Z+2,r18
.LVL4:
.LBE77:
.LBE76:
	.loc 1 271 0
	cpi r24,lo8(-1)
	breq .L3
.LVL5:
.LBB78:
.LBB79:
	.file 2 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_hal_internal.h"
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.L3:
.LBE79:
.LBE78:
	.loc 1 276 0
	ldd r30,Y+9
	ldd r31,Y+10
	icall
.LVL7:
.LBB80:
.LBB81:
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
.LBB82:
.LBB83:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL10:
.L4:
.LBE83:
.LBE82:
	.loc 1 131 0
	ldd r24,Z+17
	tst r24
	breq .L5
	.loc 1 132 0
	std Z+17,__zero_reg__
.LBB84:
.LBB85:
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L5:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 116 0
	in r24,__SREG__
.LBB90:
.LBB91:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL11:
/* #NOAPP */
.LBE91:
.LBE90:
.LBE89:
.LBE88:
.LBE87:
.LBE86:
.LBB92:
.LBB93:
	.file 3 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_std_change_context.h"
	.loc 3 141 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Y+2
	ldd r25,Y+3
	call osEE_hal_terminate_ctx
.LVL12:
.LBE93:
.LBE92:
.LBE81:
.LBE80:
	.cfi_endproc
.LFE58:
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.section	.text.osEE_idle_hook_wrapper,"ax",@progbits
.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
.LFB59:
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
.LBB94:
.LBB95:
.LBB96:
.LBB97:
	.loc 2 116 0
	in r28,__SREG__
.LVL13:
.LBB98:
.LBB99:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL14:
/* #NOAPP */
.LBE99:
.LBE98:
.LBE97:
.LBE96:
.LBE95:
.LBE94:
	.loc 1 293 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.LVL15:
.LBB100:
.LBB101:
.LBB102:
.LBB103:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r28
.LBE103:
.LBE102:
.LBE101:
.LBE100:
	.loc 1 296 0
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
.LBB104:
	.loc 1 298 0
	lds r28,osEE_cdb_var+2
	lds r29,osEE_cdb_var+2+1
.L17:
.LBE104:
	.loc 1 296 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,2
	breq .L18
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
.LVL16:
.L18:
.LBB105:
	.loc 1 299 0
	sbiw r28,0
	breq .L17
	.loc 1 300 0
	movw r30,r28
	icall
.LVL17:
	rjmp .L17
.LBE105:
	.cfi_endproc
.LFE59:
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
	.text
.Letext0:
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_scheduler_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_kernel_types.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_hal_internal_types.h"
	.file 10 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_get_kernel_and_core.h"
	.file 11 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_kernel.h"
	.file 12 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd22
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF191
	.byte	0xc
	.long	.LASF192
	.long	.LASF193
	.long	.Ldebug_ranges0+0x18
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
	.byte	0x6d
	.long	0x5e
	.uleb128 0x6
	.byte	0x2
	.long	0xaa
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.long	.LASF13
	.byte	0x6
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x78
	.long	0x7e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0xc8
	.long	0x4c
	.uleb128 0x5
	.long	0xc2
	.uleb128 0x4
	.long	.LASF16
	.byte	0x6
	.byte	0xf4
	.long	0x4c
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.word	0x13a
	.long	0xa4
	.uleb128 0x5
	.long	0xdd
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x145
	.long	0x115
	.uleb128 0xa
	.long	.LASF18
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.uleb128 0xa
	.long	.LASF20
	.byte	0x2
	.uleb128 0xa
	.long	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.word	0x153
	.long	0xee
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.word	0x157
	.long	0x115
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x15d
	.long	0x160
	.uleb128 0xa
	.long	.LASF24
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.uleb128 0xa
	.long	.LASF27
	.byte	0x3
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.word	0x16e
	.long	0x12d
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.word	0x17e
	.long	0x160
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.word	0x237
	.long	0x99
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.word	0x2a3
	.long	0x8e
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x2b1
	.long	0x24d
	.uleb128 0xa
	.long	.LASF34
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x2
	.uleb128 0xa
	.long	.LASF37
	.byte	0x3
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.uleb128 0xa
	.long	.LASF42
	.byte	0x8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x9
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.uleb128 0xa
	.long	.LASF45
	.byte	0xb
	.uleb128 0xa
	.long	.LASF46
	.byte	0xc
	.uleb128 0xa
	.long	.LASF47
	.byte	0xd
	.uleb128 0xa
	.long	.LASF48
	.byte	0xe
	.uleb128 0xa
	.long	.LASF49
	.byte	0xf
	.uleb128 0xa
	.long	.LASF50
	.byte	0x10
	.uleb128 0xa
	.long	.LASF51
	.byte	0x11
	.uleb128 0xa
	.long	.LASF52
	.byte	0x12
	.uleb128 0xa
	.long	.LASF53
	.byte	0x13
	.uleb128 0xa
	.long	.LASF54
	.byte	0x14
	.uleb128 0xa
	.long	.LASF55
	.byte	0x15
	.uleb128 0xa
	.long	.LASF56
	.byte	0x16
	.uleb128 0xa
	.long	.LASF57
	.byte	0x17
	.uleb128 0xa
	.long	.LASF58
	.byte	0x18
	.uleb128 0xa
	.long	.LASF59
	.byte	0x19
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF62
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.word	0x2d4
	.long	0x190
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.word	0x2d9
	.long	0x24d
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x2f4
	.long	0x304
	.uleb128 0xa
	.long	.LASF65
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x2
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.uleb128 0xa
	.long	.LASF69
	.byte	0x8
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.uleb128 0xa
	.long	.LASF72
	.byte	0xe
	.uleb128 0xa
	.long	.LASF73
	.byte	0x10
	.uleb128 0xa
	.long	.LASF74
	.byte	0x12
	.uleb128 0xa
	.long	.LASF75
	.byte	0x14
	.uleb128 0xa
	.long	.LASF76
	.byte	0x16
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF79
	.byte	0x20
	.uleb128 0xa
	.long	.LASF80
	.byte	0x22
	.uleb128 0xa
	.long	.LASF81
	.byte	0x46
	.uleb128 0xa
	.long	.LASF82
	.byte	0x48
	.uleb128 0xa
	.long	.LASF83
	.byte	0x4a
	.uleb128 0xa
	.long	.LASF84
	.byte	0x4e
	.uleb128 0xa
	.long	.LASF85
	.byte	0x50
	.uleb128 0xa
	.long	.LASF86
	.byte	0x52
	.uleb128 0xa
	.long	.LASF87
	.byte	0x54
	.uleb128 0xa
	.long	.LASF88
	.byte	0x56
	.byte	0
	.uleb128 0x8
	.long	.LASF89
	.byte	0x6
	.word	0x336
	.long	0x265
	.uleb128 0x8
	.long	.LASF90
	.byte	0x6
	.word	0x339
	.long	0x304
	.uleb128 0xb
	.long	.LASF93
	.byte	0x4
	.byte	0x7
	.byte	0x4b
	.long	0x345
	.uleb128 0xc
	.long	.LASF91
	.byte	0x7
	.byte	0x4d
	.long	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x7
	.byte	0x4f
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x31c
	.uleb128 0xd
	.long	.LASF94
	.byte	0xe
	.byte	0x8
	.word	0x108
	.long	0x3d1
	.uleb128 0xe
	.string	"hdb"
	.byte	0x8
	.word	0x10b
	.long	0x5b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.word	0x10e
	.long	0x677
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tid"
	.byte	0x8
	.word	0x110
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF96
	.byte	0x8
	.word	0x112
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.long	.LASF97
	.byte	0x8
	.word	0x114
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.word	0x117
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.word	0x11a
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF100
	.byte	0x8
	.word	0x11c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.long	0x34b
	.uleb128 0x6
	.byte	0x2
	.long	0x3d1
	.uleb128 0x4
	.long	.LASF101
	.byte	0x7
	.byte	0x50
	.long	0x31c
	.uleb128 0x4
	.long	.LASF102
	.byte	0x7
	.byte	0xd5
	.long	0x3f2
	.uleb128 0x6
	.byte	0x2
	.long	0x3dc
	.uleb128 0xb
	.long	.LASF103
	.byte	0x14
	.byte	0x9
	.byte	0x43
	.long	0x507
	.uleb128 0x10
	.string	"r29"
	.byte	0x9
	.byte	0x44
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"r28"
	.byte	0x9
	.byte	0x45
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"r17"
	.byte	0x9
	.byte	0x46
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"r16"
	.byte	0x9
	.byte	0x47
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x10
	.string	"r15"
	.byte	0x9
	.byte	0x48
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"r14"
	.byte	0x9
	.byte	0x49
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.string	"r13"
	.byte	0x9
	.byte	0x4a
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"r12"
	.byte	0x9
	.byte	0x4b
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.string	"r11"
	.byte	0x9
	.byte	0x4c
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"r10"
	.byte	0x9
	.byte	0x4d
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.string	"r9"
	.byte	0x9
	.byte	0x4e
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.string	"r8"
	.byte	0x9
	.byte	0x4f
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.string	"r7"
	.byte	0x9
	.byte	0x50
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"r6"
	.byte	0x9
	.byte	0x51
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.string	"r5"
	.byte	0x9
	.byte	0x52
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.string	"r4"
	.byte	0x9
	.byte	0x53
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.string	"r3"
	.byte	0x9
	.byte	0x54
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"r2"
	.byte	0x9
	.byte	0x55
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF104
	.byte	0x9
	.byte	0x56
	.long	0x507
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x3f8
	.uleb128 0x4
	.long	.LASF105
	.byte	0x9
	.byte	0x57
	.long	0x3f8
	.uleb128 0xb
	.long	.LASF106
	.byte	0x2
	.byte	0x9
	.byte	0x5a
	.long	0x533
	.uleb128 0xc
	.long	.LASF107
	.byte	0x9
	.byte	0x5b
	.long	0x533
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x50d
	.uleb128 0x4
	.long	.LASF108
	.byte	0x9
	.byte	0x5c
	.long	0x518
	.uleb128 0xb
	.long	.LASF109
	.byte	0x4
	.byte	0x9
	.byte	0x5e
	.long	0x56d
	.uleb128 0xc
	.long	.LASF110
	.byte	0x9
	.byte	0x5f
	.long	0x533
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF111
	.byte	0x9
	.byte	0x60
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x544
	.uleb128 0x4
	.long	.LASF112
	.byte	0x9
	.byte	0x61
	.long	0x56d
	.uleb128 0xb
	.long	.LASF113
	.byte	0x4
	.byte	0x9
	.byte	0x63
	.long	0x5a6
	.uleb128 0xc
	.long	.LASF114
	.byte	0x9
	.byte	0x64
	.long	0x5ab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x9
	.byte	0x65
	.long	0x5b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x57d
	.uleb128 0x6
	.byte	0x2
	.long	0x572
	.uleb128 0x6
	.byte	0x2
	.long	0x539
	.uleb128 0x4
	.long	.LASF116
	.byte	0x9
	.byte	0x69
	.long	0x5a6
	.uleb128 0x4
	.long	.LASF117
	.byte	0x8
	.byte	0x51
	.long	0xa4
	.uleb128 0x4
	.long	.LASF118
	.byte	0x8
	.byte	0x53
	.long	0x4c
	.uleb128 0x11
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.byte	0x73
	.long	0x5fe
	.uleb128 0xa
	.long	.LASF119
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0x1
	.uleb128 0xa
	.long	.LASF121
	.byte	0x2
	.uleb128 0xa
	.long	.LASF122
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF123
	.byte	0x8
	.byte	0x7d
	.long	0x5d8
	.uleb128 0x12
	.long	0x5fe
	.uleb128 0x13
	.byte	0xa
	.byte	0x8
	.byte	0xe0
	.long	0x66b
	.uleb128 0xc
	.long	.LASF124
	.byte	0x8
	.byte	0xe4
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF125
	.byte	0x8
	.byte	0xea
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF126
	.byte	0x8
	.byte	0xec
	.long	0x16c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF127
	.byte	0x8
	.byte	0xf3
	.long	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF128
	.byte	0x8
	.byte	0xf5
	.long	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF129
	.byte	0x8
	.byte	0xfb
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF130
	.byte	0x8
	.word	0x101
	.long	0x60e
	.uleb128 0x6
	.byte	0x2
	.long	0x66b
	.uleb128 0x8
	.long	.LASF131
	.byte	0x8
	.word	0x122
	.long	0x3d1
	.uleb128 0x6
	.byte	0x2
	.long	0x67d
	.uleb128 0x5
	.long	0x689
	.uleb128 0xd
	.long	.LASF132
	.byte	0x4
	.byte	0x8
	.word	0x2c7
	.long	0x6c0
	.uleb128 0xf
	.long	.LASF133
	.byte	0x8
	.word	0x2c9
	.long	0x6d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.word	0x2cb
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.long	0x694
	.uleb128 0x14
	.long	0x68f
	.long	0x6d0
	.uleb128 0x15
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x6c5
	.uleb128 0x8
	.long	.LASF135
	.byte	0x8
	.word	0x2cc
	.long	0x6c0
	.uleb128 0x16
	.byte	0x12
	.byte	0x8
	.word	0x2d9
	.long	0x79f
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.word	0x2dc
	.long	0x689
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"rq"
	.byte	0x8
	.word	0x2ee
	.long	0x3e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.word	0x2f0
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.word	0x2ff
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.word	0x301
	.long	0x609
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.word	0x305
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.word	0x307
	.long	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.word	0x327
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.word	0x329
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.word	0x32b
	.long	0x5cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.word	0x32d
	.long	0x5cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.word	0x330
	.long	0x5cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	.LASF147
	.byte	0x8
	.word	0x33a
	.long	0x6e2
	.uleb128 0x5
	.long	0x79f
	.uleb128 0x16
	.byte	0xa
	.byte	0x8
	.word	0x344
	.long	0x805
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.word	0x34a
	.long	0x80a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.word	0x351
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF150
	.byte	0x8
	.word	0x354
	.long	0x689
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF151
	.byte	0x8
	.word	0x35c
	.long	0x820
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF152
	.byte	0x8
	.word	0x35e
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.long	0x7b0
	.uleb128 0x6
	.byte	0x2
	.long	0x79f
	.uleb128 0x5
	.long	0x80a
	.uleb128 0x14
	.long	0x6d6
	.long	0x820
	.uleb128 0x15
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x815
	.uleb128 0x8
	.long	.LASF153
	.byte	0x8
	.word	0x36a
	.long	0x805
	.uleb128 0x16
	.byte	0x1
	.byte	0x8
	.word	0x36f
	.long	0x84b
	.uleb128 0xf
	.long	.LASF154
	.byte	0x8
	.word	0x3b1
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.long	.LASF155
	.byte	0x8
	.word	0x3b3
	.long	0x832
	.uleb128 0x16
	.byte	0x6
	.byte	0x8
	.word	0x3c3
	.long	0x88e
	.uleb128 0xf
	.long	.LASF156
	.byte	0x8
	.word	0x3c5
	.long	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF133
	.byte	0x8
	.word	0x3d1
	.long	0x6d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.word	0x3d4
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.long	0x857
	.uleb128 0x6
	.byte	0x2
	.long	0x84b
	.uleb128 0x8
	.long	.LASF157
	.byte	0x8
	.word	0x3fc
	.long	0x88e
	.uleb128 0x17
	.long	.LASF158
	.byte	0xa
	.byte	0x3f
	.long	0x899
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF159
	.byte	0xa
	.byte	0x40
	.long	0x826
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF160
	.byte	0xa
	.byte	0x41
	.long	0x84b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF161
	.byte	0xa
	.byte	0x42
	.long	0x79f
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF164
	.byte	0x1
	.word	0x11b
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST6
	.byte	0x1
	.long	0x9da
	.uleb128 0x19
	.long	.LASF162
	.byte	0x1
	.word	0x121
	.long	0x9e0
	.uleb128 0x19
	.long	.LASF163
	.byte	0x1
	.word	0x124
	.long	0x89
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.long	0x92a
	.uleb128 0x19
	.long	.LASF149
	.byte	0x1
	.word	0x12a
	.long	0xe9
	.uleb128 0x1b
	.long	.LVL17
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.long	0xc01
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.word	0x124
	.long	0x981
	.uleb128 0x1d
	.long	0xc27
	.long	.LBB95
	.long	.LBE95
	.byte	0xb
	.byte	0xfe
	.uleb128 0x1d
	.long	0xc66
	.long	.LBB96
	.long	.LBE96
	.byte	0x2
	.byte	0x93
	.uleb128 0x1e
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x1f
	.long	0xc77
	.long	.LLST7
	.uleb128 0x20
	.long	0xc8b
	.long	.LBB98
	.long	.LBE98
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xbe6
	.long	.LBB100
	.long	.LBE100
	.byte	0x1
	.word	0x126
	.long	0x9c6
	.uleb128 0x21
	.long	0xbf4
	.uleb128 0x22
	.long	0xc0e
	.long	.LBB101
	.long	.LBE101
	.byte	0xb
	.word	0x107
	.uleb128 0x21
	.long	0xc1b
	.uleb128 0x1d
	.long	0xc4d
	.long	.LBB102
	.long	.LBE102
	.byte	0x2
	.byte	0x9a
	.uleb128 0x21
	.long	0xc5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL15
	.long	0xcfe
	.uleb128 0x24
	.long	.LVL16
	.byte	0x1
	.long	0xd0b
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x826
	.uleb128 0x5
	.long	0x9da
	.uleb128 0x25
	.byte	0x1
	.long	.LASF165
	.byte	0x1
	.word	0x107
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xb2e
	.uleb128 0x26
	.long	.LASF166
	.byte	0x1
	.word	0x109
	.long	0x689
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF194
	.byte	0x1
	.word	0x10c
	.long	0xcd
	.long	.LLST2
	.uleb128 0x1c
	.long	0xb2e
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.word	0x10d
	.long	0xa3e
	.uleb128 0x28
	.long	0xb3c
	.long	.LLST3
	.byte	0
	.uleb128 0x29
	.long	0xc82
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.word	0x112
	.uleb128 0x22
	.long	0xb48
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.word	0x117
	.uleb128 0x2a
	.long	0xb55
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1e
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2b
	.long	0xb60
	.uleb128 0x1f
	.long	0xb6b
	.long	.LLST4
	.uleb128 0x2c
	.long	0xc4d
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.byte	0x81
	.long	0xa9e
	.uleb128 0x28
	.long	0xc5a
	.long	.LLST5
	.byte	0
	.uleb128 0x20
	.long	0xc82
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0x85
	.uleb128 0x2c
	.long	0xc01
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0x88
	.long	0xb01
	.uleb128 0x1d
	.long	0xc27
	.long	.LBB87
	.long	.LBE87
	.byte	0xb
	.byte	0xfe
	.uleb128 0x1d
	.long	0xc66
	.long	.LBB88
	.long	.LBE88
	.byte	0x2
	.byte	0x93
	.uleb128 0x1e
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2d
	.long	0xc77
	.byte	0x1
	.byte	0x68
	.uleb128 0x20
	.long	0xc8b
	.long	.LBB90
	.long	.LBE90
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xc94
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0xb7
	.uleb128 0x2a
	.long	0xca1
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x21
	.long	0xcac
	.uleb128 0x23
	.long	.LVL12
	.long	0xd18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF195
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.long	0xb48
	.uleb128 0x2f
	.long	.LASF166
	.byte	0x1
	.byte	0xbe
	.long	0x689
	.byte	0
	.uleb128 0x30
	.long	.LASF168
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.long	0xb77
	.uleb128 0x2f
	.long	.LASF167
	.byte	0x1
	.byte	0x70
	.long	0x689
	.uleb128 0x31
	.long	.LASF162
	.byte	0x1
	.byte	0x74
	.long	0x9e0
	.uleb128 0x31
	.long	.LASF148
	.byte	0x1
	.byte	0x76
	.long	0x810
	.byte	0
	.uleb128 0x32
	.long	.LASF169
	.byte	0xb
	.word	0x3ed
	.byte	0x1
	.byte	0x3
	.long	0xb92
	.uleb128 0x33
	.long	.LASF162
	.byte	0xb
	.word	0x3ef
	.long	0x9da
	.byte	0
	.uleb128 0x32
	.long	.LASF170
	.byte	0xb
	.word	0x1f8
	.byte	0x1
	.byte	0x3
	.long	0xbb9
	.uleb128 0x33
	.long	.LASF148
	.byte	0xb
	.word	0x1fa
	.long	0xbb9
	.uleb128 0x33
	.long	.LASF171
	.byte	0xb
	.word	0x1fb
	.long	0x310
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x7ab
	.uleb128 0x32
	.long	.LASF172
	.byte	0xb
	.word	0x1e0
	.byte	0x1
	.byte	0x3
	.long	0xbe6
	.uleb128 0x33
	.long	.LASF148
	.byte	0xb
	.word	0x1e2
	.long	0xbb9
	.uleb128 0x33
	.long	.LASF173
	.byte	0xb
	.word	0x1e3
	.long	0x259
	.byte	0
	.uleb128 0x32
	.long	.LASF174
	.byte	0xb
	.word	0x102
	.byte	0x1
	.byte	0x3
	.long	0xc01
	.uleb128 0x33
	.long	.LASF163
	.byte	0xb
	.word	0x104
	.long	0x7e
	.byte	0
	.uleb128 0x34
	.long	.LASF177
	.byte	0xb
	.byte	0xf9
	.byte	0x1
	.long	0x7e
	.byte	0x3
	.uleb128 0x30
	.long	.LASF175
	.byte	0x2
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.long	0xc27
	.uleb128 0x2f
	.long	.LASF176
	.byte	0x2
	.byte	0x98
	.long	0x7e
	.byte	0
	.uleb128 0x34
	.long	.LASF178
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.long	0x7e
	.byte	0x3
	.uleb128 0x30
	.long	.LASF179
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.byte	0x3
	.long	0xc4d
	.uleb128 0x2f
	.long	.LASF180
	.byte	0x2
	.byte	0x7f
	.long	0xc2
	.byte	0
	.uleb128 0x30
	.long	.LASF181
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.long	0xc66
	.uleb128 0x2f
	.long	.LASF163
	.byte	0x2
	.byte	0x79
	.long	0x7e
	.byte	0
	.uleb128 0x35
	.long	.LASF196
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0x7e
	.byte	0x3
	.long	0xc82
	.uleb128 0x36
	.string	"sr"
	.byte	0x2
	.byte	0x74
	.long	0x7e
	.byte	0
	.uleb128 0x37
	.long	.LASF182
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.uleb128 0x37
	.long	.LASF183
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x30
	.long	.LASF184
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.long	0xcb8
	.uleb128 0x2f
	.long	.LASF167
	.byte	0x3
	.byte	0x89
	.long	0xcb8
	.uleb128 0x2f
	.long	.LASF185
	.byte	0x3
	.byte	0x8a
	.long	0x5c2
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x5b7
	.uleb128 0x34
	.long	.LASF186
	.byte	0xa
	.byte	0x54
	.byte	0x1
	.long	0xccb
	.byte	0x3
	.uleb128 0x6
	.byte	0x2
	.long	0x899
	.uleb128 0x34
	.long	.LASF187
	.byte	0xa
	.byte	0x4b
	.byte	0x1
	.long	0x9da
	.byte	0x3
	.uleb128 0x38
	.long	0xb2e
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xcfe
	.uleb128 0x28
	.long	0xb3c
	.long	.LLST0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.byte	0x1
	.long	.LASF188
	.long	.LASF188
	.byte	0xc
	.byte	0x85
	.uleb128 0x39
	.byte	0x1
	.byte	0x1
	.long	.LASF189
	.long	.LASF189
	.byte	0x3
	.byte	0x9b
	.uleb128 0x39
	.byte	0x1
	.byte	0x1
	.long	.LASF190
	.long	.LASF190
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
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xe
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.long	.LFB59
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
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL14
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
	.long	.LFE58
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
	.long	.LVL8
	.long	.LVL12-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
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
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
	.long	.LBB104
	.long	.LBE104
	.long	.LBB105
	.long	.LBE105
	.long	0
	.long	0
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
.LASF168:
	.string	"osEE_scheduler_task_not_terminated"
.LASF65:
	.string	"OSServiceId_ActivateTask"
.LASF12:
	.string	"OsEE_event_mask"
.LASF151:
	.string	"p_autostart_tdb_array"
.LASF138:
	.string	"p_stk_sn"
.LASF140:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF81:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF87:
	.string	"OSId_Kernel"
.LASF18:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF51:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF68:
	.string	"OSServiceId_Schedule"
.LASF157:
	.string	"OsEE_KDB"
.LASF90:
	.string	"OSServiceIdType"
.LASF21:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF80:
	.string	"OSServiceId_WaitEvent"
.LASF64:
	.string	"StatusType"
.LASF30:
	.string	"OsEE_task_status"
.LASF108:
	.string	"OsEE_SCB"
.LASF71:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF189:
	.string	"osEE_idle_task_terminate"
.LASF24:
	.string	"OSEE_TASK_SUSPENDED"
.LASF20:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF153:
	.string	"OsEE_CDB"
.LASF96:
	.string	"task_type"
.LASF158:
	.string	"osEE_kdb_var"
.LASF137:
	.string	"p_free_sn"
.LASF131:
	.string	"OsEE_TDB"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF66:
	.string	"OSServiceId_TerminateTask"
.LASF32:
	.string	"EventMaskType"
.LASF84:
	.string	"OSId_TaskBody"
.LASF178:
	.string	"osEE_hal_begin_nested_primitive"
.LASF50:
	.string	"E_OS_PROTECTION_TIME"
.LASF62:
	.string	"E_OS_SYS_ACT"
.LASF150:
	.string	"p_idle_task"
.LASF170:
	.string	"osEE_set_service_id"
.LASF73:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF22:
	.string	"OsEE_task_type"
.LASF15:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF89:
	.string	"OsEE_service_id_type"
.LASF57:
	.string	"E_OS_CORE"
.LASF35:
	.string	"E_OS_ACCESS"
.LASF177:
	.string	"osEE_begin_primitive"
.LASF166:
	.string	"p_tdb_to"
.LASF116:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF123:
	.string	"OsEE_kernel_status"
.LASF112:
	.string	"OsEE_SDB"
.LASF34:
	.string	"E_OK"
.LASF107:
	.string	"p_tos"
.LASF74:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF37:
	.string	"E_OS_ID"
.LASF33:
	.string	"MemSize"
.LASF59:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF120:
	.string	"OSEE_KERNEL_STARTING"
.LASF154:
	.string	"dummy"
.LASF52:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF180:
	.string	"virt_prio"
.LASF97:
	.string	"task_func"
.LASF100:
	.string	"max_num_of_act"
.LASF152:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF127:
	.string	"wait_mask"
.LASF167:
	.string	"p_to_term"
.LASF72:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF179:
	.string	"osEE_hal_set_ipl"
.LASF8:
	.string	"long unsigned int"
.LASF185:
	.string	"kernel_cb"
.LASF49:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF156:
	.string	"p_kcb"
.LASF181:
	.string	"osEE_hal_resumeIRQ"
.LASF17:
	.string	"TaskFunc"
.LASF183:
	.string	"osEE_hal_disableIRQ"
.LASF14:
	.string	"TaskType"
.LASF139:
	.string	"os_status"
.LASF13:
	.string	"AppModeType"
.LASF94:
	.string	"OsEE_TDB_tag"
.LASF106:
	.string	"OsEE_SCB_tag"
.LASF29:
	.string	"OSEE_TASK_CHAINED"
.LASF184:
	.string	"osEE_hal_terminate_activation"
.LASF102:
	.string	"OsEE_RQ"
.LASF147:
	.string	"OsEE_CCB"
.LASF149:
	.string	"p_idle_hook"
.LASF142:
	.string	"prev_s_isr_all_status"
.LASF88:
	.string	"OsId_Invalid"
.LASF171:
	.string	"service_id"
.LASF145:
	.string	"s_isr_os_cnt"
.LASF41:
	.string	"E_OS_STATE"
.LASF27:
	.string	"OSEE_TASK_WAITING"
.LASF146:
	.string	"d_isr_all_cnt"
.LASF173:
	.string	"Error"
.LASF136:
	.string	"p_curr"
.LASF186:
	.string	"osEE_get_kernel"
.LASF122:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF60:
	.string	"E_OS_SYS_TASK"
.LASF67:
	.string	"OSServiceId_ChainTask"
.LASF2:
	.string	"long double"
.LASF135:
	.string	"OsEE_autostart_tdb"
.LASF16:
	.string	"TaskActivation"
.LASF48:
	.string	"E_OS_PARAM_POINTER"
.LASF164:
	.string	"osEE_idle_hook_wrapper"
.LASF128:
	.string	"event_mask"
.LASF110:
	.string	"p_bos"
.LASF46:
	.string	"E_OS_DISABLEDINT"
.LASF155:
	.string	"OsEE_KCB"
.LASF101:
	.string	"OsEE_SN"
.LASF70:
	.string	"OSServiceId_GetTaskState"
.LASF45:
	.string	"E_OS_MISSINGEND"
.LASF182:
	.string	"osEE_hal_enableIRQ"
.LASF144:
	.string	"s_isr_all_cnt"
.LASF98:
	.string	"ready_prio"
.LASF26:
	.string	"OSEE_TASK_READY_STACKED"
.LASF42:
	.string	"E_OS_VALUE"
.LASF109:
	.string	"OsEE_SDB_tag"
.LASF187:
	.string	"osEE_get_curr_core"
.LASF124:
	.string	"current_num_of_act"
.LASF118:
	.string	"OsEE_byte"
.LASF95:
	.string	"p_tcb"
.LASF75:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF190:
	.string	"osEE_hal_terminate_ctx"
.LASF4:
	.string	"unsigned char"
.LASF53:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF103:
	.string	"OsEE_CTX_tag"
.LASF61:
	.string	"E_OS_SYS_STACK"
.LASF121:
	.string	"OSEE_KERNEL_STARTED"
.LASF55:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF56:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF133:
	.string	"p_tdb_ptr_array"
.LASF91:
	.string	"p_next"
.LASF25:
	.string	"OSEE_TASK_READY"
.LASF38:
	.string	"E_OS_LIMIT"
.LASF172:
	.string	"osEE_call_error_hook"
.LASF148:
	.string	"p_ccb"
.LASF160:
	.string	"osEE_kcb_var"
.LASF159:
	.string	"osEE_cdb_var"
.LASF132:
	.string	"OsEE_autostart_tdb_tag"
.LASF19:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF117:
	.string	"OsEE_kernel_cb"
.LASF143:
	.string	"prev_s_isr_os_status"
.LASF141:
	.string	"last_error"
.LASF165:
	.string	"osEE_scheduler_task_wrapper_run"
.LASF93:
	.string	"OsEE_SN_tag"
.LASF176:
	.string	"flag"
.LASF125:
	.string	"current_prio"
.LASF58:
	.string	"E_OS_SYS_INIT"
.LASF63:
	.string	"OsEE_status_type"
.LASF192:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_sched_entry_points.c"
.LASF92:
	.string	"p_tdb"
.LASF119:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF44:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF188:
	.string	"osEE_scheduler_task_preemption_point"
.LASF193:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF85:
	.string	"OSId_ISR2Body"
.LASF11:
	.string	"OsEE_mem_size"
.LASF129:
	.string	"p_own_sn"
.LASF115:
	.string	"p_scb"
.LASF31:
	.string	"TaskStateType"
.LASF76:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF169:
	.string	"osEE_stack_monitoring"
.LASF162:
	.string	"p_cdb"
.LASF40:
	.string	"E_OS_RESOURCE"
.LASF175:
	.string	"osEE_hal_end_nested_primitive"
.LASF174:
	.string	"osEE_end_primitive"
.LASF134:
	.string	"tdb_array_size"
.LASF77:
	.string	"OSServiceId_SetEvent"
.LASF83:
	.string	"OSServiceId_StartOS"
.LASF69:
	.string	"OSServiceId_GetTaskID"
.LASF86:
	.string	"OSId_Action"
.LASF126:
	.string	"status"
.LASF79:
	.string	"OSServiceId_GetEvent"
.LASF191:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF99:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF163:
	.string	"flags"
.LASF43:
	.string	"E_OS_SERVICEID"
.LASF78:
	.string	"OSServiceId_ClearEvent"
.LASF195:
	.string	"osEE_scheduler_task_wrapper_restore"
.LASF130:
	.string	"OsEE_TCB"
.LASF82:
	.string	"OSServiceId_ShutdownOS"
.LASF113:
	.string	"OsEE_HDB_tag"
.LASF111:
	.string	"stack_size"
.LASF39:
	.string	"E_OS_NOFUNC"
.LASF196:
	.string	"osEE_hal_suspendIRQ"
.LASF114:
	.string	"p_sdb"
.LASF36:
	.string	"E_OS_CALLEVEL"
.LASF23:
	.string	"TaskExecutionType"
.LASF28:
	.string	"OSEE_TASK_RUNNING"
.LASF161:
	.string	"osEE_ccb_var"
.LASF194:
	.string	"task_priority"
.LASF47:
	.string	"E_OS_STACKFAULT"
.LASF104:
	.string	"p_ctx"
.LASF54:
	.string	"E_OS_SPINLOCK"
.LASF105:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
