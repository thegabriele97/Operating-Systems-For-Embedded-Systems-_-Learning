	.file	"ee_oo_scheduler.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_scheduler_core_rq_preempt_stk,"ax",@progbits
.global	osEE_scheduler_core_rq_preempt_stk
	.type	osEE_scheduler_core_rq_preempt_stk, @function
osEE_scheduler_core_rq_preempt_stk:
.LFB58:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_scheduler.c"
	.loc 1 240 0
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
	.loc 1 241 0
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
.LVL1:
	.loc 1 242 0
	movw r28,r22
	ld r30,Y
	ldd r31,Y+1
.LVL2:
	.loc 1 243 0
	adiw r26,6
	ld r28,X+
	ld r29,X
	sbiw r26,6+1
.LVL3:
	.loc 1 248 0
	sbiw r28,0
	breq .L2
	.loc 1 249 0
	ldd r24,Y+2
	ldd r25,Y+3
.LVL4:
	.loc 1 250 0
	sbiw r30,0
	brne .+2
	rjmp .L7
.LBB9:
	.loc 1 252 0
	movw r28,r24
.LVL5:
	ldd r16,Y+4
	ldd r17,Y+5
.LVL6:
	.loc 1 254 0
	ldd r18,Z+2
	ldd r19,Z+3
	movw r28,r18
	ldd r20,Y+4
	ldd r21,Y+5
	.loc 1 253 0
	movw r28,r16
	ldd r19,Y+1
	movw r28,r20
	ldd r18,Y+1
	cp r19,r18
	brsh .L7
.LVL7:
	.loc 1 260 0
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r16
.LVL8:
.L8:
.LBE9:
	.loc 1 270 0
	std Y+3,r19
	std Y+2,r18
.LVL9:
	.loc 1 279 0
	ld r18,Z
	ldd r19,Z+1
	movw r28,r22
	std Y+1,r19
	st Y,r18
.LVL10:
.LBB10:
.LBB11:
	.loc 1 63 0
	ldd r28,Z+2
	ldd r29,Z+3
.LVL11:
	.loc 1 64 0
	ldd r18,Y+4
	ldd r19,Y+5
.LVL12:
	.loc 1 72 0
	adiw r26,6
	ld r20,X+
	ld r21,X
	sbiw r26,6+1
	std Z+1,r21
	st Z,r20
	.loc 1 74 0
	adiw r26,6+1
	st X,r31
	st -X,r30
	sbiw r26,6
	.loc 1 75 0
	st X+,r28
	st X,r29
.LBB12:
	.loc 1 80 0
	ldd r20,Y+12
.LVL13:
	.loc 1 81 0
	movw r30,r18
.LVL14:
	ldd r21,Z+1
	cp r21,r20
	brsh .L1
	.loc 1 82 0
	std Z+1,r20
.LVL15:
.L1:
/* epilogue start */
.LBE12:
.LBE11:
.LBE10:
	.loc 1 295 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.LVL16:
.L2:
	.loc 1 264 0
	sbiw r30,0
	breq .L7
	.loc 1 269 0
	movw r28,r24
.LVL17:
	ldd r24,Y+4
	ldd r25,Y+5
.LVL18:
	.loc 1 270 0
	movw r28,r24
.LVL19:
	ldd r20,Y+4
	ldd r21,Y+5
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r20
	rjmp .L8
.LVL20:
.L7:
	.loc 1 287 0
	ldi r25,0
	ldi r24,0
.LVL21:
	.loc 1 293 0
	rjmp .L1
	.cfi_endproc
.LFE58:
	.size	osEE_scheduler_core_rq_preempt_stk, .-osEE_scheduler_core_rq_preempt_stk
	.section	.text.osEE_sn_priority_insert,"ax",@progbits
.global	osEE_sn_priority_insert
	.type	osEE_sn_priority_insert, @function
osEE_sn_priority_insert:
.LFB59:
	.loc 1 306 0
	.cfi_startproc
.LVL22:
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 307 0
	movw r26,r22
	adiw r26,2
	ld r30,X+
	ld r31,X
.LVL23:
	.loc 1 309 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L10
	.loc 1 309 0 is_stmt 0 discriminator 1
	ldd r18,Z+11
.LVL24:
.L11:
	.loc 1 314 0 is_stmt 1 discriminator 4
	movw r26,r24
	ld r30,X+
	ld r31,X
.LVL25:
	.loc 1 313 0 discriminator 4
	ldi r27,0
	ldi r26,0
.LVL26:
.L12:
	.loc 1 318 0
	sbiw r30,0
	brne .L16
.L15:
	.loc 1 338 0
	sbiw r26,0
	breq .L17
	.loc 1 339 0
	st X+,r22
	st X,r23
	.loc 1 315 0
	ldi r25,0
	ldi r24,0
.LVL27:
.L18:
	.loc 1 345 0
	movw r26,r22
	st X+,r30
	st X,r31
/* epilogue start */
	.loc 1 348 0
	pop r29
	pop r28
	ret
.LVL28:
.L10:
	.loc 1 309 0 discriminator 2
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
.LVL29:
	ldd r18,Z+1
	rjmp .L11
.LVL30:
.L16:
.LBB13:
	.loc 1 320 0
	ldd r28,Z+2
	ldd r29,Z+3
.LVL31:
	.loc 1 323 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L13
	.loc 1 324 0
	ldd r19,Y+11
.LVL32:
.L14:
	.loc 1 329 0
	cp r19,r18
	brlo .L15
.LVL33:
	.loc 1 332 0
	movw r26,r30
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL34:
	rjmp .L12
.LVL35:
.L13:
	.loc 1 326 0
	ldd __tmp_reg__,Y+4
	ldd r29,Y+5
	mov r28,__tmp_reg__
.LVL36:
	ldd r19,Y+1
.LVL37:
	rjmp .L14
.LVL38:
.L17:
.LBE13:
	.loc 1 341 0
	movw r26,r24
.LVL39:
	st X+,r22
	st X,r23
.LVL40:
	.loc 1 342 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL41:
	rjmp .L18
	.cfi_endproc
.LFE59:
	.size	osEE_sn_priority_insert, .-osEE_sn_priority_insert
	.section	.text.osEE_scheduler_rq_insert,"ax",@progbits
.global	osEE_scheduler_rq_insert
	.type	osEE_scheduler_rq_insert, @function
osEE_scheduler_rq_insert:
.LFB57:
	.loc 1 224 0
	.cfi_startproc
.LVL42:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 225 0
	movw r30,r22
	std Z+3,r21
	std Z+2,r20
	.loc 1 228 0
	ldi r20,lo8(1)
	ldi r21,0
.LVL43:
	jmp osEE_sn_priority_insert
.LVL44:
	.cfi_endproc
.LFE57:
	.size	osEE_scheduler_rq_insert, .-osEE_scheduler_rq_insert
	.section	.text.osEE_scheduler_core_pop_running,"ax",@progbits
.global	osEE_scheduler_core_pop_running
	.type	osEE_scheduler_core_pop_running, @function
osEE_scheduler_core_pop_running:
.LFB60:
	.loc 1 356 0
	.cfi_startproc
.LVL45:
	push r14
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	.loc 1 357 0
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
.LVL46:
	.loc 1 358 0
	ldd r14,Y+6
	ldd r15,Y+7
.LVL47:
	.loc 1 364 0
	movw r30,r14
	ld r24,Z
	ldd r25,Z+1
.LVL48:
	std Y+7,r25
	std Y+6,r24
.LBB14:
	.loc 1 387 0
	movw r24,r16
	call osEE_scheduler_core_rq_preempt_stk
.LVL49:
	.loc 1 392 0
	or r24,r25
	brne .L20
	.loc 1 389 0
	ldd r30,Y+6
	ldd r31,Y+7
.LBB15:
	.loc 1 403 0
	sbiw r30,0
	breq .L22
	.loc 1 405 0
	ldd r24,Z+2
	ldd r25,Z+3
.LVL50:
.L23:
	.loc 1 411 0
	std Y+1,r25
	st Y,r24
.LVL51:
.L20:
.LBE15:
.LBE14:
	.loc 1 423 0
	movw r24,r14
/* epilogue start */
	pop r29
	pop r28
.LVL52:
	pop r17
	pop r16
.LVL53:
	pop r15
	pop r14
.LVL54:
	ret
.LVL55:
.L22:
.LBB17:
.LBB16:
	.loc 1 408 0
	movw r30,r16
.LVL56:
	ldd r24,Z+4
	ldd r25,Z+5
.LVL57:
	rjmp .L23
.LBE16:
.LBE17:
	.cfi_endproc
.LFE60:
	.size	osEE_scheduler_core_pop_running, .-osEE_scheduler_core_pop_running
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
	.file 10 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc29
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF168
	.byte	0xc
	.long	.LASF169
	.long	.LASF170
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
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x3
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
	.byte	0x3
	.byte	0x54
	.long	0x7e
	.uleb128 0x7
	.long	0x98
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x5b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x6d
	.long	0x5e
	.uleb128 0x8
	.byte	0x2
	.long	0xcf
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x78
	.long	0xa8
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xc8
	.long	0x4c
	.uleb128 0x7
	.long	0xe7
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0xf4
	.long	0x4c
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.word	0x13a
	.long	0xc9
	.uleb128 0xb
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x145
	.long	0x135
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
	.byte	0x4
	.word	0x153
	.long	0x10e
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.word	0x157
	.long	0x135
	.uleb128 0xb
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x15d
	.long	0x180
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
	.byte	0x4
	.word	0x16e
	.long	0x14d
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.word	0x17e
	.long	0x180
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.word	0x237
	.long	0xbe
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.word	0x2a3
	.long	0xb3
	.uleb128 0xb
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x2b1
	.long	0x26d
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
	.byte	0x4
	.word	0x2d4
	.long	0x1b0
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.word	0x2d9
	.long	0x26d
	.uleb128 0xc
	.long	.LASF70
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x2ae
	.uleb128 0xd
	.long	.LASF68
	.byte	0x5
	.byte	0x4d
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x5
	.byte	0x4f
	.long	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x285
	.uleb128 0xe
	.long	.LASF71
	.byte	0xe
	.byte	0x6
	.word	0x108
	.long	0x33a
	.uleb128 0xf
	.string	"hdb"
	.byte	0x6
	.word	0x10b
	.long	0x52a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x6
	.word	0x10e
	.long	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.word	0x110
	.long	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF73
	.byte	0x6
	.word	0x112
	.long	0x141
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.long	.LASF74
	.byte	0x6
	.word	0x114
	.long	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.long	.LASF75
	.byte	0x6
	.word	0x117
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF76
	.byte	0x6
	.word	0x11a
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.long	.LASF77
	.byte	0x6
	.word	0x11c
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.long	0x2b4
	.uleb128 0x8
	.byte	0x2
	.long	0x33a
	.uleb128 0x4
	.long	.LASF78
	.byte	0x5
	.byte	0x50
	.long	0x285
	.uleb128 0x7
	.long	0x345
	.uleb128 0x4
	.long	.LASF79
	.byte	0x5
	.byte	0xd5
	.long	0x360
	.uleb128 0x8
	.byte	0x2
	.long	0x345
	.uleb128 0x7
	.long	0x360
	.uleb128 0xc
	.long	.LASF80
	.byte	0x14
	.byte	0x7
	.byte	0x43
	.long	0x47a
	.uleb128 0x11
	.string	"r29"
	.byte	0x7
	.byte	0x44
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0x7
	.byte	0x45
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0x7
	.byte	0x46
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0x7
	.byte	0x47
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0x7
	.byte	0x48
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0x7
	.byte	0x49
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0x7
	.byte	0x4a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0x7
	.byte	0x4b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0x7
	.byte	0x4c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0x7
	.byte	0x4d
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0x7
	.byte	0x4e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0x7
	.byte	0x4f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0x7
	.byte	0x50
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0x7
	.byte	0x51
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0x7
	.byte	0x52
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0x7
	.byte	0x53
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0x7
	.byte	0x54
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0x7
	.byte	0x55
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.long	.LASF81
	.byte	0x7
	.byte	0x56
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x36b
	.uleb128 0x4
	.long	.LASF82
	.byte	0x7
	.byte	0x57
	.long	0x36b
	.uleb128 0xc
	.long	.LASF83
	.byte	0x2
	.byte	0x7
	.byte	0x5a
	.long	0x4a6
	.uleb128 0xd
	.long	.LASF84
	.byte	0x7
	.byte	0x5b
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x480
	.uleb128 0x4
	.long	.LASF85
	.byte	0x7
	.byte	0x5c
	.long	0x48b
	.uleb128 0xc
	.long	.LASF86
	.byte	0x4
	.byte	0x7
	.byte	0x5e
	.long	0x4e0
	.uleb128 0xd
	.long	.LASF87
	.byte	0x7
	.byte	0x5f
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF88
	.byte	0x7
	.byte	0x60
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x4b7
	.uleb128 0x4
	.long	.LASF89
	.byte	0x7
	.byte	0x61
	.long	0x4e0
	.uleb128 0xc
	.long	.LASF90
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.long	0x519
	.uleb128 0xd
	.long	.LASF91
	.byte	0x7
	.byte	0x64
	.long	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF92
	.byte	0x7
	.byte	0x65
	.long	0x524
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x4f0
	.uleb128 0x8
	.byte	0x2
	.long	0x4e5
	.uleb128 0x8
	.byte	0x2
	.long	0x4ac
	.uleb128 0x4
	.long	.LASF93
	.byte	0x7
	.byte	0x69
	.long	0x519
	.uleb128 0x4
	.long	.LASF94
	.byte	0x6
	.byte	0x53
	.long	0x4c
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x73
	.long	0x566
	.uleb128 0x6
	.long	.LASF95
	.byte	0
	.uleb128 0x6
	.long	.LASF96
	.byte	0x1
	.uleb128 0x6
	.long	.LASF97
	.byte	0x2
	.uleb128 0x6
	.long	.LASF98
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF99
	.byte	0x6
	.byte	0x7d
	.long	0x540
	.uleb128 0x12
	.long	0x566
	.uleb128 0x13
	.byte	0xa
	.byte	0x6
	.byte	0xe0
	.long	0x5d3
	.uleb128 0xd
	.long	.LASF100
	.byte	0x6
	.byte	0xe4
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF101
	.byte	0x6
	.byte	0xea
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF102
	.byte	0x6
	.byte	0xec
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF103
	.byte	0x6
	.byte	0xf3
	.long	0x198
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF104
	.byte	0x6
	.byte	0xf5
	.long	0x198
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF105
	.byte	0x6
	.byte	0xfb
	.long	0x360
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0x6
	.word	0x101
	.long	0x576
	.uleb128 0x7
	.long	0x5d3
	.uleb128 0x8
	.byte	0x2
	.long	0x5d3
	.uleb128 0x7
	.long	0x5e4
	.uleb128 0xa
	.long	.LASF107
	.byte	0x6
	.word	0x122
	.long	0x33a
	.uleb128 0x8
	.byte	0x2
	.long	0x5ef
	.uleb128 0x7
	.long	0x5fb
	.uleb128 0xe
	.long	.LASF108
	.byte	0x4
	.byte	0x6
	.word	0x2c7
	.long	0x632
	.uleb128 0x10
	.long	.LASF109
	.byte	0x6
	.word	0x2c9
	.long	0x642
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF110
	.byte	0x6
	.word	0x2cb
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x606
	.uleb128 0x14
	.long	0x601
	.long	0x642
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x637
	.uleb128 0xa
	.long	.LASF111
	.byte	0x6
	.word	0x2cc
	.long	0x632
	.uleb128 0x16
	.byte	0x12
	.byte	0x6
	.word	0x2d9
	.long	0x711
	.uleb128 0x10
	.long	.LASF112
	.byte	0x6
	.word	0x2dc
	.long	0x5fb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"rq"
	.byte	0x6
	.word	0x2ee
	.long	0x355
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF113
	.byte	0x6
	.word	0x2f0
	.long	0x360
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF114
	.byte	0x6
	.word	0x2ff
	.long	0x360
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF115
	.byte	0x6
	.word	0x301
	.long	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF116
	.byte	0x6
	.word	0x305
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.long	.LASF117
	.byte	0x6
	.word	0x307
	.long	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF118
	.byte	0x6
	.word	0x327
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.long	.LASF119
	.byte	0x6
	.word	0x329
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.long	.LASF120
	.byte	0x6
	.word	0x32b
	.long	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF121
	.byte	0x6
	.word	0x32d
	.long	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF122
	.byte	0x6
	.word	0x330
	.long	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xa
	.long	.LASF123
	.byte	0x6
	.word	0x33a
	.long	0x654
	.uleb128 0x7
	.long	0x711
	.uleb128 0x16
	.byte	0xa
	.byte	0x6
	.word	0x344
	.long	0x777
	.uleb128 0x10
	.long	.LASF124
	.byte	0x6
	.word	0x34a
	.long	0x77c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF125
	.byte	0x6
	.word	0x351
	.long	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF126
	.byte	0x6
	.word	0x354
	.long	0x5fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF127
	.byte	0x6
	.word	0x35c
	.long	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF128
	.byte	0x6
	.word	0x35e
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x722
	.uleb128 0x8
	.byte	0x2
	.long	0x711
	.uleb128 0x7
	.long	0x77c
	.uleb128 0x14
	.long	0x648
	.long	0x792
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x787
	.uleb128 0xa
	.long	.LASF129
	.byte	0x6
	.word	0x36a
	.long	0x777
	.uleb128 0x16
	.byte	0x1
	.byte	0x6
	.word	0x36f
	.long	0x7bd
	.uleb128 0x10
	.long	.LASF130
	.byte	0x6
	.word	0x3b1
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.long	.LASF131
	.byte	0x6
	.word	0x3b3
	.long	0x7a4
	.uleb128 0x16
	.byte	0x6
	.byte	0x6
	.word	0x3c3
	.long	0x800
	.uleb128 0x10
	.long	.LASF132
	.byte	0x6
	.word	0x3c5
	.long	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF109
	.byte	0x6
	.word	0x3d1
	.long	0x642
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF110
	.byte	0x6
	.word	0x3d4
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	0x7c9
	.uleb128 0x8
	.byte	0x2
	.long	0x7bd
	.uleb128 0xa
	.long	.LASF133
	.byte	0x6
	.word	0x3fc
	.long	0x800
	.uleb128 0x17
	.long	.LASF134
	.byte	0x8
	.byte	0x3f
	.long	0x80b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF135
	.byte	0x8
	.byte	0x40
	.long	0x798
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF136
	.byte	0x8
	.byte	0x41
	.long	0x7bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF137
	.byte	0x8
	.byte	0x42
	.long	0x711
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.long	.LASF138
	.byte	0x9
	.byte	0x50
	.long	0x5ef
	.uleb128 0x18
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.word	0x15f
	.byte	0x1
	.long	0x360
	.long	.LFB60
	.long	.LFE60
	.long	.LLST26
	.byte	0x1
	.long	0x927
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1
	.word	0x161
	.long	0x927
	.long	.LLST27
	.uleb128 0x19
	.long	.LASF140
	.byte	0x1
	.word	0x162
	.long	0x92d
	.long	.LLST28
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.word	0x165
	.long	0x782
	.long	.LLST29
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.word	0x166
	.long	0x366
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x1
	.word	0x168
	.long	0x366
	.long	.LLST31
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.word	0x183
	.long	0x939
	.long	.LLST32
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x185
	.long	0x944
	.long	.LLST33
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x18
	.long	0x904
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x189
	.long	0x5fb
	.long	.LLST34
	.byte	0
	.uleb128 0x1d
	.long	.LVL49
	.long	0xa4a
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x798
	.uleb128 0x8
	.byte	0x2
	.long	0x355
	.uleb128 0x8
	.byte	0x2
	.long	0x84b
	.uleb128 0x7
	.long	0x933
	.uleb128 0x8
	.byte	0x2
	.long	0x350
	.uleb128 0x7
	.long	0x93e
	.uleb128 0x18
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.word	0x12c
	.byte	0x1
	.long	0x98
	.long	.LFB59
	.long	.LFE59
	.long	.LLST12
	.byte	0x1
	.long	0xa39
	.uleb128 0x19
	.long	.LASF148
	.byte	0x1
	.word	0x12e
	.long	0xa39
	.long	.LLST13
	.uleb128 0x1f
	.long	.LASF149
	.byte	0x1
	.word	0x12f
	.long	0x360
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x1
	.word	0x130
	.long	0xa3
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.word	0x133
	.long	0x601
	.long	.LLST14
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x1
	.word	0x134
	.long	0xa45
	.long	.LLST15
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.word	0x135
	.long	0xf2
	.long	.LLST16
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x139
	.long	0x360
	.long	.LLST17
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x13a
	.long	0x360
	.long	.LLST18
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.word	0x13b
	.long	0x98
	.long	.LLST19
	.uleb128 0x20
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x13f
	.long	0xe7
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x1
	.word	0x140
	.long	0x601
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x1
	.word	0x141
	.long	0xa45
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x360
	.uleb128 0x8
	.byte	0x2
	.long	0x5df
	.uleb128 0x7
	.long	0xa3f
	.uleb128 0x21
	.byte	0x1
	.long	.LASF159
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x933
	.long	.LFB58
	.long	.LFE58
	.long	.LLST0
	.byte	0x1
	.long	0xb4b
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.byte	0xed
	.long	0x927
	.long	.LLST1
	.uleb128 0x23
	.long	.LASF140
	.byte	0x1
	.byte	0xee
	.long	0x92d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	.LASF124
	.byte	0x1
	.byte	0xf1
	.long	0x782
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x25
	.long	.LASF160
	.byte	0x1
	.byte	0xf2
	.long	0x366
	.long	.LLST2
	.uleb128 0x25
	.long	.LASF161
	.byte	0x1
	.byte	0xf3
	.long	0x93e
	.long	.LLST3
	.uleb128 0x25
	.long	.LASF162
	.byte	0x1
	.byte	0xf5
	.long	0x98
	.long	.LLST4
	.uleb128 0x25
	.long	.LASF163
	.byte	0x1
	.byte	0xf6
	.long	0x5fb
	.long	.LLST5
	.uleb128 0x26
	.long	.LBB9
	.long	.LBE9
	.long	0xaf4
	.uleb128 0x25
	.long	.LASF164
	.byte	0x1
	.byte	0xfc
	.long	0x5ea
	.long	.LLST6
	.byte	0
	.uleb128 0x27
	.long	0xbc4
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.word	0x11a
	.uleb128 0x28
	.long	0xbdc
	.long	.LLST7
	.uleb128 0x28
	.long	0xbd1
	.long	.LLST8
	.uleb128 0x20
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x29
	.long	0xbe7
	.long	.LLST9
	.uleb128 0x29
	.long	0xbf2
	.long	.LLST10
	.uleb128 0x2a
	.long	0xbfd
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x29
	.long	0xbfe
	.long	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF165
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	0x98
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xbc4
	.uleb128 0x22
	.long	.LASF140
	.byte	0x1
	.byte	0xdc
	.long	0x92d
	.long	.LLST23
	.uleb128 0x22
	.long	.LASF149
	.byte	0x1
	.byte	0xdd
	.long	0x360
	.long	.LLST24
	.uleb128 0x22
	.long	.LASF151
	.byte	0x1
	.byte	0xde
	.long	0x601
	.long	.LLST25
	.uleb128 0x2c
	.long	.LVL44
	.byte	0x1
	.long	0x949
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1e
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
	.byte	0x66
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF166
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.long	0xc0b
	.uleb128 0x2e
	.long	.LASF124
	.byte	0x1
	.byte	0x3b
	.long	0x77c
	.uleb128 0x2e
	.long	.LASF160
	.byte	0x1
	.byte	0x3c
	.long	0x360
	.uleb128 0x2f
	.long	.LASF69
	.byte	0x1
	.byte	0x3f
	.long	0x601
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x1
	.byte	0x40
	.long	0x5ea
	.uleb128 0x30
	.uleb128 0x2f
	.long	.LASF76
	.byte	0x1
	.byte	0x50
	.long	0xf2
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF167
	.byte	0xa
	.word	0x19c
	.byte	0x1
	.byte	0x3
	.long	0xc26
	.uleb128 0x32
	.long	.LASF124
	.byte	0xa
	.word	0x19e
	.long	0xc26
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x71d
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST26:
	.long	.LFB60
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LFE60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST27:
	.long	.LVL45
	.long	.LVL48
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LVL53
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL55
	.long	.LFE60
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL45
	.long	.LVL49-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49-1
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL46
	.long	.LVL52
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LFE60
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL47
	.long	.LVL54
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LVL55
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LFE60
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST31:
	.long	.LVL47
	.long	.LVL49-1
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.long	0
	.long	0
.LLST32:
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL57
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LVL49
	.long	.LVL52
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	.LVL55
	.long	.LVL56
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE60
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST34:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LFE60
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LFB59
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
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST13:
	.long	.LVL22
	.long	.LVL27
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL28
	.long	.LVL41
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41
	.long	.LFE59
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL28
	.word	0x2
	.byte	0x86
	.sleb128 2
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LFE59
	.word	0x2
	.byte	0x86
	.sleb128 2
	.long	0
	.long	0
.LLST15:
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x8e
	.sleb128 4
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0x86
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x8e
	.sleb128 4
	.long	.LVL29
	.long	.LFE59
	.word	0x6
	.byte	0x86
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
.LLST16:
	.long	.LVL24
	.long	.LVL28
	.word	0x1
	.byte	0x62
	.long	.LVL30
	.long	.LFE59
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST17:
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL33
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL39
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
	.long	.LVL25
	.long	.LVL28
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL33
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL34
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL34
	.long	.LFE59
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL40
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL40
	.long	.LFE59
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL32
	.long	.LVL35
	.word	0x1
	.byte	0x63
	.long	.LVL37
	.long	.LVL38
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST21:
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL34
	.word	0x2
	.byte	0x8e
	.sleb128 2
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x8a
	.sleb128 2
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL38
	.word	0x2
	.byte	0x8e
	.sleb128 2
	.long	0
	.long	0
.LLST22:
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LVL32
	.long	.LVL34
	.word	0x6
	.byte	0x8e
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x8a
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LVL36
	.long	.LVL38
	.word	0x6
	.byte	0x8e
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
.LLST0:
	.long	.LFB58
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
	.long	.LFE58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
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
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL14
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	.LVL16
	.long	.LFE58
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL10
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LFE58
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL15
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL16
	.long	.LFE58
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL15
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE58
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL14
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	0
	.long	0
.LLST8:
	.long	.LVL10
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
.LLST9:
	.long	.LVL11
	.long	.LVL15
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL12
	.long	.LVL15
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL13
	.long	.LVL15
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST23:
	.long	.LVL42
	.long	.LVL44-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL42
	.long	.LVL44-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL42
	.long	.LVL43
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43
	.long	.LVL44-1
	.word	0x2
	.byte	0x86
	.sleb128 2
	.long	.LVL44-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
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
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB14
	.long	.LBE14
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LBB15
	.long	.LBE15
	.long	.LBB16
	.long	.LBE16
	.long	0
	.long	0
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB57
	.long	.LFE57
	.long	.LFB60
	.long	.LFE60
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"OsEE_event_mask"
.LASF94:
	.string	"OsEE_byte"
.LASF127:
	.string	"p_autostart_tdb_array"
.LASF114:
	.string	"p_stk_sn"
.LASF116:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF107:
	.string	"OsEE_TDB"
.LASF150:
	.string	"as_ready"
.LASF21:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF54:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF162:
	.string	"is_rq_preemption"
.LASF133:
	.string	"OsEE_KDB"
.LASF24:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF67:
	.string	"StatusType"
.LASF33:
	.string	"OsEE_task_status"
.LASF85:
	.string	"OsEE_SCB"
.LASF27:
	.string	"OSEE_TASK_SUSPENDED"
.LASF23:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF129:
	.string	"OsEE_CDB"
.LASF73:
	.string	"task_type"
.LASF134:
	.string	"osEE_kdb_var"
.LASF113:
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
.LASF158:
	.string	"p_cur_tcb"
.LASF126:
	.string	"p_idle_task"
.LASF149:
	.string	"p_sn_new"
.LASF146:
	.string	"osEE_scheduler_core_pop_running"
.LASF25:
	.string	"OsEE_task_type"
.LASF18:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF144:
	.string	"p_curr_stk_sn"
.LASF138:
	.string	"OsEE_preempt"
.LASF60:
	.string	"E_OS_CORE"
.LASF38:
	.string	"E_OS_ACCESS"
.LASF93:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF99:
	.string	"OsEE_kernel_status"
.LASF89:
	.string	"OsEE_SDB"
.LASF37:
	.string	"E_OK"
.LASF84:
	.string	"p_tos"
.LASF40:
	.string	"E_OS_ID"
.LASF75:
	.string	"ready_prio"
.LASF36:
	.string	"MemSize"
.LASF62:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF96:
	.string	"OSEE_KERNEL_STARTING"
.LASF130:
	.string	"dummy"
.LASF55:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF74:
	.string	"task_func"
.LASF77:
	.string	"max_num_of_act"
.LASF128:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF103:
	.string	"wait_mask"
.LASF157:
	.string	"p_cur_tdb"
.LASF11:
	.string	"OSEE_TRUE"
.LASF8:
	.string	"long unsigned int"
.LASF52:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF141:
	.string	"p_prev_stk_sn"
.LASF132:
	.string	"p_kcb"
.LASF20:
	.string	"TaskFunc"
.LASF17:
	.string	"TaskType"
.LASF169:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_scheduler.c"
.LASF115:
	.string	"os_status"
.LASF16:
	.string	"AppModeType"
.LASF71:
	.string	"OsEE_TDB_tag"
.LASF83:
	.string	"OsEE_SCB_tag"
.LASF32:
	.string	"OSEE_TASK_CHAINED"
.LASF163:
	.string	"p_ret_tdb"
.LASF79:
	.string	"OsEE_RQ"
.LASF123:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF125:
	.string	"p_idle_hook"
.LASF147:
	.string	"osEE_sn_priority_insert"
.LASF118:
	.string	"prev_s_isr_all_status"
.LASF121:
	.string	"s_isr_os_cnt"
.LASF44:
	.string	"E_OS_STATE"
.LASF30:
	.string	"OSEE_TASK_WAITING"
.LASF140:
	.string	"p_rq"
.LASF122:
	.string	"d_isr_all_cnt"
.LASF156:
	.string	"prio_to_check"
.LASF112:
	.string	"p_curr"
.LASF161:
	.string	"p_ret_sn"
.LASF98:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF63:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF111:
	.string	"OsEE_autostart_tdb"
.LASF19:
	.string	"TaskActivation"
.LASF152:
	.string	"p_tcb_new"
.LASF51:
	.string	"E_OS_PARAM_POINTER"
.LASF104:
	.string	"event_mask"
.LASF87:
	.string	"p_bos"
.LASF49:
	.string	"E_OS_DISABLEDINT"
.LASF131:
	.string	"OsEE_KCB"
.LASF78:
	.string	"OsEE_SN"
.LASF48:
	.string	"E_OS_MISSINGEND"
.LASF12:
	.string	"OsEE_bool"
.LASF29:
	.string	"OSEE_TASK_READY_STACKED"
.LASF45:
	.string	"E_OS_VALUE"
.LASF86:
	.string	"OsEE_SDB_tag"
.LASF160:
	.string	"p_rq_sn"
.LASF154:
	.string	"p_prev"
.LASF100:
	.string	"current_num_of_act"
.LASF72:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF56:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF167:
	.string	"osEE_call_post_task_hook"
.LASF80:
	.string	"OsEE_CTX_tag"
.LASF64:
	.string	"E_OS_SYS_STACK"
.LASF97:
	.string	"OSEE_KERNEL_STARTED"
.LASF151:
	.string	"p_tdb_new"
.LASF143:
	.string	"p_preempt"
.LASF58:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF59:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF109:
	.string	"p_tdb_ptr_array"
.LASF68:
	.string	"p_next"
.LASF28:
	.string	"OSEE_TASK_READY"
.LASF41:
	.string	"E_OS_LIMIT"
.LASF124:
	.string	"p_ccb"
.LASF136:
	.string	"osEE_kcb_var"
.LASF145:
	.string	"p_tdb_stk"
.LASF135:
	.string	"osEE_cdb_var"
.LASF108:
	.string	"OsEE_autostart_tdb_tag"
.LASF22:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF119:
	.string	"prev_s_isr_os_status"
.LASF117:
	.string	"last_error"
.LASF70:
	.string	"OsEE_SN_tag"
.LASF101:
	.string	"current_prio"
.LASF61:
	.string	"E_OS_SYS_INIT"
.LASF66:
	.string	"OsEE_status_type"
.LASF69:
	.string	"p_tdb"
.LASF95:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF47:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF170:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF14:
	.string	"OsEE_mem_size"
.LASF105:
	.string	"p_own_sn"
.LASF165:
	.string	"osEE_scheduler_rq_insert"
.LASF92:
	.string	"p_scb"
.LASF34:
	.string	"TaskStateType"
.LASF155:
	.string	"head_changed"
.LASF148:
	.string	"pp_first"
.LASF139:
	.string	"p_cdb"
.LASF166:
	.string	"osEE_scheduler_stk_next"
.LASF43:
	.string	"E_OS_RESOURCE"
.LASF110:
	.string	"tdb_array_size"
.LASF120:
	.string	"s_isr_all_cnt"
.LASF142:
	.string	"p_next_stk_sn"
.LASF102:
	.string	"status"
.LASF168:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF76:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF159:
	.string	"osEE_scheduler_core_rq_preempt_stk"
.LASF46:
	.string	"E_OS_SERVICEID"
.LASF88:
	.string	"stack_size"
.LASF106:
	.string	"OsEE_TCB"
.LASF90:
	.string	"OsEE_HDB_tag"
.LASF153:
	.string	"new_task_prio"
.LASF42:
	.string	"E_OS_NOFUNC"
.LASF91:
	.string	"p_sdb"
.LASF39:
	.string	"E_OS_CALLEVEL"
.LASF26:
	.string	"TaskExecutionType"
.LASF31:
	.string	"OSEE_TASK_RUNNING"
.LASF137:
	.string	"osEE_ccb_var"
.LASF50:
	.string	"E_OS_STACKFAULT"
.LASF164:
	.string	"p_ret_tcb"
.LASF81:
	.string	"p_ctx"
.LASF57:
	.string	"E_OS_SPINLOCK"
.LASF82:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
