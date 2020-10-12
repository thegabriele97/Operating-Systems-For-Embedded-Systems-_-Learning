	.file	"ee_oo_counter.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_counter_insert_abs_trigger,"ax",@progbits
.global	osEE_counter_insert_abs_trigger
	.type	osEE_counter_insert_abs_trigger, @function
osEE_counter_insert_abs_trigger:
.LFB66:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_oo_counter.c"
	.loc 1 75 0
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
	push r12
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	.loc 1 77 0
	movw r26,r24
	ld r10,X+
	ld r11,X
.LVL1:
	.loc 1 81 0
	movw r28,r10
	ld r30,Y
	ldd r31,Y+1
.LVL2:
	.loc 1 83 0
	ldd r18,Y+2
	ldd r19,Y+3
.LVL3:
	.loc 1 88 0
	movw r26,r22
	ld r12,X+
	ld r13,X
	movw r28,r12
	std Y+3,r21
	std Y+2,r20
	.loc 1 85 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL4:
	.loc 1 79 0
	ldi r27,0
	ldi r26,0
.LVL5:
.L2:
	.loc 1 90 0
	sbiw r30,0
	breq .L6
	.loc 1 90 0 discriminator 1
	sbiw r24,0
	brne .L7
.L6:
	.loc 1 117 0
	sbiw r26,0
	breq .L8
	.loc 1 118 0
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
.LVL6:
.L17:
	.loc 1 120 0
	st X+,r22
	st X,r23
	.loc 1 123 0
	movw r28,r12
	std Y+1,r31
	st Y,r30
/* epilogue start */
	.loc 1 124 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
.LVL7:
	ret
.LVL8:
.L7:
.LBB37:
	.loc 1 91 0
	ld r16,Z
	ldd r17,Z+1
	movw r28,r16
	ldd r14,Y+2
	ldd r15,Y+3
.LVL9:
	.loc 1 93 0
	cp r18,r14
	cpc r19,r15
	brsh .L3
	.loc 1 95 0
	cp r20,r14
	cpc r21,r15
	brsh .L16
	.loc 1 95 0 is_stmt 0 discriminator 1
	cp r18,r20
	cpc r19,r21
	brlo .L12
.L16:
.LVL10:
	.loc 1 110 0 is_stmt 1
	movw r26,r30
	movw r28,r16
	ld r30,Y
	ldd r31,Y+1
.LVL11:
	rjmp .L2
.LVL12:
.L3:
	.loc 1 105 0
	cp r18,r20
	cpc r19,r21
	brlo .L12
	.loc 1 105 0 is_stmt 0 discriminator 1
	cp r20,r14
	cpc r21,r15
	brsh .L16
.L12:
	.loc 1 112 0 is_stmt 1
	ldi r25,0
	ldi r24,0
.LVL13:
	rjmp .L2
.LVL14:
.L8:
.LBE37:
	.loc 1 120 0
	movw r26,r10
.LVL15:
	rjmp .L17
	.cfi_endproc
.LFE66:
	.size	osEE_counter_insert_abs_trigger, .-osEE_counter_insert_abs_trigger
	.section	.text.osEE_counter_insert_rel_trigger,"ax",@progbits
.global	osEE_counter_insert_rel_trigger
	.type	osEE_counter_insert_rel_trigger, @function
osEE_counter_insert_rel_trigger:
.LFB65:
	.loc 1 63 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL17:
.LBB40:
.LBB41:
	.file 2 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_kernel.h"
	.loc 2 789 0
	movw r26,r24
	adiw r26,2
	ld r30,X+
	ld r31,X
	sbiw r26,2+1
.LVL18:
	.loc 2 791 0
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	adiw r26,2
	ld r18,X+
	ld r19,X
.LVL19:
	.loc 2 793 0
	movw r26,r30
	sub r26,r20
	sbc r27,r21
	cp r26,r18
	cpc r27,r19
	brlo .L19
	.loc 2 794 0
	add r20,r18
	adc r21,r19
.LVL20:
.L20:
/* epilogue start */
.LBE41:
.LBE40:
	.loc 1 66 0
	pop r29
	pop r28
	.loc 1 64 0
	jmp osEE_counter_insert_abs_trigger
.LVL21:
.L19:
.LBB43:
.LBB42:
	.loc 2 796 0
	subi r20,1
	sbc r21,__zero_reg__
.LVL22:
	add r20,r18
	adc r21,r19
.LVL23:
	sub r20,r30
	sbc r21,r31
.LVL24:
	rjmp .L20
.LBE42:
.LBE43:
	.cfi_endproc
.LFE65:
	.size	osEE_counter_insert_rel_trigger, .-osEE_counter_insert_rel_trigger
	.section	.text.osEE_counter_cancel_trigger,"ax",@progbits
.global	osEE_counter_cancel_trigger
	.type	osEE_counter_cancel_trigger, @function
osEE_counter_cancel_trigger:
.LFB67:
	.loc 1 132 0
	.cfi_startproc
.LVL25:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 134 0
	movw r30,r24
	ld r26,Z
	ldd r27,Z+1
.LVL26:
	.loc 1 136 0
	movw r30,r22
	ld r28,Z
	ldd r29,Z+1
.LVL27:
	.loc 1 138 0
	ld r30,X+
	ld r31,X
	sbiw r26,1
.LVL28:
.L32:
.LBB44:
	.loc 1 148 0 discriminator 1
	cp r22,r30
	cpc r23,r31
	brne .L22
	.loc 1 152 0
	ld r24,Y
	ldd r25,Y+1
.LVL29:
	st X+,r24
	st X,r25
	rjmp .L21
.LVL30:
.L22:
	.loc 1 147 0 discriminator 2
	ld r26,Z
	ldd r27,Z+1
	ld r30,X+
	ld r31,X
	sbiw r26,1
.LVL31:
	.loc 1 148 0 discriminator 2
	sbiw r30,0
	brne .L32
.LVL32:
.L21:
/* epilogue start */
.LBE44:
	.loc 1 155 0
	pop r29
	pop r28
.LVL33:
	ret
	.cfi_endproc
.LFE67:
	.size	osEE_counter_cancel_trigger, .-osEE_counter_cancel_trigger
	.section	.text.osEE_counter_increment,"ax",@progbits
.global	osEE_counter_increment
	.type	osEE_counter_increment, @function
osEE_counter_increment:
.LFB70:
	.loc 1 469 0
	.cfi_startproc
.LVL34:
	push r8
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
	rcall .
.LCFI26:
	.cfi_def_cfa_offset 16
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI27:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 14 */
.L__stack_usage = 14
	.loc 1 471 0
	movw r26,r24
	ld r12,X+
	ld r13,X
	sbiw r26,1
.LVL35:
.LBB59:
	.loc 1 499 0
	movw r30,r12
	ldd r18,Z+2
	ldd r19,Z+3
	adiw r26,2
	ld r20,X+
	ld r21,X
	cp r18,r20
	cpc r19,r21
	brsh .+2
	rjmp .L34
.LVL36:
	.loc 1 501 0
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	.loc 1 500 0
	ldi r19,0
	ldi r18,0
.LVL37:
.L35:
	.loc 1 515 0
	movw r30,r12
	ld r16,Z
	ldd r17,Z+1
.LVL38:
	.loc 1 517 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L33
.LVL39:
.LBB60:
	.loc 1 521 0
	movw r26,r16
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd r20,Z+2
	ldd r21,Z+3
	cp r20,r18
	cpc r21,r19
	breq .+2
	rjmp .L33
.LBB61:
.LBB62:
	.loc 1 534 0
	ldi r18,lo8(3)
	mov r14,r18
	mov r15,__zero_reg__
.LVL40:
.L38:
	.loc 1 531 0
	ld r18,X+
	ld r19,X
.LVL41:
	.loc 1 534 0
	movw r30,r18
	std Z+5,r15
	std Z+4,r14
.LVL42:
	.loc 1 535 0
	ld r26,Z
	ldd r27,Z+1
.LBE62:
	.loc 1 537 0
	sbiw r26,0
	breq .L37
	.loc 1 537 0 is_stmt 0 discriminator 1
	ld r22,X+
	ld r23,X
	sbiw r26,1
	.loc 1 536 0 is_stmt 1 discriminator 1
	movw r30,r22
	ldd r22,Z+2
	ldd r23,Z+3
	cp r20,r22
	cpc r21,r23
	breq .L38
.L37:
	movw r14,r24
	.loc 1 540 0
	movw r30,r18
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.LVL43:
	.loc 1 543 0
	movw r30,r12
	std Z+1,r27
	st Z,r26
.LVL44:
.LBB63:
.LBB64:
.LBB65:
.LBB66:
	.loc 1 264 0
	ldi r24,lo8(2)
	mov r12,r24
	mov r13,__zero_reg__
.LVL45:
.L48:
.LBE66:
.LBE65:
.LBE64:
	.loc 1 559 0 discriminator 1
	movw r26,r16
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld r10,Z
	ldd r11,Z+1
.LVL46:
.LBB77:
.LBB75:
.LBB67:
.LBB68:
	.loc 1 164 0 discriminator 1
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	.loc 1 165 0 discriminator 1
	adiw r26,12
	ld r24,X+
	ld r25,X
	sbiw r26,12+1
	cpi r24,1
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L40
	brlo .L41
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L42
	sbiw r24,3
	brne .+2
	rjmp .L43
.L39:
.LVL47:
.LBE68:
.LBE67:
	.loc 1 255 0
	movw r26,r16
	ld r30,X+
	ld r31,X
.LVL48:
	.loc 1 257 0
	ldd r24,Z+4
	ldd r25,Z+5
	sbiw r24,3
	brne .L46
.LVL49:
.LBB72:
	.loc 1 258 0
	ldd r20,Z+6
	ldd r21,Z+7
.LVL50:
	.loc 1 261 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L47
	.loc 1 264 0
	std Z+5,r13
	std Z+4,r12
	.loc 1 265 0
	movw r22,r16
	movw r24,r14
	call osEE_counter_insert_rel_trigger
.LVL51:
.L46:
	movw r16,r10
.LVL52:
.LBE72:
.LBE75:
.LBE77:
.LBE63:
	.loc 1 581 0 discriminator 1
	or r10,r11
	brne .L48
.LVL53:
.L33:
/* epilogue start */
.LBE61:
.LBE60:
.LBE59:
	.loc 1 589 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.LVL54:
.L34:
.LBB82:
	.loc 1 503 0
	subi r18,-1
	sbci r19,-1
	std Z+3,r19
	std Z+2,r18
.LVL55:
	rjmp .L35
.LVL56:
.L41:
.LBB81:
.LBB80:
.LBB79:
.LBB78:
.LBB76:
.LBB73:
.LBB71:
.LBB69:
	.loc 1 169 0
	movw r30,r16
	ldd r8,Z+6
	ldd r9,Z+7
.LVL57:
	.loc 1 171 0
	movw r24,r8
	call osEE_task_activated
.LVL58:
	std Y+2,r25
	std Y+1,r24
	.loc 1 172 0
	or r24,r25
	brne .L39
	.loc 1 173 0
	movw r22,r8
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_insert
.LVL59:
	rjmp .L39
.LVL60:
.L40:
.LBE69:
.LBB70:
	.loc 1 187 0
	adiw r26,10
	ld r22,X+
	ld r23,X
	sbiw r26,10+1
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	adiw r26,6
	ld r24,X+
	ld r25,X
	call osEE_task_event_set_mask
.LVL61:
	.loc 1 189 0
	sbiw r24,0
	brne .+2
	rjmp .L39
	.loc 1 191 0
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL62:
	call osEE_scheduler_task_unblocked
.LVL63:
	rjmp .L39
.L42:
.LBE70:
	.loc 1 197 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	call osEE_counter_increment
.LVL64:
	rjmp .L39
.L43:
	.loc 1 210 0
	adiw r26,4
	ld r30,X+
	ld r31,X
	icall
.LVL65:
	rjmp .L39
.LVL66:
.L47:
.LBE71:
.LBE73:
.LBB74:
	.loc 1 268 0
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	rjmp .L46
.LBE74:
.LBE76:
.LBE78:
.LBE79:
.LBE80:
.LBE81:
.LBE82:
	.cfi_endproc
.LFE70:
	.size	osEE_counter_increment, .-osEE_counter_increment
	.text
.Letext0:
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 4 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_platform_types.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_api_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_scheduler_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_kernel_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_hal_internal_types.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_get_kernel_and_core.h"
	.file 10 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12f0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF236
	.byte	0xc
	.long	.LASF237
	.long	.LASF238
	.long	.Ldebug_ranges0+0xd0
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
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
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
	.byte	0x4
	.byte	0x54
	.long	0x7e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x5b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x68
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x6d
	.long	0x5e
	.uleb128 0x7
	.byte	0x2
	.long	0xd5
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.long	.LASF17
	.byte	0x5
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF18
	.byte	0x5
	.byte	0x78
	.long	0xa3
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF20
	.byte	0x5
	.byte	0xf4
	.long	0x4c
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.word	0x13a
	.long	0xcf
	.uleb128 0xa
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.word	0x145
	.long	0x136
	.uleb128 0x6
	.long	.LASF22
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.uleb128 0x6
	.long	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.word	0x153
	.long	0x10f
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.word	0x157
	.long	0x136
	.uleb128 0xa
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.word	0x15d
	.long	0x181
	.uleb128 0x6
	.long	.LASF28
	.byte	0
	.uleb128 0x6
	.long	.LASF29
	.byte	0x1
	.uleb128 0x6
	.long	.LASF30
	.byte	0x2
	.uleb128 0x6
	.long	.LASF31
	.byte	0x3
	.uleb128 0x6
	.long	.LASF32
	.byte	0x4
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.word	0x16e
	.long	0x14e
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.word	0x17e
	.long	0x181
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.word	0x19e
	.long	0xb9
	.uleb128 0xb
	.long	0x199
	.uleb128 0xc
	.byte	0x6
	.byte	0x5
	.word	0x1b7
	.long	0x1e1
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.word	0x1b9
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.word	0x1bc
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.word	0x1c0
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.word	0x1c2
	.long	0x1aa
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.word	0x237
	.long	0xc4
	.uleb128 0xb
	.long	0x1ed
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.word	0x2a3
	.long	0xae
	.uleb128 0xa
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.word	0x2b1
	.long	0x2c7
	.uleb128 0x6
	.long	.LASF43
	.byte	0
	.uleb128 0x6
	.long	.LASF44
	.byte	0x1
	.uleb128 0x6
	.long	.LASF45
	.byte	0x2
	.uleb128 0x6
	.long	.LASF46
	.byte	0x3
	.uleb128 0x6
	.long	.LASF47
	.byte	0x4
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.uleb128 0x6
	.long	.LASF49
	.byte	0x6
	.uleb128 0x6
	.long	.LASF50
	.byte	0x7
	.uleb128 0x6
	.long	.LASF51
	.byte	0x8
	.uleb128 0x6
	.long	.LASF52
	.byte	0x9
	.uleb128 0x6
	.long	.LASF53
	.byte	0xa
	.uleb128 0x6
	.long	.LASF54
	.byte	0xb
	.uleb128 0x6
	.long	.LASF55
	.byte	0xc
	.uleb128 0x6
	.long	.LASF56
	.byte	0xd
	.uleb128 0x6
	.long	.LASF57
	.byte	0xe
	.uleb128 0x6
	.long	.LASF58
	.byte	0xf
	.uleb128 0x6
	.long	.LASF59
	.byte	0x10
	.uleb128 0x6
	.long	.LASF60
	.byte	0x11
	.uleb128 0x6
	.long	.LASF61
	.byte	0x12
	.uleb128 0x6
	.long	.LASF62
	.byte	0x13
	.uleb128 0x6
	.long	.LASF63
	.byte	0x14
	.uleb128 0x6
	.long	.LASF64
	.byte	0x15
	.uleb128 0x6
	.long	.LASF65
	.byte	0x16
	.uleb128 0x6
	.long	.LASF66
	.byte	0x17
	.uleb128 0x6
	.long	.LASF67
	.byte	0x18
	.uleb128 0x6
	.long	.LASF68
	.byte	0x19
	.uleb128 0x6
	.long	.LASF69
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF70
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF71
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0x5
	.word	0x2d4
	.long	0x20a
	.uleb128 0x9
	.long	.LASF73
	.byte	0x5
	.word	0x2d9
	.long	0x2c7
	.uleb128 0xe
	.long	.LASF76
	.byte	0x4
	.byte	0x6
	.byte	0x4b
	.long	0x308
	.uleb128 0xf
	.long	.LASF74
	.byte	0x6
	.byte	0x4d
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF75
	.byte	0x6
	.byte	0x4f
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x2df
	.uleb128 0x10
	.long	.LASF77
	.byte	0xe
	.byte	0x7
	.word	0x108
	.long	0x394
	.uleb128 0x11
	.string	"hdb"
	.byte	0x7
	.word	0x10b
	.long	0x57a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF78
	.byte	0x7
	.word	0x10e
	.long	0x6dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"tid"
	.byte	0x7
	.word	0x110
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF79
	.byte	0x7
	.word	0x112
	.long	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xd
	.long	.LASF80
	.byte	0x7
	.word	0x114
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.long	.LASF81
	.byte	0x7
	.word	0x117
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xd
	.long	.LASF82
	.byte	0x7
	.word	0x11a
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF83
	.byte	0x7
	.word	0x11c
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xb
	.long	0x30e
	.uleb128 0x7
	.byte	0x2
	.long	0x394
	.uleb128 0x4
	.long	.LASF84
	.byte	0x6
	.byte	0x50
	.long	0x2df
	.uleb128 0x4
	.long	.LASF85
	.byte	0x6
	.byte	0xd5
	.long	0x3b5
	.uleb128 0x7
	.byte	0x2
	.long	0x39f
	.uleb128 0xe
	.long	.LASF86
	.byte	0x14
	.byte	0x8
	.byte	0x43
	.long	0x4ca
	.uleb128 0x12
	.string	"r29"
	.byte	0x8
	.byte	0x44
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"r28"
	.byte	0x8
	.byte	0x45
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"r17"
	.byte	0x8
	.byte	0x46
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"r16"
	.byte	0x8
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.string	"r15"
	.byte	0x8
	.byte	0x48
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"r14"
	.byte	0x8
	.byte	0x49
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x12
	.string	"r13"
	.byte	0x8
	.byte	0x4a
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.string	"r12"
	.byte	0x8
	.byte	0x4b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x12
	.string	"r11"
	.byte	0x8
	.byte	0x4c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"r10"
	.byte	0x8
	.byte	0x4d
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.string	"r9"
	.byte	0x8
	.byte	0x4e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.string	"r8"
	.byte	0x8
	.byte	0x4f
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x12
	.string	"r7"
	.byte	0x8
	.byte	0x50
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"r6"
	.byte	0x8
	.byte	0x51
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"r5"
	.byte	0x8
	.byte	0x52
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"r4"
	.byte	0x8
	.byte	0x53
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x12
	.string	"r3"
	.byte	0x8
	.byte	0x54
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"r2"
	.byte	0x8
	.byte	0x55
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.byte	0x56
	.long	0x4ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3bb
	.uleb128 0x4
	.long	.LASF88
	.byte	0x8
	.byte	0x57
	.long	0x3bb
	.uleb128 0xe
	.long	.LASF89
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.long	0x4f6
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.byte	0x5b
	.long	0x4f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4d0
	.uleb128 0x4
	.long	.LASF91
	.byte	0x8
	.byte	0x5c
	.long	0x4db
	.uleb128 0xe
	.long	.LASF92
	.byte	0x4
	.byte	0x8
	.byte	0x5e
	.long	0x530
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.byte	0x5f
	.long	0x4f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF94
	.byte	0x8
	.byte	0x60
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x507
	.uleb128 0x4
	.long	.LASF95
	.byte	0x8
	.byte	0x61
	.long	0x530
	.uleb128 0xe
	.long	.LASF96
	.byte	0x4
	.byte	0x8
	.byte	0x63
	.long	0x569
	.uleb128 0xf
	.long	.LASF97
	.byte	0x8
	.byte	0x64
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.byte	0x65
	.long	0x574
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x540
	.uleb128 0x7
	.byte	0x2
	.long	0x535
	.uleb128 0x7
	.byte	0x2
	.long	0x4fc
	.uleb128 0x4
	.long	.LASF99
	.byte	0x8
	.byte	0x69
	.long	0x569
	.uleb128 0x4
	.long	.LASF100
	.byte	0x7
	.byte	0x51
	.long	0xcf
	.uleb128 0x4
	.long	.LASF101
	.byte	0x7
	.byte	0x53
	.long	0x4c
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0x73
	.long	0x5c1
	.uleb128 0x6
	.long	.LASF102
	.byte	0
	.uleb128 0x6
	.long	.LASF103
	.byte	0x1
	.uleb128 0x6
	.long	.LASF104
	.byte	0x2
	.uleb128 0x6
	.long	.LASF105
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF106
	.byte	0x7
	.byte	0x7d
	.long	0x59b
	.uleb128 0x13
	.long	0x5c1
	.uleb128 0x14
	.byte	0x5
	.byte	0x7
	.byte	0x90
	.long	0x604
	.uleb128 0xf
	.long	.LASF74
	.byte	0x7
	.byte	0x94
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF107
	.byte	0x7
	.byte	0x97
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF108
	.byte	0x7
	.byte	0x9a
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF109
	.byte	0x3
	.byte	0x7
	.byte	0xb5
	.long	0x62d
	.uleb128 0xf
	.long	.LASF110
	.byte	0x7
	.byte	0xb7
	.long	0x643
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF111
	.byte	0x7
	.byte	0xc3
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x604
	.uleb128 0x7
	.byte	0x2
	.long	0x62d
	.uleb128 0x4
	.long	.LASF112
	.byte	0x7
	.byte	0x9b
	.long	0x5d1
	.uleb128 0x7
	.byte	0x2
	.long	0x638
	.uleb128 0x4
	.long	.LASF113
	.byte	0x7
	.byte	0xce
	.long	0x62d
	.uleb128 0x4
	.long	.LASF114
	.byte	0x7
	.byte	0xd2
	.long	0x649
	.uleb128 0x14
	.byte	0xc
	.byte	0x7
	.byte	0xe0
	.long	0x6ca
	.uleb128 0xf
	.long	.LASF115
	.byte	0x7
	.byte	0xe4
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF116
	.byte	0x7
	.byte	0xea
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.long	.LASF117
	.byte	0x7
	.byte	0xec
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF118
	.byte	0x7
	.byte	0xef
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF119
	.byte	0x7
	.byte	0xf3
	.long	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF120
	.byte	0x7
	.byte	0xf5
	.long	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF121
	.byte	0x7
	.byte	0xfb
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x649
	.uleb128 0x9
	.long	.LASF122
	.byte	0x7
	.word	0x101
	.long	0x65f
	.uleb128 0x7
	.byte	0x2
	.long	0x6d0
	.uleb128 0x9
	.long	.LASF123
	.byte	0x7
	.word	0x122
	.long	0x394
	.uleb128 0x7
	.byte	0x2
	.long	0x6e2
	.uleb128 0xb
	.long	0x6ee
	.uleb128 0x9
	.long	.LASF124
	.byte	0x7
	.word	0x151
	.long	0x705
	.uleb128 0x7
	.byte	0x2
	.long	0x746
	.uleb128 0x10
	.long	.LASF125
	.byte	0xe
	.byte	0x7
	.word	0x269
	.long	0x746
	.uleb128 0xd
	.long	.LASF126
	.byte	0x7
	.word	0x26b
	.long	0x91f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF127
	.byte	0x7
	.word	0x26d
	.long	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF128
	.byte	0x7
	.word	0x27b
	.long	0x883
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.long	0x70b
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.word	0x155
	.long	0x773
	.uleb128 0xd
	.long	.LASF129
	.byte	0x7
	.word	0x157
	.long	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF130
	.byte	0x7
	.word	0x159
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF131
	.byte	0x7
	.word	0x15e
	.long	0x74b
	.uleb128 0xb
	.long	0x773
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.word	0x16f
	.long	0x7ac
	.uleb128 0xd
	.long	.LASF132
	.byte	0x7
	.word	0x171
	.long	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x7
	.word	0x177
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x784
	.uleb128 0x7
	.byte	0x2
	.long	0x773
	.uleb128 0xb
	.long	0x7b1
	.uleb128 0x9
	.long	.LASF134
	.byte	0x7
	.word	0x17c
	.long	0x7ac
	.uleb128 0xa
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.word	0x17f
	.long	0x7ef
	.uleb128 0x6
	.long	.LASF135
	.byte	0
	.uleb128 0x6
	.long	.LASF136
	.byte	0x1
	.uleb128 0x6
	.long	.LASF137
	.byte	0x2
	.uleb128 0x6
	.long	.LASF138
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF139
	.byte	0x7
	.word	0x184
	.long	0x7c8
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.word	0x189
	.long	0x83f
	.uleb128 0x11
	.string	"f"
	.byte	0x7
	.word	0x18b
	.long	0x585
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF75
	.byte	0x7
	.word	0x18d
	.long	0x6ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF127
	.byte	0x7
	.word	0x18f
	.long	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF140
	.byte	0x7
	.word	0x192
	.long	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7bc
	.uleb128 0xb
	.long	0x83f
	.uleb128 0x9
	.long	.LASF141
	.byte	0x7
	.word	0x194
	.long	0x7fb
	.uleb128 0xc
	.byte	0xa
	.byte	0x7
	.word	0x198
	.long	0x87e
	.uleb128 0xd
	.long	.LASF142
	.byte	0x7
	.word	0x19a
	.long	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF143
	.byte	0x7
	.word	0x19c
	.long	0x7ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.long	0x856
	.uleb128 0x9
	.long	.LASF144
	.byte	0x7
	.word	0x19d
	.long	0x87e
	.uleb128 0xa
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.word	0x22b
	.long	0x8bc
	.uleb128 0x6
	.long	.LASF145
	.byte	0
	.uleb128 0x6
	.long	.LASF146
	.byte	0x1
	.uleb128 0x6
	.long	.LASF147
	.byte	0x2
	.uleb128 0x6
	.long	.LASF148
	.byte	0x3
	.uleb128 0x6
	.long	.LASF149
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF150
	.byte	0x7
	.word	0x231
	.long	0x88f
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.word	0x242
	.long	0x90e
	.uleb128 0xd
	.long	.LASF74
	.byte	0x7
	.word	0x244
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF151
	.byte	0x7
	.word	0x247
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF117
	.byte	0x7
	.word	0x249
	.long	0x8bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF152
	.byte	0x7
	.word	0x24d
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.long	.LASF153
	.byte	0x7
	.word	0x25e
	.long	0x8c8
	.uleb128 0xb
	.long	0x90e
	.uleb128 0x7
	.byte	0x2
	.long	0x90e
	.uleb128 0xb
	.long	0x91f
	.uleb128 0x9
	.long	.LASF154
	.byte	0x7
	.word	0x290
	.long	0x746
	.uleb128 0x9
	.long	.LASF155
	.byte	0x7
	.word	0x294
	.long	0x90e
	.uleb128 0x9
	.long	.LASF156
	.byte	0x7
	.word	0x295
	.long	0x92a
	.uleb128 0xc
	.byte	0x6
	.byte	0x7
	.word	0x2a9
	.long	0x985
	.uleb128 0xd
	.long	.LASF157
	.byte	0x7
	.word	0x2ad
	.long	0x98a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF158
	.byte	0x7
	.word	0x2af
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF159
	.byte	0x7
	.word	0x2b2
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.long	0x94e
	.uleb128 0x7
	.byte	0x2
	.long	0x92a
	.uleb128 0xb
	.long	0x98a
	.uleb128 0x9
	.long	.LASF160
	.byte	0x7
	.word	0x2b8
	.long	0x985
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.word	0x2bb
	.long	0x9c9
	.uleb128 0xd
	.long	.LASF161
	.byte	0x7
	.word	0x2bd
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x7
	.word	0x2bf
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x9a1
	.uleb128 0x15
	.long	0x995
	.long	0x9d9
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x9ce
	.uleb128 0x9
	.long	.LASF163
	.byte	0x7
	.word	0x2c0
	.long	0x9c9
	.uleb128 0x10
	.long	.LASF164
	.byte	0x4
	.byte	0x7
	.word	0x2c7
	.long	0xa17
	.uleb128 0xd
	.long	.LASF165
	.byte	0x7
	.word	0x2c9
	.long	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF166
	.byte	0x7
	.word	0x2cb
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x9eb
	.uleb128 0x15
	.long	0x6f4
	.long	0xa27
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xa1c
	.uleb128 0x9
	.long	.LASF167
	.byte	0x7
	.word	0x2cc
	.long	0xa17
	.uleb128 0xc
	.byte	0x12
	.byte	0x7
	.word	0x2d9
	.long	0xaf6
	.uleb128 0xd
	.long	.LASF168
	.byte	0x7
	.word	0x2dc
	.long	0x6ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"rq"
	.byte	0x7
	.word	0x2ee
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF169
	.byte	0x7
	.word	0x2f0
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF170
	.byte	0x7
	.word	0x2ff
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF171
	.byte	0x7
	.word	0x301
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF172
	.byte	0x7
	.word	0x305
	.long	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.long	.LASF173
	.byte	0x7
	.word	0x307
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xd
	.long	.LASF174
	.byte	0x7
	.word	0x327
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.long	.LASF175
	.byte	0x7
	.word	0x329
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.long	.LASF176
	.byte	0x7
	.word	0x32b
	.long	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xd
	.long	.LASF177
	.byte	0x7
	.word	0x32d
	.long	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF178
	.byte	0x7
	.word	0x330
	.long	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	.LASF179
	.byte	0x7
	.word	0x33a
	.long	0xa39
	.uleb128 0xc
	.byte	0x10
	.byte	0x7
	.word	0x344
	.long	0xb84
	.uleb128 0xd
	.long	.LASF180
	.byte	0x7
	.word	0x34a
	.long	0xb89
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF181
	.byte	0x7
	.word	0x351
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF182
	.byte	0x7
	.word	0x354
	.long	0x6ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF183
	.byte	0x7
	.word	0x358
	.long	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF184
	.byte	0x7
	.word	0x35c
	.long	0xb9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF185
	.byte	0x7
	.word	0x35e
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.long	.LASF186
	.byte	0x7
	.word	0x362
	.long	0xbab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF187
	.byte	0x7
	.word	0x364
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0xb
	.long	0xb02
	.uleb128 0x7
	.byte	0x2
	.long	0xaf6
	.uleb128 0x15
	.long	0xa2d
	.long	0xb9a
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb8f
	.uleb128 0x15
	.long	0x9df
	.long	0xbab
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xba0
	.uleb128 0x9
	.long	.LASF188
	.byte	0x7
	.word	0x36a
	.long	0xb84
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.word	0x36f
	.long	0xbd6
	.uleb128 0xd
	.long	.LASF189
	.byte	0x7
	.word	0x3b1
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF190
	.byte	0x7
	.word	0x3b3
	.long	0xbbd
	.uleb128 0xc
	.byte	0x12
	.byte	0x7
	.word	0x3c3
	.long	0xc73
	.uleb128 0xd
	.long	.LASF191
	.byte	0x7
	.word	0x3c5
	.long	0xc78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF165
	.byte	0x7
	.word	0x3d1
	.long	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF166
	.byte	0x7
	.word	0x3d4
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF192
	.byte	0x7
	.word	0x3e0
	.long	0xc94
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF193
	.byte	0x7
	.word	0x3e2
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF194
	.byte	0x7
	.word	0x3e6
	.long	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.long	.LASF195
	.byte	0x7
	.word	0x3e8
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF196
	.byte	0x7
	.word	0x3eb
	.long	0xcc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.long	.LASF197
	.byte	0x7
	.word	0x3ed
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.long	0xbe2
	.uleb128 0x7
	.byte	0x2
	.long	0xbd6
	.uleb128 0x15
	.long	0xc8f
	.long	0xc89
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x654
	.uleb128 0xb
	.long	0xc89
	.uleb128 0x7
	.byte	0x2
	.long	0xc7e
	.uleb128 0x15
	.long	0x845
	.long	0xca5
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc9a
	.uleb128 0x15
	.long	0xcbc
	.long	0xcb6
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x942
	.uleb128 0xb
	.long	0xcb6
	.uleb128 0x7
	.byte	0x2
	.long	0xcab
	.uleb128 0x9
	.long	.LASF198
	.byte	0x7
	.word	0x3fc
	.long	0xc73
	.uleb128 0x17
	.long	.LASF199
	.byte	0x9
	.byte	0x3f
	.long	0xcc7
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF200
	.byte	0x9
	.byte	0x40
	.long	0xbb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF201
	.byte	0x9
	.byte	0x41
	.long	0xbd6
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF202
	.byte	0x9
	.byte	0x42
	.long	0xaf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.word	0x1d1
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST22
	.byte	0x1
	.long	0xf1b
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.word	0x1d3
	.long	0x83f
	.long	.LLST23
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x1
	.word	0x1d7
	.long	0x7b7
	.long	.LLST24
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x1
	.word	0x1e9
	.long	0x199
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF204
	.byte	0x1
	.word	0x1ea
	.long	0x98a
	.long	.LLST26
	.uleb128 0x1c
	.long	.LASF210
	.byte	0x1
	.word	0x1ef
	.long	0xf21
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1a
	.long	.LASF205
	.byte	0x1
	.word	0x207
	.long	0xf26
	.long	.LLST27
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF206
	.byte	0x1
	.word	0x20c
	.long	0x98a
	.long	.LLST28
	.uleb128 0x1a
	.long	.LASF207
	.byte	0x1
	.word	0x20e
	.long	0x98a
	.long	.LLST29
	.uleb128 0x1d
	.long	.LBB62
	.long	.LBE62
	.long	0xdcb
	.uleb128 0x1a
	.long	.LASF208
	.byte	0x1
	.word	0x213
	.long	0x925
	.long	.LLST30
	.byte	0
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1a
	.long	.LASF209
	.byte	0x1
	.word	0x229
	.long	0x990
	.long	.LLST31
	.uleb128 0x1e
	.long	0xf31
	.long	.LBB64
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.word	0x23f
	.uleb128 0x1f
	.long	0xf49
	.long	.LLST32
	.uleb128 0x1f
	.long	0xf3e
	.long	.LLST33
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x20
	.long	0xf54
	.uleb128 0x21
	.long	0xf5f
	.long	.LLST34
	.uleb128 0x22
	.long	0xf6a
	.long	.Ldebug_ranges0+0x98
	.long	0xe4c
	.uleb128 0x21
	.long	0xf6b
	.long	.LLST35
	.uleb128 0x23
	.long	.LVL51
	.long	0x1114
	.uleb128 0x24
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
	.uleb128 0x24
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0xf79
	.long	.LBB67
	.long	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xf8
	.uleb128 0x1f
	.long	0xf8a
	.long	.LLST36
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0xb8
	.uleb128 0x26
	.long	0xf95
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x27
	.long	0xf9f
	.long	.LBB69
	.long	.LBE69
	.long	0xeba
	.uleb128 0x21
	.long	0xfa4
	.long	.LLST37
	.uleb128 0x28
	.long	.LVL58
	.long	0x12bf
	.long	0xea4
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	.LVL59
	.long	0x12cc
	.uleb128 0x24
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0xfb0
	.long	.LBB70
	.long	.LBE70
	.long	0xf09
	.uleb128 0x21
	.long	0xfb1
	.long	.LLST38
	.uleb128 0x21
	.long	0xfbc
	.long	.LLST39
	.uleb128 0x21
	.long	0xfc7
	.long	.LLST40
	.uleb128 0x28
	.long	.LVL61
	.long	0x12d9
	.long	0xeff
	.uleb128 0x24
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x29
	.long	.LVL63
	.long	0x12e6
	.byte	0
	.uleb128 0x29
	.long	.LVL64
	.long	0xd07
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xbb1
	.uleb128 0xb
	.long	0xf1b
	.uleb128 0x7
	.byte	0x2
	.long	0x91a
	.uleb128 0xb
	.long	0xf26
	.uleb128 0x2a
	.long	.LASF226
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.long	0xf79
	.uleb128 0x2b
	.long	.LASF127
	.byte	0x1
	.byte	0xf1
	.long	0x83f
	.uleb128 0x2b
	.long	.LASF209
	.byte	0x1
	.byte	0xf2
	.long	0x98a
	.uleb128 0x2c
	.long	.LASF210
	.byte	0x1
	.byte	0xf5
	.long	0xf1b
	.uleb128 0x2c
	.long	.LASF211
	.byte	0x1
	.byte	0xf6
	.long	0x91f
	.uleb128 0x2d
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x1
	.word	0x102
	.long	0x1a5
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF221
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	0x2d3
	.byte	0x1
	.long	0xfd4
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.byte	0xa1
	.long	0xfd4
	.uleb128 0x2f
	.string	"ev"
	.byte	0x1
	.byte	0xa4
	.long	0x2d3
	.uleb128 0x30
	.long	0xfb0
	.uleb128 0x2c
	.long	.LASF75
	.byte	0x1
	.byte	0xa9
	.long	0x6f4
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2c
	.long	.LASF213
	.byte	0x1
	.byte	0xb5
	.long	0x3b5
	.uleb128 0x2c
	.long	.LASF75
	.byte	0x1
	.byte	0xb7
	.long	0x6f4
	.uleb128 0x2c
	.long	.LASF140
	.byte	0x1
	.byte	0xb9
	.long	0x1f9
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x883
	.uleb128 0x31
	.byte	0x1
	.long	.LASF215
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST17
	.byte	0x1
	.long	0x105f
	.uleb128 0x32
	.long	.LASF127
	.byte	0x1
	.byte	0x81
	.long	0x83f
	.long	.LLST18
	.uleb128 0x33
	.long	.LASF157
	.byte	0x1
	.byte	0x82
	.long	0x98a
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x34
	.long	.LASF132
	.byte	0x1
	.byte	0x86
	.long	0x7b7
	.long	.LLST19
	.uleb128 0x34
	.long	.LASF126
	.byte	0x1
	.byte	0x88
	.long	0xf2c
	.long	.LLST20
	.uleb128 0x35
	.long	.LASF206
	.byte	0x1
	.byte	0x8a
	.long	0x98a
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x36
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x34
	.long	.LASF207
	.byte	0x1
	.byte	0x90
	.long	0x98a
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF216
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST0
	.byte	0x1
	.long	0x1114
	.uleb128 0x32
	.long	.LASF127
	.byte	0x1
	.byte	0x47
	.long	0x83f
	.long	.LLST1
	.uleb128 0x33
	.long	.LASF157
	.byte	0x1
	.byte	0x48
	.long	0x98a
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF151
	.byte	0x1
	.byte	0x49
	.long	0x199
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x34
	.long	.LASF132
	.byte	0x1
	.byte	0x4d
	.long	0x7b7
	.long	.LLST2
	.uleb128 0x34
	.long	.LASF207
	.byte	0x1
	.byte	0x4f
	.long	0x98a
	.long	.LLST3
	.uleb128 0x34
	.long	.LASF206
	.byte	0x1
	.byte	0x51
	.long	0x98a
	.long	.LLST4
	.uleb128 0x35
	.long	.LASF203
	.byte	0x1
	.byte	0x53
	.long	0x1a5
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x34
	.long	.LASF217
	.byte	0x1
	.byte	0x55
	.long	0x98
	.long	.LLST5
	.uleb128 0x36
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x34
	.long	.LASF218
	.byte	0x1
	.byte	0x5b
	.long	0x1a5
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF219
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST7
	.byte	0x1
	.long	0x11b6
	.uleb128 0x32
	.long	.LASF127
	.byte	0x1
	.byte	0x3b
	.long	0x83f
	.long	.LLST8
	.uleb128 0x32
	.long	.LASF157
	.byte	0x1
	.byte	0x3c
	.long	0x98a
	.long	.LLST9
	.uleb128 0x32
	.long	.LASF220
	.byte	0x1
	.byte	0x3d
	.long	0x199
	.long	.LLST10
	.uleb128 0x37
	.long	0x11fa
	.long	.LBB40
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x40
	.long	0x11ab
	.uleb128 0x1f
	.long	0x1218
	.long	.LLST11
	.uleb128 0x1f
	.long	0x120c
	.long	.LLST12
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	0x1224
	.long	.LLST13
	.uleb128 0x21
	.long	0x1230
	.long	.LLST14
	.uleb128 0x21
	.long	0x123c
	.long	.LLST15
	.uleb128 0x21
	.long	0x1248
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL21
	.byte	0x1
	.long	0x105f
	.byte	0
	.uleb128 0x39
	.long	.LASF222
	.byte	0x2
	.word	0x383
	.byte	0x1
	.long	0xcb6
	.byte	0x3
	.long	0x11d5
	.uleb128 0x3a
	.long	.LASF157
	.byte	0x2
	.word	0x385
	.long	0x98a
	.byte	0
	.uleb128 0x39
	.long	.LASF223
	.byte	0x2
	.word	0x376
	.byte	0x1
	.long	0x11f4
	.byte	0x3
	.long	0x11f4
	.uleb128 0x3a
	.long	.LASF224
	.byte	0x2
	.word	0x378
	.long	0xcb6
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x936
	.uleb128 0x39
	.long	.LASF225
	.byte	0x2
	.word	0x30b
	.byte	0x1
	.long	0x199
	.byte	0x3
	.long	0x1255
	.uleb128 0x3a
	.long	.LASF127
	.byte	0x2
	.word	0x30d
	.long	0x83f
	.uleb128 0x3a
	.long	.LASF220
	.byte	0x2
	.word	0x30e
	.long	0x199
	.uleb128 0x1c
	.long	.LASF151
	.byte	0x2
	.word	0x311
	.long	0x199
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x2
	.word	0x313
	.long	0x125b
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x2
	.word	0x315
	.long	0x1a5
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x2
	.word	0x317
	.long	0x1a5
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x77f
	.uleb128 0xb
	.long	0x1255
	.uleb128 0x2a
	.long	.LASF227
	.byte	0x9
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.long	0x1279
	.uleb128 0x2b
	.long	.LASF210
	.byte	0x9
	.byte	0x7a
	.long	0xf21
	.byte	0
	.uleb128 0x3b
	.long	.LASF229
	.byte	0x9
	.byte	0x72
	.byte	0x1
	.long	0xf1b
	.byte	0x3
	.uleb128 0x2a
	.long	.LASF228
	.byte	0x9
	.byte	0x69
	.byte	0x1
	.byte	0x3
	.long	0x129f
	.uleb128 0x2b
	.long	.LASF210
	.byte	0x9
	.byte	0x69
	.long	0xf21
	.byte	0
	.uleb128 0x3b
	.long	.LASF230
	.byte	0x9
	.byte	0x54
	.byte	0x1
	.long	0x12ac
	.byte	0x3
	.uleb128 0x7
	.byte	0x2
	.long	0xcc7
	.uleb128 0x3b
	.long	.LASF231
	.byte	0x9
	.byte	0x4b
	.byte	0x1
	.long	0xf1b
	.byte	0x3
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF232
	.long	.LASF232
	.byte	0x2
	.byte	0xb0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF233
	.long	.LASF233
	.byte	0xa
	.byte	0x7e
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF234
	.long	.LASF234
	.byte	0x2
	.byte	0xc6
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF235
	.long	.LASF235
	.byte	0xa
	.byte	0x94
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2116
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
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
.LLST22:
	.long	.LFB70
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI27
	.long	.LFE70
	.word	0x2
	.byte	0x8c
	.sleb128 16
	.long	0
	.long	0
.LLST23:
	.long	.LVL34
	.long	.LVL45
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL45
	.long	.LVL53
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL54
	.long	.LVL56
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE70
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL35
	.long	.LVL45
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LVL56
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL36
	.long	.LVL37
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL40
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL56
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LVL38
	.long	.LVL46
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LVL53
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE70
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST27:
	.long	.LVL39
	.long	.LVL45
	.word	0x2
	.byte	0x80
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LVL40
	.long	.LVL42
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43
	.word	0x2
	.byte	0x82
	.sleb128 0
	.long	.LVL43
	.long	.LVL45
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
	.long	.LVL41
	.long	.LVL42
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43
	.word	0x2
	.byte	0x82
	.sleb128 0
	.long	.LVL43
	.long	.LVL45
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
	.long	.LVL41
	.long	.LVL45
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST31:
	.long	.LVL45
	.long	.LVL52
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE70
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL46
	.long	.LVL51
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE70
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LVL46
	.long	.LVL51
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE70
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST34:
	.long	.LVL48
	.long	.LVL51-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LFE70
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST35:
	.long	.LVL50
	.long	.LVL51-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LFE70
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST36:
	.long	.LVL46
	.long	.LVL47
	.word	0x3
	.byte	0x80
	.sleb128 4
	.byte	0x9f
	.long	.LVL56
	.long	.LVL66
	.word	0x3
	.byte	0x80
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL57
	.long	.LVL60
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST38:
	.long	.LVL61
	.long	.LVL62
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL62
	.long	.LVL63-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST39:
	.long	.LVL60
	.long	.LVL61-1
	.word	0x2
	.byte	0x80
	.sleb128 6
	.long	0
	.long	0
.LLST40:
	.long	.LVL60
	.long	.LVL61-1
	.word	0x2
	.byte	0x80
	.sleb128 10
	.long	0
	.long	0
.LLST17:
	.long	.LFB67
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LFE67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST18:
	.long	.LVL25
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
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL30
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE67
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL26
	.long	.LVL28
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL29
	.long	.LVL30
	.word	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.long	.LVL30
	.long	.LVL32
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL32
	.long	.LFE67
	.word	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.long	0
	.long	0
.LLST20:
	.long	.LVL27
	.long	.LVL33
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LFE67
	.word	0x2
	.byte	0x86
	.sleb128 0
	.long	0
	.long	0
.LLST21:
	.long	.LVL30
	.long	.LVL31
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
	.long	.LFB66
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
	.long	.LFE66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
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
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL7
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8
	.word	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.long	.LVL8
	.long	.LFE66
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
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
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
.LLST4:
	.long	.LVL2
	.long	.LVL10
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL12
	.word	0x2
	.byte	0x80
	.sleb128 0
	.long	.LVL12
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
.LLST5:
	.long	.LVL3
	.long	.LVL5
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL5
	.long	.LVL13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LFE66
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL14
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LFB65
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL21-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LVL21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL21
	.long	.LFE65
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL21-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LVL21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL21
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
.LLST10:
	.long	.LVL16
	.long	.LVL20
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL23
	.word	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.long	.LVL23
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL23
	.word	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.long	.LVL23
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE65
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
	.long	.LVL24
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
.LLST14:
	.long	.LVL17
	.long	.LVL20
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL21
	.long	.LFE65
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LVL18
	.long	.LVL20
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
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
.LLST16:
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
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
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB70
	.long	.LFE70-.LFB70
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB40
	.long	.LBE40
	.long	.LBB43
	.long	.LBE43
	.long	0
	.long	0
	.long	.LBB59
	.long	.LBE59
	.long	.LBB82
	.long	.LBE82
	.long	0
	.long	0
	.long	.LBB60
	.long	.LBE60
	.long	.LBB81
	.long	.LBE81
	.long	0
	.long	0
	.long	.LBB61
	.long	.LBE61
	.long	.LBB80
	.long	.LBE80
	.long	0
	.long	0
	.long	.LBB63
	.long	.LBE63
	.long	.LBB79
	.long	.LBE79
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB77
	.long	.LBE77
	.long	.LBB78
	.long	.LBE78
	.long	0
	.long	0
	.long	.LBB66
	.long	.LBE66
	.long	.LBB72
	.long	.LBE72
	.long	.LBB74
	.long	.LBE74
	.long	0
	.long	0
	.long	.LBB67
	.long	.LBE67
	.long	.LBB73
	.long	.LBE73
	.long	0
	.long	0
	.long	.LFB66
	.long	.LFE66
	.long	.LFB65
	.long	.LFE65
	.long	.LFB67
	.long	.LFE67
	.long	.LFB70
	.long	.LFE70
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF138:
	.string	"OSEE_ACTION_CALLBACK"
.LASF16:
	.string	"OsEE_event_mask"
.LASF196:
	.string	"p_alarm_ptr_array"
.LASF101:
	.string	"OsEE_byte"
.LASF135:
	.string	"OSEE_ACTION_TASK"
.LASF170:
	.string	"p_stk_sn"
.LASF36:
	.string	"TickType"
.LASF172:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF163:
	.string	"OsEE_autostart_trigger"
.LASF123:
	.string	"OsEE_TDB"
.LASF237:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_oo_counter.c"
.LASF60:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF143:
	.string	"type"
.LASF193:
	.string	"res_array_size"
.LASF198:
	.string	"OsEE_KDB"
.LASF25:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF233:
	.string	"osEE_scheduler_task_insert"
.LASF9:
	.string	"long long unsigned int"
.LASF73:
	.string	"StatusType"
.LASF34:
	.string	"OsEE_task_status"
.LASF91:
	.string	"OsEE_SCB"
.LASF220:
	.string	"delta"
.LASF28:
	.string	"OSEE_TASK_SUSPENDED"
.LASF24:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF188:
	.string	"OsEE_CDB"
.LASF79:
	.string	"task_type"
.LASF37:
	.string	"maxallowedvalue"
.LASF199:
	.string	"osEE_kdb_var"
.LASF169:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF22:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF187:
	.string	"autostart_trigger_array_size"
.LASF218:
	.string	"current_when"
.LASF112:
	.string	"OsEE_MCB"
.LASF59:
	.string	"E_OS_PROTECTION_TIME"
.LASF71:
	.string	"E_OS_SYS_ACT"
.LASF182:
	.string	"p_idle_task"
.LASF26:
	.string	"OsEE_task_type"
.LASF110:
	.string	"p_cb"
.LASF19:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF192:
	.string	"p_res_ptr_array"
.LASF149:
	.string	"OSEE_TRIGGER_REENABLED"
.LASF134:
	.string	"OsEE_CounterDB"
.LASF227:
	.string	"osEE_unlock_core"
.LASF66:
	.string	"E_OS_CORE"
.LASF44:
	.string	"E_OS_ACCESS"
.LASF99:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF106:
	.string	"OsEE_kernel_status"
.LASF95:
	.string	"OsEE_SDB"
.LASF43:
	.string	"E_OK"
.LASF90:
	.string	"p_tos"
.LASF159:
	.string	"second_tick_parameter"
.LASF158:
	.string	"first_tick_parameter"
.LASF234:
	.string	"osEE_task_event_set_mask"
.LASF46:
	.string	"E_OS_ID"
.LASF81:
	.string	"ready_prio"
.LASF42:
	.string	"MemSize"
.LASF39:
	.string	"mincycle"
.LASF103:
	.string	"OSEE_KERNEL_STARTING"
.LASF222:
	.string	"osEE_trigger_get_alarm_db"
.LASF189:
	.string	"dummy"
.LASF61:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF80:
	.string	"task_func"
.LASF130:
	.string	"value"
.LASF83:
	.string	"max_num_of_act"
.LASF113:
	.string	"OsEE_MDB"
.LASF118:
	.string	"p_last_m"
.LASF161:
	.string	"p_trigger_ptr_array"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"AlarmBaseType"
.LASF124:
	.string	"OsEE_TriggerQ"
.LASF136:
	.string	"OSEE_ACTION_EVENT"
.LASF11:
	.string	"OSEE_TRUE"
.LASF132:
	.string	"p_counter_cb"
.LASF8:
	.string	"long unsigned int"
.LASF153:
	.string	"OsEE_TriggerCB"
.LASF155:
	.string	"OsEE_AlarmCB"
.LASF58:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF207:
	.string	"p_previous"
.LASF191:
	.string	"p_kcb"
.LASF151:
	.string	"when"
.LASF21:
	.string	"TaskFunc"
.LASF18:
	.string	"TaskType"
.LASF144:
	.string	"OsEE_action"
.LASF147:
	.string	"OSEE_TRIGGER_ACTIVE"
.LASF171:
	.string	"os_status"
.LASF17:
	.string	"AppModeType"
.LASF77:
	.string	"OsEE_TDB_tag"
.LASF89:
	.string	"OsEE_SCB_tag"
.LASF33:
	.string	"OSEE_TASK_CHAINED"
.LASF230:
	.string	"osEE_get_kernel"
.LASF85:
	.string	"OsEE_RQ"
.LASF179:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF181:
	.string	"p_idle_hook"
.LASF174:
	.string	"prev_s_isr_all_status"
.LASF194:
	.string	"p_counter_ptr_array"
.LASF195:
	.string	"counter_array_size"
.LASF197:
	.string	"alarm_array_size"
.LASF177:
	.string	"s_isr_os_cnt"
.LASF50:
	.string	"E_OS_STATE"
.LASF31:
	.string	"OSEE_TASK_WAITING"
.LASF127:
	.string	"p_counter_db"
.LASF178:
	.string	"d_isr_all_cnt"
.LASF212:
	.string	"p_action"
.LASF168:
	.string	"p_curr"
.LASF105:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF69:
	.string	"E_OS_SYS_TASK"
.LASF109:
	.string	"OsEE_MDB_tag"
.LASF137:
	.string	"OSEE_ACTION_COUNTER"
.LASF209:
	.string	"p_trigger_to_be_handled_db"
.LASF2:
	.string	"long double"
.LASF114:
	.string	"OsEE_ResourceDB"
.LASF167:
	.string	"OsEE_autostart_tdb"
.LASF128:
	.string	"action"
.LASF108:
	.string	"p_owner"
.LASF20:
	.string	"TaskActivation"
.LASF15:
	.string	"OsEE_tick_type"
.LASF162:
	.string	"trigger_array_size"
.LASF57:
	.string	"E_OS_PARAM_POINTER"
.LASF107:
	.string	"prev_prio"
.LASF120:
	.string	"event_mask"
.LASF93:
	.string	"p_bos"
.LASF55:
	.string	"E_OS_DISABLEDINT"
.LASF190:
	.string	"OsEE_KCB"
.LASF84:
	.string	"OsEE_SN"
.LASF54:
	.string	"E_OS_MISSINGEND"
.LASF111:
	.string	"prio"
.LASF238:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF38:
	.string	"ticksperbase"
.LASF146:
	.string	"OSEE_TRIGGER_CANCELED"
.LASF12:
	.string	"OsEE_bool"
.LASF30:
	.string	"OSEE_TASK_READY_STACKED"
.LASF51:
	.string	"E_OS_VALUE"
.LASF92:
	.string	"OsEE_SDB_tag"
.LASF206:
	.string	"p_current"
.LASF156:
	.string	"OsEE_AlarmDB"
.LASF208:
	.string	"p_current_cb"
.LASF231:
	.string	"osEE_get_curr_core"
.LASF115:
	.string	"current_num_of_act"
.LASF183:
	.string	"p_sys_counter_db"
.LASF214:
	.string	"osEE_counter_increment"
.LASF225:
	.string	"osEE_counter_eval_when"
.LASF78:
	.string	"p_tcb"
.LASF235:
	.string	"osEE_scheduler_task_unblocked"
.LASF4:
	.string	"unsigned char"
.LASF62:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF205:
	.string	"p_triggered_cb"
.LASF86:
	.string	"OsEE_CTX_tag"
.LASF70:
	.string	"E_OS_SYS_STACK"
.LASF104:
	.string	"OSEE_KERNEL_STARTED"
.LASF125:
	.string	"OsEE_TriggerDB_tag"
.LASF204:
	.string	"p_triggered_db"
.LASF133:
	.string	"info"
.LASF64:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF65:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF165:
	.string	"p_tdb_ptr_array"
.LASF74:
	.string	"p_next"
.LASF29:
	.string	"OSEE_TASK_READY"
.LASF47:
	.string	"E_OS_LIMIT"
.LASF221:
	.string	"osEE_handle_action"
.LASF217:
	.string	"work_not_done"
.LASF150:
	.string	"OsEE_trigger_status"
.LASF119:
	.string	"wait_mask"
.LASF180:
	.string	"p_ccb"
.LASF201:
	.string	"osEE_kcb_var"
.LASF200:
	.string	"osEE_cdb_var"
.LASF154:
	.string	"OsEE_TriggerDB"
.LASF164:
	.string	"OsEE_autostart_tdb_tag"
.LASF23:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF100:
	.string	"OsEE_kernel_cb"
.LASF175:
	.string	"prev_s_isr_os_status"
.LASF173:
	.string	"last_error"
.LASF76:
	.string	"OsEE_SN_tag"
.LASF228:
	.string	"osEE_lock_core"
.LASF116:
	.string	"current_prio"
.LASF67:
	.string	"E_OS_SYS_INIT"
.LASF129:
	.string	"trigger_queue"
.LASF72:
	.string	"OsEE_status_type"
.LASF75:
	.string	"p_tdb"
.LASF102:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF53:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF224:
	.string	"p_alarm_db"
.LASF232:
	.string	"osEE_task_activated"
.LASF186:
	.string	"p_autostart_trigger_array"
.LASF14:
	.string	"OsEE_mem_size"
.LASF126:
	.string	"p_trigger_cb"
.LASF121:
	.string	"p_own_sn"
.LASF141:
	.string	"OsEE_action_param"
.LASF211:
	.string	"p_trigger_to_be_handled_cb"
.LASF157:
	.string	"p_trigger_db"
.LASF223:
	.string	"osEE_alarm_get_cb"
.LASF98:
	.string	"p_scb"
.LASF35:
	.string	"TaskStateType"
.LASF142:
	.string	"param"
.LASF215:
	.string	"osEE_counter_cancel_trigger"
.LASF145:
	.string	"OSEE_TRIGGER_INACTIVE"
.LASF210:
	.string	"p_cdb"
.LASF49:
	.string	"E_OS_RESOURCE"
.LASF216:
	.string	"osEE_counter_insert_abs_trigger"
.LASF166:
	.string	"tdb_array_size"
.LASF176:
	.string	"s_isr_all_cnt"
.LASF152:
	.string	"cycle"
.LASF213:
	.string	"p_sn"
.LASF140:
	.string	"mask"
.LASF117:
	.string	"status"
.LASF68:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF236:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF82:
	.string	"dispatch_prio"
.LASF219:
	.string	"osEE_counter_insert_rel_trigger"
.LASF5:
	.string	"uint8_t"
.LASF229:
	.string	"osEE_lock_and_get_curr_core"
.LASF52:
	.string	"E_OS_SERVICEID"
.LASF94:
	.string	"stack_size"
.LASF148:
	.string	"OSEE_TRIGGER_EXPIRED"
.LASF122:
	.string	"OsEE_TCB"
.LASF185:
	.string	"autostart_tdb_array_size"
.LASF96:
	.string	"OsEE_HDB_tag"
.LASF131:
	.string	"OsEE_CounterCB"
.LASF48:
	.string	"E_OS_NOFUNC"
.LASF97:
	.string	"p_sdb"
.LASF45:
	.string	"E_OS_CALLEVEL"
.LASF27:
	.string	"TaskExecutionType"
.LASF32:
	.string	"OSEE_TASK_RUNNING"
.LASF203:
	.string	"counter_value"
.LASF160:
	.string	"OsEE_autostart_trigger_info"
.LASF41:
	.string	"EventMaskType"
.LASF202:
	.string	"osEE_ccb_var"
.LASF139:
	.string	"OsEE_action_type"
.LASF56:
	.string	"E_OS_STACKFAULT"
.LASF184:
	.string	"p_autostart_tdb_array"
.LASF226:
	.string	"osEE_counter_handle_alarm"
.LASF87:
	.string	"p_ctx"
.LASF63:
	.string	"E_OS_SPINLOCK"
.LASF88:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
