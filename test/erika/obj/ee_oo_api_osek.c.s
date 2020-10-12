	.file	"ee_oo_api_osek.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DisableAllInterrupts,"ax",@progbits
.global	DisableAllInterrupts
	.type	DisableAllInterrupts, @function
DisableAllInterrupts:
.LFB56:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_api_osek.c"
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 66 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LBB393:
.LBB394:
	.file 2 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_hal_internal.h"
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBE394:
.LBE393:
	.loc 1 73 0
	ldi r24,lo8(1)
	std Z+17,r24
.LVL1:
/* epilogue start */
	.loc 1 76 0
	ret
	.cfi_endproc
.LFE56:
	.size	DisableAllInterrupts, .-DisableAllInterrupts
	.section	.text.EnableAllInterrupts,"ax",@progbits
.global	EnableAllInterrupts
	.type	EnableAllInterrupts, @function
EnableAllInterrupts:
.LFB57:
	.loc 1 83 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 90 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL2:
	.loc 1 96 0
	ldd r24,Z+17
	tst r24
	breq .L2
	.loc 1 97 0
	std Z+17,__zero_reg__
.LBB395:
.LBB396:
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.L2:
/* epilogue start */
.LBE396:
.LBE395:
	.loc 1 104 0
	ret
	.cfi_endproc
.LFE57:
	.size	EnableAllInterrupts, .-EnableAllInterrupts
	.section	.text.SuspendAllInterrupts,"ax",@progbits
.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
.LFB59:
	.loc 1 133 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 135 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL4:
.LBB409:
.LBB410:
	.loc 1 113 0
	ldd r24,Z+15
	cpse r24,__zero_reg__
	rjmp .L8
.LBB411:
.LBB412:
.LBB413:
	.loc 2 116 0
	in r24,__SREG__
.LVL5:
.LBB414:
.LBB415:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.LBE415:
.LBE414:
.LBE413:
.LBE412:
	.loc 1 115 0
	std Z+13,r24
	.loc 1 116 0
	ldd r24,Z+15
.L12:
.LBE411:
	.loc 1 118 0
	subi r24,lo8(-(1))
	std Z+15,r24
/* epilogue start */
.LBE410:
.LBE409:
	.loc 1 146 0
	ret
.L8:
.LBB421:
.LBB420:
	.loc 1 117 0
	cpi r24,lo8(-1)
	brne .L12
.LVL7:
.LBB416:
.LBB417:
	.file 3 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_kernel.h"
	.loc 3 694 0
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	.loc 3 696 0
	ldi r24,lo8(25)
	ldi r25,0
	std Z+12,r25
	std Z+11,r24
.LBB418:
.LBB419:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L11:
	rjmp .L11
.LBE419:
.LBE418:
.LBE417:
.LBE416:
.LBE420:
.LBE421:
	.cfi_endproc
.LFE59:
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
	.section	.text.ResumeAllInterrupts,"ax",@progbits
.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
.LFB60:
	.loc 1 153 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 155 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL8:
	.loc 1 161 0
	ldd r24,Z+15
	tst r24
	breq .L13
	.loc 1 162 0
	subi r24,lo8(-(-1))
	std Z+15,r24
	.loc 1 164 0
	cpse r24,__zero_reg__
	rjmp .L13
	.loc 1 165 0
	ldd r24,Z+13
.LVL9:
.LBB422:
.LBB423:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL10:
.L13:
/* epilogue start */
.LBE423:
.LBE422:
	.loc 1 172 0
	ret
	.cfi_endproc
.LFE60:
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
	.section	.text.SuspendOSInterrupts,"ax",@progbits
.global	SuspendOSInterrupts
	.type	SuspendOSInterrupts, @function
SuspendOSInterrupts:
.LFB61:
	.loc 1 179 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 181 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL11:
	.loc 1 187 0
	ldd r24,Z+16
	cpse r24,__zero_reg__
	rjmp .L18
.LBB424:
.LBB425:
.LBB426:
.LBB427:
	.loc 2 116 0
	in r24,__SREG__
.LVL12:
.LBB428:
.LBB429:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL13:
/* #NOAPP */
.LBE429:
.LBE428:
.LBE427:
.LBE426:
.LBE425:
	.loc 1 189 0
	std Z+14,r24
	.loc 1 190 0
	ldd r24,Z+16
.L22:
.LBE424:
	.loc 1 192 0
	subi r24,lo8(-(1))
	std Z+16,r24
/* epilogue start */
	.loc 1 204 0
	ret
.L18:
	.loc 1 191 0
	cpi r24,lo8(-1)
	brne .L22
.LVL14:
.LBB430:
.LBB431:
	.loc 3 694 0
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	.loc 3 696 0
	ldi r24,lo8(25)
	ldi r25,0
	std Z+12,r25
	std Z+11,r24
.LBB432:
.LBB433:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L21:
	rjmp .L21
.LBE433:
.LBE432:
.LBE431:
.LBE430:
	.cfi_endproc
.LFE61:
	.size	SuspendOSInterrupts, .-SuspendOSInterrupts
	.section	.text.ResumeOSInterrupts,"ax",@progbits
.global	ResumeOSInterrupts
	.type	ResumeOSInterrupts, @function
ResumeOSInterrupts:
.LFB62:
	.loc 1 211 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 213 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL15:
	.loc 1 219 0
	ldd r24,Z+16
	tst r24
	breq .L23
	.loc 1 220 0
	subi r24,lo8(-(-1))
	std Z+16,r24
	.loc 1 222 0
	cpse r24,__zero_reg__
	rjmp .L23
	.loc 1 223 0
	ldd r24,Z+14
.LVL16:
.LBB434:
.LBB435:
.LBB436:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL17:
.L23:
/* epilogue start */
.LBE436:
.LBE435:
.LBE434:
	.loc 1 230 0
	ret
	.cfi_endproc
.LFE62:
	.size	ResumeOSInterrupts, .-ResumeOSInterrupts
	.section	.text.StartOS,"ax",@progbits
.global	StartOS
	.type	StartOS, @function
StartOS:
.LFB63:
	.loc 1 237 0
	.cfi_startproc
.LVL18:
	push r4
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 4, -2
	push r5
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 5, -3
	push r6
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 6, -4
	push r7
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 7, -5
	push r8
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 8, -6
	push r9
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 9, -7
	push r10
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 10, -8
	push r11
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 11, -9
	push r12
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 12, -10
	push r13
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 13, -11
	push r14
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 14, -12
	push r15
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 15, -13
	push r16
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 16, -14
	push r17
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -15
	push r28
.LCFI14:
	.cfi_def_cfa_offset 17
	.cfi_offset 28, -16
	push r29
.LCFI15:
	.cfi_def_cfa_offset 18
	.cfi_offset 29, -17
	rcall .
.LCFI16:
	.cfi_def_cfa_offset 20
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI17:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 18 */
.L__stack_usage = 18
.LVL19:
	.loc 1 246 0
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
.LVL20:
.LBB458:
.LBB459:
.LBB460:
.LBB461:
	.loc 2 116 0
	in r25,__SREG__
.LVL21:
.LBB462:
.LBB463:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL22:
/* #NOAPP */
.LBE463:
.LBE462:
.LBE461:
.LBE460:
.LBE459:
.LBE458:
	.loc 1 254 0
	movw r26,r16
	adiw r26,8
	ld r18,X+
	ld r19,X
	or r18,r19
	breq .L28
.LVL23:
.LBB464:
.LBB465:
.LBB466:
.LBB467:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r25
.LVL24:
.LBE467:
.LBE466:
.LBE465:
.LBE464:
	.loc 1 258 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL25:
.L27:
/* epilogue start */
	.loc 1 582 0
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.LVL26:
.L28:
	mov r15,r24
.LBB468:
.LBB469:
	.loc 2 173 0
	ldi r24,lo8(gs(osEE_atmega_intvect))
	ldi r25,hi8(gs(osEE_atmega_intvect))
.LVL27:
	std Y+2,r25
	std Y+1,r24
.LBE469:
.LBE468:
.LBB470:
	.loc 1 280 0
	lds r12,osEE_cdb_var+4
	lds r13,osEE_cdb_var+4+1
.LVL28:
	.loc 1 300 0
	ldi r24,lo8(1)
	ldi r25,0
	movw r30,r16
	std Z+9,r25
	std Z+8,r24
	.loc 1 301 0
	std Z+10,r15
.LVL29:
.LBB471:
.LBB472:
	.loc 3 331 0
	call StartupHook
.LVL30:
.LBE472:
.LBE471:
.LBB473:
	.loc 1 468 0
	lds r4,osEE_cdb_var+6
	lds r5,osEE_cdb_var+6+1
.LVL31:
	.loc 1 471 0
	movw r10,r16
	ldi r31,2
	add r10,r31
	adc r11,__zero_reg__
.LVL32:
	.loc 1 483 0
	ldi r18,lo8(4)
	mul r15,r18
	movw r24,r0
	clr __zero_reg__
	add r4,r24
	adc r5,r25
	movw r26,r4
	adiw r26,2
	ld r6,X+
	ld r7,X
.LVL33:
	.loc 1 484 0
	mov r15,__zero_reg__
.LVL34:
	mov r14,__zero_reg__
.LBB474:
	.loc 1 492 0
	clr r8
	inc r8
	mov r9,__zero_reg__
.LVL35:
.L30:
.LBE474:
	.loc 1 484 0 discriminator 1
	cp r14,r6
	cpc r15,r7
	brne .L31
.LVL36:
.LBE473:
	.loc 1 527 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,1
	brne .L32
	.loc 1 528 0
	ldi r24,lo8(2)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
.L32:
.LVL37:
	.loc 1 537 0
	movw r26,r16
	adiw r26,8
	ld r24,X+
	ld r25,X
	sbiw r24,2
	brne .L33
.LVL38:
.LBB478:
.LBB479:
	.file 4 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_std_change_context.h"
	.loc 4 150 0
	movw r30,r12
	ldd r22,Z+2
	ldd r23,Z+3
	movw r20,r22
	movw r24,r12
	call osEE_hal_save_ctx_and_ready2stacked
.LVL39:
.LBE479:
.LBE478:
	.loc 1 539 0
	movw r24,r12
	call osEE_task_end
.LVL40:
.L33:
.LBE470:
	.loc 1 238 0
	ldi r25,0
	ldi r24,0
	.loc 1 581 0
	rjmp .L27
.LVL41:
.L31:
.LBB481:
.LBB480:
.LBB477:
	.loc 1 486 0 discriminator 3
	movw r26,r4
	ld r30,X+
	ld r31,X
	movw r24,r14
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	ld r20,Z
	ldd r21,Z+1
.LVL42:
	.loc 1 488 0 discriminator 3
	movw r26,r20
	adiw r26,4
	ld r30,X+
	ld r31,X
.LVL43:
	.loc 1 491 0 discriminator 3
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	.loc 1 492 0 discriminator 3
	std Z+3,r9
	std Z+2,r8
.LVL44:
.LBB475:
.LBB476:
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_scheduler_types.h"
	.loc 5 100 0 discriminator 3
	movw r30,r16
.LVL45:
	ldd r22,Z+4
	ldd r23,Z+5
.LVL46:
	.loc 5 101 0 discriminator 3
	movw r26,r22
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+5,r25
	std Z+4,r24
	.loc 5 102 0 discriminator 3
	st X+,__zero_reg__
	st X,__zero_reg__
.LVL47:
.LBE476:
.LBE475:
	.loc 1 494 0 discriminator 3
	movw r24,r10
	call osEE_scheduler_rq_insert
.LVL48:
.LBE477:
	.loc 1 484 0 discriminator 3
	ldi r27,-1
	sub r14,r27
	sbc r15,r27
.LVL49:
	rjmp .L30
.LBE480:
.LBE481:
	.cfi_endproc
.LFE63:
	.size	StartOS, .-StartOS
	.section	.text.GetActiveApplicationMode,"ax",@progbits
.global	GetActiveApplicationMode
	.type	GetActiveApplicationMode, @function
GetActiveApplicationMode:
.LFB64:
	.loc 1 589 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 598 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL50:
	.loc 1 604 0
	ldd r24,Z+8
	ldd r25,Z+9
	or r24,r25
	breq .L36
	.loc 1 605 0
	ldd r24,Z+10
.LVL51:
	ret
.LVL52:
.L36:
	.loc 1 607 0
	ldi r24,lo8(-1)
.LVL53:
/* epilogue start */
	.loc 1 613 0
	ret
	.cfi_endproc
.LFE64:
	.size	GetActiveApplicationMode, .-GetActiveApplicationMode
	.section	.text.ActivateTask,"ax",@progbits
.global	ActivateTask
	.type	ActivateTask, @function
ActivateTask:
.LFB65:
	.loc 1 620 0
	.cfi_startproc
.LVL54:
	push r15
.LCFI18:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI20:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI21:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI22:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL55:
.LBB482:
.LBB483:
	.loc 3 276 0
	ldi r25,0
.LBE483:
.LBE482:
	.loc 1 655 0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L41
.LBB484:
	.loc 1 660 0
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
.LVL56:
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
.LVL57:
	.loc 1 662 0
	movw r30,r16
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brsh .L41
.LBB485:
.LBB486:
.LBB487:
.LBB488:
.LBB489:
	.loc 2 116 0
	in r15,__SREG__
.LVL58:
.LBB490:
.LBB491:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL59:
/* #NOAPP */
.LBE491:
.LBE490:
.LBE489:
.LBE488:
.LBE487:
.LBE486:
	.loc 1 665 0
	movw r24,r16
	call osEE_task_activated
.LVL60:
	movw r28,r24
.LVL61:
	.loc 1 667 0
	or r24,r25
	brne .L39
	.loc 1 668 0
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL62:
	call osEE_scheduler_task_activated
.LVL63:
.L39:
.LBB492:
.LBB493:
.LBB494:
.LBB495:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r15
.LVL64:
.L37:
.LBE495:
.LBE494:
.LBE493:
.LBE492:
.LBE485:
.LBE484:
	.loc 1 692 0
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L41:
	.loc 1 656 0
	ldi r28,lo8(3)
	ldi r29,0
.LVL65:
	.loc 1 691 0
	rjmp .L37
	.cfi_endproc
.LFE65:
	.size	ActivateTask, .-ActivateTask
	.section	.text.ChainTask,"ax",@progbits
.global	ChainTask
	.type	ChainTask, @function
ChainTask:
.LFB66:
	.loc 1 699 0
	.cfi_startproc
.LVL66:
	push r15
.LCFI23:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI24:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI25:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI26:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI27:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL67:
.LBB496:
.LBB497:
	.loc 3 276 0
	ldi r25,0
.LBE497:
.LBE496:
	.loc 1 745 0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L50
.LBB498:
	.loc 1 749 0
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
.LVL68:
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
.LVL69:
	.loc 1 771 0
	movw r30,r16
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brsh .L50
.LBE498:
	.loc 1 711 0
	lds r28,osEE_cdb_var
	lds r29,osEE_cdb_var+1
	.loc 1 713 0
	ld r30,Y
	ldd r31,Y+1
.LBB517:
.LBB499:
	.loc 1 775 0
	ldd r24,Y+15
	tst r24
	breq .L44
	.loc 1 776 0
	std Y+15,__zero_reg__
.LVL70:
	.loc 1 777 0
	ldd r24,Y+13
.LVL71:
.LBB500:
.LBB501:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL72:
.L44:
.LBE501:
.LBE500:
	.loc 1 779 0
	ldd r24,Y+17
	tst r24
	breq .L45
	.loc 1 780 0
	std Y+17,__zero_reg__
.LBB502:
.LBB503:
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L45:
.LBE503:
.LBE502:
.LBB504:
.LBB505:
.LBB506:
.LBB507:
	.loc 2 116 0
	in r15,__SREG__
.LVL73:
.LBB508:
.LBB509:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL74:
/* #NOAPP */
.LBE509:
.LBE508:
.LBE507:
.LBE506:
.LBE505:
.LBE504:
	.loc 1 787 0
	cp r30,r16
	cpc r31,r17
	brne .L46
	.loc 1 789 0
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldi r24,lo8(5)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
.LVL75:
.L47:
.LBB510:
.LBB511:
	.loc 4 141 0
	ld r30,Y
	ldd r31,Y+1
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_hal_terminate_ctx
.LVL76:
.L46:
.LBE511:
.LBE510:
	.loc 1 792 0
	movw r24,r16
	call osEE_task_activated
.LVL77:
	.loc 1 793 0
	sbiw r24,0
	brne .L48
	.loc 1 794 0
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL78:
	call osEE_scheduler_task_insert
.LVL79:
	rjmp .L47
.LVL80:
.L50:
.LBE499:
.LBE517:
	.loc 1 746 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL81:
.L42:
/* epilogue start */
	.loc 1 822 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.LVL82:
.L48:
.LBB518:
.LBB516:
.LBB512:
.LBB513:
.LBB514:
.LBB515:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r15
.LVL83:
	rjmp .L42
.LBE515:
.LBE514:
.LBE513:
.LBE512:
.LBE516:
.LBE518:
	.cfi_endproc
.LFE66:
	.size	ChainTask, .-ChainTask
	.section	.text.TerminateTask,"ax",@progbits
.global	TerminateTask
	.type	TerminateTask, @function
TerminateTask:
.LFB67:
	.loc 1 829 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 840 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL84:
	.loc 1 842 0
	ld r26,Z
	ldd r27,Z+1
.LVL85:
.LBB519:
	.loc 1 902 0
	ldd r24,Z+15
	tst r24
	breq .L58
	.loc 1 903 0
	std Z+15,__zero_reg__
	.loc 1 904 0
	ldd r24,Z+13
.LVL86:
.LBB520:
.LBB521:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL87:
.L58:
.LBE521:
.LBE520:
	.loc 1 906 0
	ldd r24,Z+17
	tst r24
	breq .L59
	.loc 1 907 0
	std Z+17,__zero_reg__
.LBB522:
.LBB523:
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L59:
.LBE523:
.LBE522:
.LBB524:
.LBB525:
.LBB526:
.LBB527:
	.loc 2 116 0
	in r24,__SREG__
.LBB528:
.LBB529:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL88:
/* #NOAPP */
.LBE529:
.LBE528:
.LBE527:
.LBE526:
.LBE525:
.LBE524:
.LBB530:
.LBB531:
	.loc 4 141 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	adiw r26,2
	ld r24,X+
	ld r25,X
	call osEE_hal_terminate_ctx
.LVL89:
.LBE531:
.LBE530:
.LBE519:
	.cfi_endproc
.LFE67:
	.size	TerminateTask, .-TerminateTask
	.section	.text.Schedule,"ax",@progbits
.global	Schedule
	.type	Schedule, @function
Schedule:
.LFB68:
	.loc 1 944 0
	.cfi_startproc
	push r15
.LCFI28:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI30:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI31:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI32:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL90:
	.loc 1 953 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r28,Z
	ldd r29,Z+1
.LVL91:
	.loc 1 954 0
	ldd r16,Y+4
	ldd r17,Y+5
.LVL92:
	.loc 1 1003 0
	movw r30,r16
	ldd r25,Z+1
	ldd r24,Y+12
	cpse r25,r24
	rjmp .L67
.LBB532:
.LBB533:
.LBB534:
.LBB535:
.LBB536:
	.loc 2 116 0
	in r15,__SREG__
.LVL93:
.LBB537:
.LBB538:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL94:
/* #NOAPP */
.LBE538:
.LBE537:
.LBE536:
.LBE535:
.LBE534:
.LBE533:
	.loc 1 1009 0
	ldd r24,Y+11
	std Z+1,r24
	.loc 1 1011 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.LVL95:
	.loc 1 1013 0
	ldd r24,Y+12
	movw r30,r16
	std Z+1,r24
.LBB539:
.LBB540:
.LBB541:
.LBB542:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r15
.LVL96:
.L67:
.LBE542:
.LBE541:
.LBE540:
.LBE539:
.LBE532:
	.loc 1 1037 0
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
.LVL97:
	pop r17
	pop r16
.LVL98:
	pop r15
	ret
	.cfi_endproc
.LFE68:
	.size	Schedule, .-Schedule
	.section	.text.ShutdownOS,"ax",@progbits
.global	ShutdownOS
	.type	ShutdownOS, @function
ShutdownOS:
.LFB69:
	.loc 1 1267 0
	.cfi_startproc
.LVL99:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r24
	.loc 1 1275 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL100:
.LBB543:
.LBB544:
.LBB545:
.LBB546:
	.loc 2 116 0
	in r25,__SREG__
.LVL101:
.LBB547:
.LBB548:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL102:
/* #NOAPP */
.LBE548:
.LBE547:
.LBE546:
.LBE545:
.LBE544:
.LBE543:
	.loc 1 1277 0
	ldd r18,Z+8
	ldd r19,Z+9
.LVL103:
	.loc 1 1305 0
	subi r18,1
	sbc r19,__zero_reg__
.LVL104:
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L69
.LVL105:
.LBB549:
.LBB550:
	.loc 3 694 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL106:
	std Z+9,r25
	std Z+8,r24
	.loc 3 696 0
	std Z+12,r21
	std Z+11,r20
.LBB551:
.LBB552:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L70:
	rjmp .L70
.LVL107:
.L69:
.LBE552:
.LBE551:
.LBE550:
.LBE549:
.LBB553:
.LBB554:
.LBB555:
.LBB556:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r25
.LVL108:
.LBE556:
.LBE555:
.LBE554:
.LBE553:
	.loc 1 1327 0
	ldi r24,lo8(7)
	ldi r25,0
/* epilogue start */
	ret
	.cfi_endproc
.LFE69:
	.size	ShutdownOS, .-ShutdownOS
	.section	.text.GetTaskID,"ax",@progbits
.global	GetTaskID
	.type	GetTaskID, @function
GetTaskID:
.LFB70:
	.loc 1 1334 0
	.cfi_startproc
.LVL109:
	push r28
.LCFI33:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI34:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	.loc 1 1343 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL110:
	.loc 1 1374 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL111:
	.loc 1 1373 0
	sbiw r26,0
	breq .L71
.LVL112:
.LBB557:
	.loc 1 1379 0
	ld r28,Z
	ldd r29,Z+1
.LVL113:
	.loc 1 1389 0
	ldd r24,Y+7
	ldd r25,Y+8
	cpi r24,2
	cpc r25,__zero_reg__
	brsh .L73
.LVL114:
.L80:
.LBB558:
.LBB559:
	.loc 1 1402 0
	ldd r25,Y+6
.LVL115:
.L74:
.LBE559:
.LBE558:
	.loc 1 1413 0
	st X,r25
.LVL116:
	.loc 1 1414 0
	ldi r25,0
.LVL117:
	ldi r24,0
.LVL118:
.L71:
/* epilogue start */
.LBE557:
	.loc 1 1431 0
	pop r29
	pop r28
	ret
.LVL119:
.L73:
.LBB564:
	.loc 1 1392 0
	sbiw r24,2
	brne .L79
.LBB562:
	.loc 1 1396 0
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
.LVL120:
.L76:
.LBB560:
	.loc 1 1405 0
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL121:
.LBE560:
	.loc 1 1398 0
	sbiw r30,0
	brne .L77
.LVL122:
.L79:
.LBE562:
	.loc 1 1377 0
	ldi r25,lo8(-1)
	rjmp .L74
.LVL123:
.L77:
.LBB563:
.LBB561:
	.loc 1 1400 0
	ldd r28,Z+2
	ldd r29,Z+3
.LVL124:
	.loc 1 1401 0
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,2
	brsh .L76
	rjmp .L80
.LBE561:
.LBE563:
.LBE564:
	.cfi_endproc
.LFE70:
	.size	GetTaskID, .-GetTaskID
	.section	.text.GetTaskState,"ax",@progbits
.global	GetTaskState
	.type	GetTaskState, @function
GetTaskState:
.LFB71:
	.loc 1 1439 0
	.cfi_startproc
.LVL125:
	push r28
.LCFI35:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r22
.LVL126:
	.loc 1 1479 0
	sbiw r30,0
	breq .L88
.LVL127:
.LBB565:
.LBB566:
	.loc 3 276 0
	ldi r25,0
.LBE566:
.LBE565:
	.loc 1 1482 0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L89
.LVL128:
.LBB567:
	.loc 1 1487 0
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
.LVL129:
	add r24,r18
	adc r25,r19
	.loc 1 1490 0
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	adiw r26,4
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	.loc 1 1491 0
	adiw r26,2
	ld r24,X+
	ld r25,X
	cpi r24,3
	cpc r25,__zero_reg__
	brsh .L83
	sbiw r24,1
	brlo .L91
	.loc 1 1497 0
	ldi r24,lo8(1)
	ldi r25,0
.L93:
	.loc 1 1504 0
	std Z+1,r25
	st Z,r24
	rjmp .L90
.L83:
	.loc 1 1491 0
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L93
	sbiw r24,6
	brlo .L92
.L90:
	.loc 1 1511 0
	ldi r25,0
	ldi r24,0
.LVL130:
.LBE567:
	.loc 1 1528 0
	rjmp .L81
.LVL131:
.L91:
.LBB568:
	.loc 1 1493 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L90
.L92:
	.loc 1 1504 0
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L93
.LVL132:
.L88:
.LBE568:
	.loc 1 1480 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL133:
.L81:
/* epilogue start */
	.loc 1 1529 0
	pop r29
	pop r28
	ret
.LVL134:
.L89:
	.loc 1 1483 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL135:
	rjmp .L81
	.cfi_endproc
.LFE71:
	.size	GetTaskState, .-GetTaskState
	.section	.text.WaitEvent,"ax",@progbits
.global	WaitEvent
	.type	WaitEvent, @function
WaitEvent:
.LFB72:
	.loc 1 1945 0
	.cfi_startproc
.LVL136:
	push r13
.LCFI37:
	.cfi_def_cfa_offset 3
	.cfi_offset 13, -2
	push r14
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI39:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI40:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI41:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI42:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI43:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 1950 0
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
.LVL137:
	.loc 1 1952 0
	movw r30,r16
	ld r14,Z
	ldd r15,Z+1
.LVL138:
	.loc 1 1954 0
	movw r30,r14
	ldd r28,Z+4
	ldd r29,Z+5
.LVL139:
.LBB569:
.LBB570:
.LBB571:
.LBB572:
.LBB573:
	.loc 2 116 0
	in r13,__SREG__
.LVL140:
.LBB574:
.LBB575:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL141:
/* #NOAPP */
.LBE575:
.LBE574:
.LBE573:
.LBE572:
.LBE571:
.LBE570:
	.loc 1 2008 0
	ldd r18,Y+6
	ldd r19,Y+7
	and r18,r24
	and r19,r25
	or r18,r19
	brne .L95
	.loc 1 2010 0
	std Y+5,r25
	std Y+4,r24
	.loc 1 2013 0
	movw r22,r16
	subi r22,-2
	sbci r23,-1
	ldi r24,lo8(osEE_cdb_var)
	ldi r25,hi8(osEE_cdb_var)
.LVL142:
	call osEE_scheduler_core_pop_running
.LVL143:
	.loc 1 2012 0
	std Y+9,r25
	std Y+8,r24
	.loc 1 2015 0
	ldi r24,lo8(3)
	ldi r25,0
	std Y+3,r25
	std Y+2,r24
.LVL144:
	.loc 1 2019 0
	movw r30,r16
	ld r22,Z
	ldd r23,Z+1
	movw r24,r14
	call osEE_change_context_from_running
.LVL145:
	.loc 1 2022 0
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
.LVL146:
.L95:
.LBB576:
.LBB577:
.LBB578:
.LBB579:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r13
.LVL147:
.LBE579:
.LBE578:
.LBE577:
.LBE576:
.LBE569:
	.loc 1 2047 0
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
.LVL148:
	pop r17
	pop r16
	pop r15
	pop r14
.LVL149:
	pop r13
	ret
	.cfi_endproc
.LFE72:
	.size	WaitEvent, .-WaitEvent
	.section	.text.SetEvent,"ax",@progbits
.global	SetEvent
	.type	SetEvent, @function
SetEvent:
.LFB73:
	.loc 1 2055 0
	.cfi_startproc
.LVL150:
	push r17
.LCFI44:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI45:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI46:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	rcall .
.LCFI47:
	.cfi_def_cfa_offset 7
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI48:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL151:
.LBB580:
.LBB581:
	.loc 3 276 0
	ldi r25,0
.LBE581:
.LBE580:
	.loc 1 2103 0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brlo .L97
	.loc 1 2104 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL152:
	std Y+2,r25
	std Y+1,r24
.LVL153:
.L98:
	.loc 1 2141 0
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	ret
.LVL154:
.L97:
.LBB582:
	.loc 1 2109 0
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
.LVL155:
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
.LVL156:
.LBB583:
.LBB584:
.LBB585:
.LBB586:
	.loc 2 116 0
	in r17,__SREG__
.LVL157:
.LBB587:
.LBB588:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL158:
/* #NOAPP */
.LBE588:
.LBE587:
.LBE586:
.LBE585:
.LBE584:
.LBE583:
	.loc 1 2113 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call osEE_task_event_set_mask
.LVL159:
	.loc 1 2115 0
	sbiw r24,0
	breq .L100
	.loc 1 2117 0
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL160:
	call osEE_scheduler_task_unblocked
.LVL161:
	or r24,r25
	breq .L100
	.loc 1 2119 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.LVL162:
.L100:
.LBB589:
.LBB590:
.LBB591:
.LBB592:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r17
.LVL163:
	rjmp .L98
.LBE592:
.LBE591:
.LBE590:
.LBE589:
.LBE582:
	.cfi_endproc
.LFE73:
	.size	SetEvent, .-SetEvent
	.section	.text.GetEvent,"ax",@progbits
.global	GetEvent
	.type	GetEvent, @function
GetEvent:
.LFB74:
	.loc 1 2149 0
	.cfi_startproc
.LVL164:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB593:
.LBB594:
	.loc 3 276 0
	ldi r25,0
.LBE594:
.LBE593:
	.loc 1 2202 0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L107
.LBB595:
	.loc 1 2207 0
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
.LVL165:
	add r24,r18
	adc r25,r19
	.loc 1 2209 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
.LVL166:
	.loc 1 2220 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L108
	.loc 1 2225 0
	ldd r24,Z+6
	ldd r25,Z+7
	movw r30,r22
.LVL167:
	std Z+1,r25
	st Z,r24
.LVL168:
	.loc 1 2227 0
	ldi r25,0
	ldi r24,0
	ret
.LVL169:
.L107:
.LBE595:
	.loc 1 2203 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL170:
	ret
.LVL171:
.L108:
.LBB596:
	.loc 1 2221 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL172:
/* epilogue start */
.LBE596:
	.loc 1 2247 0
	ret
	.cfi_endproc
.LFE74:
	.size	GetEvent, .-GetEvent
	.section	.text.ClearEvent,"ax",@progbits
.global	ClearEvent
	.type	ClearEvent, @function
ClearEvent:
.LFB75:
	.loc 1 2254 0
	.cfi_startproc
.LVL173:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 2265 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	.loc 1 2267 0
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
.LVL174:
.LBB597:
.LBB598:
.LBB599:
.LBB600:
.LBB601:
	.loc 2 116 0
	in r20,__SREG__
.LVL175:
.LBB602:
.LBB603:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL176:
/* #NOAPP */
.LBE603:
.LBE602:
.LBE601:
.LBE600:
.LBE599:
.LBE598:
	.loc 1 2305 0
	movw r18,r24
	com r18
	com r19
	ldd r24,Z+6
	ldd r25,Z+7
.LVL177:
	and r24,r18
	and r25,r19
	std Z+7,r25
	std Z+6,r24
.LVL178:
.LBB604:
.LBB605:
.LBB606:
.LBB607:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r20
.LVL179:
.LBE607:
.LBE606:
.LBE605:
.LBE604:
.LBE597:
	.loc 1 2326 0
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.cfi_endproc
.LFE75:
	.size	ClearEvent, .-ClearEvent
	.section	.text.GetISRID,"ax",@progbits
.global	GetISRID
	.type	GetISRID, @function
GetISRID:
.LFB76:
	.loc 1 3316 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB608:
.LBB609:
	.loc 3 172 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LBE609:
.LBE608:
	.loc 1 3321 0
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brne .L112
	.loc 1 3322 0
	ldd r24,Z+6
.LVL180:
	ret
.LVL181:
.L112:
	.loc 1 3324 0
	ldi r24,lo8(-1)
.LVL182:
/* epilogue start */
	.loc 1 3328 0
	ret
	.cfi_endproc
.LFE76:
	.size	GetISRID, .-GetISRID
	.text
.Letext0:
	.file 6 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_platform_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_api_types.h"
	.file 9 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_hal_internal_types.h"
	.file 11 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_get_kernel_and_core.h"
	.file 12 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_scheduler.h"
	.file 13 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\inc/ee_oo_api_osek.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x208d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF265
	.byte	0xc
	.long	.LASF266
	.long	.LASF267
	.long	.Ldebug_ranges0+0x108
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
	.byte	0x6
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x7
	.byte	0x54
	.long	0x7e
	.uleb128 0x7
	.long	0x98
	.uleb128 0x4
	.long	.LASF13
	.byte	0x7
	.byte	0x5b
	.long	0x4c
	.uleb128 0x7
	.long	0xa8
	.uleb128 0x4
	.long	.LASF14
	.byte	0x7
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x7
	.byte	0x6d
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x7
	.byte	0x76
	.long	0xde
	.uleb128 0x8
	.long	0xce
	.uleb128 0x9
	.byte	0x2
	.long	0xe4
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x4
	.long	.LASF17
	.byte	0x8
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF18
	.byte	0x8
	.byte	0x78
	.long	0xa8
	.uleb128 0x4
	.long	.LASF19
	.byte	0x8
	.byte	0x81
	.long	0xa8
	.uleb128 0x4
	.long	.LASF20
	.byte	0x8
	.byte	0x87
	.long	0x112
	.uleb128 0x9
	.byte	0x2
	.long	0xf1
	.uleb128 0x4
	.long	.LASF21
	.byte	0x8
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF22
	.byte	0x8
	.byte	0xf4
	.long	0x4c
	.uleb128 0xb
	.long	.LASF23
	.byte	0x8
	.word	0x13a
	.long	0xde
	.uleb128 0xc
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.word	0x145
	.long	0x161
	.uleb128 0x6
	.long	.LASF24
	.byte	0
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.uleb128 0x6
	.long	.LASF27
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x8
	.word	0x153
	.long	0x13a
	.uleb128 0xb
	.long	.LASF29
	.byte	0x8
	.word	0x157
	.long	0x161
	.uleb128 0xc
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.word	0x15d
	.long	0x1ac
	.uleb128 0x6
	.long	.LASF30
	.byte	0
	.uleb128 0x6
	.long	.LASF31
	.byte	0x1
	.uleb128 0x6
	.long	.LASF32
	.byte	0x2
	.uleb128 0x6
	.long	.LASF33
	.byte	0x3
	.uleb128 0x6
	.long	.LASF34
	.byte	0x4
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x8
	.word	0x16e
	.long	0x179
	.uleb128 0x7
	.long	0x1ac
	.uleb128 0xb
	.long	.LASF37
	.byte	0x8
	.word	0x17e
	.long	0x1ac
	.uleb128 0xb
	.long	.LASF38
	.byte	0x8
	.word	0x180
	.long	0x1d5
	.uleb128 0x9
	.byte	0x2
	.long	0x1bd
	.uleb128 0xb
	.long	.LASF39
	.byte	0x8
	.word	0x237
	.long	0xc3
	.uleb128 0xb
	.long	.LASF40
	.byte	0x8
	.word	0x23f
	.long	0x1f3
	.uleb128 0x9
	.byte	0x2
	.long	0x1db
	.uleb128 0xb
	.long	.LASF41
	.byte	0x8
	.word	0x2a3
	.long	0xb8
	.uleb128 0xc
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.word	0x2b1
	.long	0x2c2
	.uleb128 0x6
	.long	.LASF42
	.byte	0
	.uleb128 0x6
	.long	.LASF43
	.byte	0x1
	.uleb128 0x6
	.long	.LASF44
	.byte	0x2
	.uleb128 0x6
	.long	.LASF45
	.byte	0x3
	.uleb128 0x6
	.long	.LASF46
	.byte	0x4
	.uleb128 0x6
	.long	.LASF47
	.byte	0x5
	.uleb128 0x6
	.long	.LASF48
	.byte	0x6
	.uleb128 0x6
	.long	.LASF49
	.byte	0x7
	.uleb128 0x6
	.long	.LASF50
	.byte	0x8
	.uleb128 0x6
	.long	.LASF51
	.byte	0x9
	.uleb128 0x6
	.long	.LASF52
	.byte	0xa
	.uleb128 0x6
	.long	.LASF53
	.byte	0xb
	.uleb128 0x6
	.long	.LASF54
	.byte	0xc
	.uleb128 0x6
	.long	.LASF55
	.byte	0xd
	.uleb128 0x6
	.long	.LASF56
	.byte	0xe
	.uleb128 0x6
	.long	.LASF57
	.byte	0xf
	.uleb128 0x6
	.long	.LASF58
	.byte	0x10
	.uleb128 0x6
	.long	.LASF59
	.byte	0x11
	.uleb128 0x6
	.long	.LASF60
	.byte	0x12
	.uleb128 0x6
	.long	.LASF61
	.byte	0x13
	.uleb128 0x6
	.long	.LASF62
	.byte	0x14
	.uleb128 0x6
	.long	.LASF63
	.byte	0x15
	.uleb128 0x6
	.long	.LASF64
	.byte	0x16
	.uleb128 0x6
	.long	.LASF65
	.byte	0x17
	.uleb128 0x6
	.long	.LASF66
	.byte	0x18
	.uleb128 0x6
	.long	.LASF67
	.byte	0x19
	.uleb128 0x6
	.long	.LASF68
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF69
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF70
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.long	.LASF71
	.byte	0x8
	.word	0x2d4
	.long	0x205
	.uleb128 0xb
	.long	.LASF72
	.byte	0x8
	.word	0x2d9
	.long	0x2c2
	.uleb128 0xc
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x8
	.word	0x2f4
	.long	0x379
	.uleb128 0x6
	.long	.LASF73
	.byte	0
	.uleb128 0x6
	.long	.LASF74
	.byte	0x2
	.uleb128 0x6
	.long	.LASF75
	.byte	0x4
	.uleb128 0x6
	.long	.LASF76
	.byte	0x6
	.uleb128 0x6
	.long	.LASF77
	.byte	0x8
	.uleb128 0x6
	.long	.LASF78
	.byte	0xa
	.uleb128 0x6
	.long	.LASF79
	.byte	0xc
	.uleb128 0x6
	.long	.LASF80
	.byte	0xe
	.uleb128 0x6
	.long	.LASF81
	.byte	0x10
	.uleb128 0x6
	.long	.LASF82
	.byte	0x12
	.uleb128 0x6
	.long	.LASF83
	.byte	0x14
	.uleb128 0x6
	.long	.LASF84
	.byte	0x16
	.uleb128 0x6
	.long	.LASF85
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF86
	.byte	0x1e
	.uleb128 0x6
	.long	.LASF87
	.byte	0x20
	.uleb128 0x6
	.long	.LASF88
	.byte	0x22
	.uleb128 0x6
	.long	.LASF89
	.byte	0x46
	.uleb128 0x6
	.long	.LASF90
	.byte	0x48
	.uleb128 0x6
	.long	.LASF91
	.byte	0x4a
	.uleb128 0x6
	.long	.LASF92
	.byte	0x4e
	.uleb128 0x6
	.long	.LASF93
	.byte	0x50
	.uleb128 0x6
	.long	.LASF94
	.byte	0x52
	.uleb128 0x6
	.long	.LASF95
	.byte	0x54
	.uleb128 0x6
	.long	.LASF96
	.byte	0x56
	.byte	0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x8
	.word	0x336
	.long	0x2da
	.uleb128 0xb
	.long	.LASF98
	.byte	0x8
	.word	0x339
	.long	0x379
	.uleb128 0x7
	.long	0x385
	.uleb128 0xd
	.long	.LASF101
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x3bf
	.uleb128 0xe
	.long	.LASF99
	.byte	0x5
	.byte	0x4d
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x5
	.byte	0x4f
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x396
	.uleb128 0xf
	.long	.LASF102
	.byte	0xe
	.byte	0x9
	.word	0x108
	.long	0x44b
	.uleb128 0x10
	.string	"hdb"
	.byte	0x9
	.word	0x10b
	.long	0x636
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x9
	.word	0x10e
	.long	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"tid"
	.byte	0x9
	.word	0x110
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF104
	.byte	0x9
	.word	0x112
	.long	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.long	.LASF105
	.byte	0x9
	.word	0x114
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.long	.LASF106
	.byte	0x9
	.word	0x117
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.long	.LASF107
	.byte	0x9
	.word	0x11a
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF108
	.byte	0x9
	.word	0x11c
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.long	0x3c5
	.uleb128 0x9
	.byte	0x2
	.long	0x44b
	.uleb128 0x4
	.long	.LASF109
	.byte	0x5
	.byte	0x50
	.long	0x396
	.uleb128 0x7
	.long	0x456
	.uleb128 0x4
	.long	.LASF110
	.byte	0x5
	.byte	0xd5
	.long	0x471
	.uleb128 0x9
	.byte	0x2
	.long	0x456
	.uleb128 0xd
	.long	.LASF111
	.byte	0x14
	.byte	0xa
	.byte	0x43
	.long	0x586
	.uleb128 0x12
	.string	"r29"
	.byte	0xa
	.byte	0x44
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"r28"
	.byte	0xa
	.byte	0x45
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"r17"
	.byte	0xa
	.byte	0x46
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"r16"
	.byte	0xa
	.byte	0x47
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.string	"r15"
	.byte	0xa
	.byte	0x48
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"r14"
	.byte	0xa
	.byte	0x49
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x12
	.string	"r13"
	.byte	0xa
	.byte	0x4a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.string	"r12"
	.byte	0xa
	.byte	0x4b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x12
	.string	"r11"
	.byte	0xa
	.byte	0x4c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"r10"
	.byte	0xa
	.byte	0x4d
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.string	"r9"
	.byte	0xa
	.byte	0x4e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.string	"r8"
	.byte	0xa
	.byte	0x4f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x12
	.string	"r7"
	.byte	0xa
	.byte	0x50
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"r6"
	.byte	0xa
	.byte	0x51
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"r5"
	.byte	0xa
	.byte	0x52
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"r4"
	.byte	0xa
	.byte	0x53
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x12
	.string	"r3"
	.byte	0xa
	.byte	0x54
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"r2"
	.byte	0xa
	.byte	0x55
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.long	.LASF112
	.byte	0xa
	.byte	0x56
	.long	0x586
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x477
	.uleb128 0x4
	.long	.LASF113
	.byte	0xa
	.byte	0x57
	.long	0x477
	.uleb128 0xd
	.long	.LASF114
	.byte	0x2
	.byte	0xa
	.byte	0x5a
	.long	0x5b2
	.uleb128 0xe
	.long	.LASF115
	.byte	0xa
	.byte	0x5b
	.long	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x58c
	.uleb128 0x4
	.long	.LASF116
	.byte	0xa
	.byte	0x5c
	.long	0x597
	.uleb128 0xd
	.long	.LASF117
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.long	0x5ec
	.uleb128 0xe
	.long	.LASF118
	.byte	0xa
	.byte	0x5f
	.long	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF119
	.byte	0xa
	.byte	0x60
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x5c3
	.uleb128 0x4
	.long	.LASF120
	.byte	0xa
	.byte	0x61
	.long	0x5ec
	.uleb128 0xd
	.long	.LASF121
	.byte	0x4
	.byte	0xa
	.byte	0x63
	.long	0x625
	.uleb128 0xe
	.long	.LASF122
	.byte	0xa
	.byte	0x64
	.long	0x62a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF123
	.byte	0xa
	.byte	0x65
	.long	0x630
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x5fc
	.uleb128 0x9
	.byte	0x2
	.long	0x5f1
	.uleb128 0x9
	.byte	0x2
	.long	0x5b8
	.uleb128 0x4
	.long	.LASF124
	.byte	0xa
	.byte	0x69
	.long	0x625
	.uleb128 0x4
	.long	.LASF125
	.byte	0x9
	.byte	0x51
	.long	0xde
	.uleb128 0x4
	.long	.LASF126
	.byte	0x9
	.byte	0x53
	.long	0x4c
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0x73
	.long	0x67d
	.uleb128 0x6
	.long	.LASF127
	.byte	0
	.uleb128 0x6
	.long	.LASF128
	.byte	0x1
	.uleb128 0x6
	.long	.LASF129
	.byte	0x2
	.uleb128 0x6
	.long	.LASF130
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF131
	.byte	0x9
	.byte	0x7d
	.long	0x657
	.uleb128 0x8
	.long	0x67d
	.uleb128 0x7
	.long	0x67d
	.uleb128 0x13
	.byte	0xa
	.byte	0x9
	.byte	0xe0
	.long	0x6ef
	.uleb128 0xe
	.long	.LASF132
	.byte	0x9
	.byte	0xe4
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF133
	.byte	0x9
	.byte	0xea
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF134
	.byte	0x9
	.byte	0xec
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF135
	.byte	0x9
	.byte	0xf3
	.long	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF136
	.byte	0x9
	.byte	0xf5
	.long	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF137
	.byte	0x9
	.byte	0xfb
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF138
	.byte	0x9
	.word	0x101
	.long	0x692
	.uleb128 0x7
	.long	0x6ef
	.uleb128 0x9
	.byte	0x2
	.long	0x6ef
	.uleb128 0x7
	.long	0x700
	.uleb128 0xb
	.long	.LASF139
	.byte	0x9
	.word	0x122
	.long	0x44b
	.uleb128 0x9
	.byte	0x2
	.long	0x70b
	.uleb128 0x7
	.long	0x717
	.uleb128 0xf
	.long	.LASF140
	.byte	0x4
	.byte	0x9
	.word	0x2c7
	.long	0x74e
	.uleb128 0x11
	.long	.LASF141
	.byte	0x9
	.word	0x2c9
	.long	0x75e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF142
	.byte	0x9
	.word	0x2cb
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x722
	.uleb128 0x14
	.long	0x71d
	.long	0x75e
	.uleb128 0x15
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x753
	.uleb128 0xb
	.long	.LASF143
	.byte	0x9
	.word	0x2cc
	.long	0x74e
	.uleb128 0x16
	.byte	0x12
	.byte	0x9
	.word	0x2d9
	.long	0x82d
	.uleb128 0x11
	.long	.LASF144
	.byte	0x9
	.word	0x2dc
	.long	0x717
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"rq"
	.byte	0x9
	.word	0x2ee
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF145
	.byte	0x9
	.word	0x2f0
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF146
	.byte	0x9
	.word	0x2ff
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF147
	.byte	0x9
	.word	0x301
	.long	0x688
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF148
	.byte	0x9
	.word	0x305
	.long	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF149
	.byte	0x9
	.word	0x307
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.long	.LASF150
	.byte	0x9
	.word	0x327
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.long	.LASF151
	.byte	0x9
	.word	0x329
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF152
	.byte	0x9
	.word	0x32b
	.long	0x64c
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.long	.LASF153
	.byte	0x9
	.word	0x32d
	.long	0x64c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF154
	.byte	0x9
	.word	0x330
	.long	0x64c
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xb
	.long	.LASF155
	.byte	0x9
	.word	0x33a
	.long	0x770
	.uleb128 0x7
	.long	0x82d
	.uleb128 0x16
	.byte	0xa
	.byte	0x9
	.word	0x344
	.long	0x893
	.uleb128 0x11
	.long	.LASF156
	.byte	0x9
	.word	0x34a
	.long	0x898
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF157
	.byte	0x9
	.word	0x351
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF158
	.byte	0x9
	.word	0x354
	.long	0x717
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF159
	.byte	0x9
	.word	0x35c
	.long	0x8ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF160
	.byte	0x9
	.word	0x35e
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x83e
	.uleb128 0x9
	.byte	0x2
	.long	0x82d
	.uleb128 0x7
	.long	0x898
	.uleb128 0x14
	.long	0x764
	.long	0x8ae
	.uleb128 0x15
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x8a3
	.uleb128 0xb
	.long	.LASF161
	.byte	0x9
	.word	0x36a
	.long	0x893
	.uleb128 0x16
	.byte	0x1
	.byte	0x9
	.word	0x36f
	.long	0x8d9
	.uleb128 0x11
	.long	.LASF162
	.byte	0x9
	.word	0x3b1
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.long	.LASF163
	.byte	0x9
	.word	0x3b3
	.long	0x8c0
	.uleb128 0x16
	.byte	0x6
	.byte	0x9
	.word	0x3c3
	.long	0x91c
	.uleb128 0x11
	.long	.LASF164
	.byte	0x9
	.word	0x3c5
	.long	0x921
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF141
	.byte	0x9
	.word	0x3d1
	.long	0x75e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF142
	.byte	0x9
	.word	0x3d4
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	0x8e5
	.uleb128 0x9
	.byte	0x2
	.long	0x8d9
	.uleb128 0xb
	.long	.LASF165
	.byte	0x9
	.word	0x3fc
	.long	0x91c
	.uleb128 0x17
	.long	.LASF166
	.byte	0xb
	.byte	0x3f
	.long	0x927
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF167
	.byte	0xb
	.byte	0x40
	.long	0x8b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF168
	.byte	0xb
	.byte	0x41
	.long	0x8d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF169
	.byte	0xb
	.byte	0x42
	.long	0x82d
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF170
	.byte	0x1
	.word	0xcf0
	.byte	0x1
	.long	0xfc
	.long	.LFB76
	.long	.LFE76
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x9b3
	.uleb128 0x19
	.long	.LASF172
	.byte	0x1
	.word	0xcf5
	.long	0xfc
	.long	.LLST81
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0xcf7
	.long	0x71d
	.uleb128 0x1b
	.long	0x1e38
	.long	.LBB608
	.long	.LBE608
	.byte	0x1
	.word	0xcf7
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF171
	.byte	0x1
	.word	0x8ca
	.byte	0x1
	.long	0x2ce
	.long	.LFB75
	.long	.LFE75
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xad4
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x1
	.word	0x8cc
	.long	0x1db
	.long	.LLST79
	.uleb128 0x1d
	.string	"ev"
	.byte	0x1
	.word	0x8cf
	.long	0x2ce
	.byte	0
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x8d1
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x8d7
	.long	0xae5
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x8d9
	.long	0x71d
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1
	.word	0x8db
	.long	0x706
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1f
	.long	.LBB597
	.long	.LBE597
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x8fd
	.long	0xb3
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB598
	.long	.LBE598
	.byte	0x1
	.word	0x8fd
	.long	0xa91
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB599
	.long	.LBE599
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB600
	.long	.LBE600
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB601
	.long	.LBE601
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST80
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB602
	.long	.LBE602
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x1e10
	.long	.LBB604
	.long	.LBE604
	.byte	0x1
	.word	0x904
	.uleb128 0x25
	.long	0x1e1e
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB605
	.long	.LBE605
	.byte	0x3
	.word	0x107
	.uleb128 0x25
	.long	0x1ec2
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB606
	.long	.LBE606
	.byte	0x2
	.byte	0x9a
	.uleb128 0x25
	.long	0x1ee8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x8b4
	.uleb128 0x7
	.long	0xad4
	.uleb128 0x9
	.byte	0x2
	.long	0x839
	.uleb128 0x7
	.long	0xadf
	.uleb128 0x18
	.byte	0x1
	.long	.LASF176
	.byte	0x1
	.word	0x860
	.byte	0x1
	.long	0x2ce
	.long	.LFB74
	.long	.LFE74
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xb95
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.word	0x862
	.long	0xf1
	.long	.LLST76
	.uleb128 0x26
	.long	.LASF179
	.byte	0x1
	.word	0x863
	.long	0x1e7
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x27
	.string	"ev"
	.byte	0x1
	.word	0x866
	.long	0x2ce
	.long	.LLST77
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.word	0x868
	.long	0xb9b
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x86a
	.long	0xada
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xf0
	.long	0xb79
	.uleb128 0x1a
	.long	.LASF181
	.byte	0x1
	.word	0x89f
	.long	0x71d
	.uleb128 0x19
	.long	.LASF182
	.byte	0x1
	.word	0x8a1
	.long	0xba6
	.long	.LLST78
	.byte	0
	.uleb128 0x24
	.long	0x1de5
	.long	.LBB593
	.long	.LBE593
	.byte	0x1
	.word	0x89a
	.uleb128 0x25
	.long	0x1df7
	.uleb128 0x25
	.long	0x1e03
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x927
	.uleb128 0x7
	.long	0xb95
	.uleb128 0x9
	.byte	0x2
	.long	0x6fb
	.uleb128 0x7
	.long	0xba0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF183
	.byte	0x1
	.word	0x802
	.byte	0x1
	.long	0x2ce
	.long	.LFB73
	.long	.LFE73
	.long	.LLST68
	.byte	0x1
	.long	0xd37
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.word	0x804
	.long	0xf1
	.long	.LLST69
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x1
	.word	0x805
	.long	0x1db
	.long	.LLST70
	.uleb128 0x2a
	.string	"ev"
	.byte	0x1
	.word	0x808
	.long	0x2ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.word	0x80a
	.long	0xb9b
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x80c
	.long	0xada
	.uleb128 0x2b
	.long	.LBB582
	.long	.LBE582
	.long	0xd1b
	.uleb128 0x19
	.long	.LASF184
	.byte	0x1
	.word	0x83b
	.long	0x471
	.long	.LLST71
	.uleb128 0x19
	.long	.LASF185
	.byte	0x1
	.word	0x83d
	.long	0x71d
	.long	.LLST72
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x83f
	.long	0xb3
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB583
	.long	.LBE583
	.byte	0x1
	.word	0x83f
	.long	0xca0
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB584
	.long	.LBE584
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB585
	.long	.LBE585
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB586
	.long	.LBE586
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST73
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB587
	.long	.LBE587
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1e10
	.long	.LBB589
	.long	.LBE589
	.byte	0x1
	.word	0x84a
	.long	0xcef
	.uleb128 0x2c
	.long	0x1e1e
	.byte	0x1
	.byte	0x61
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB590
	.long	.LBE590
	.byte	0x3
	.word	0x107
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST74
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB591
	.long	.LBE591
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LVL159
	.long	0x1fe6
	.long	0xd08
	.uleb128 0x2f
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
	.uleb128 0x30
	.long	.LVL161
	.long	0x1ff3
	.uleb128 0x30
	.long	.LVL162
	.long	0x2000
	.byte	0
	.uleb128 0x24
	.long	0x1de5
	.long	.LBB580
	.long	.LBE580
	.byte	0x1
	.word	0x837
	.uleb128 0x25
	.long	0x1df7
	.uleb128 0x25
	.long	0x1e03
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF186
	.byte	0x1
	.word	0x795
	.byte	0x1
	.long	0x2ce
	.long	.LFB72
	.long	.LFE72
	.long	.LLST60
	.byte	0x1
	.long	0xe97
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x1
	.word	0x797
	.long	0x1db
	.long	.LLST61
	.uleb128 0x1d
	.string	"ev"
	.byte	0x1
	.word	0x79a
	.long	0x2ce
	.byte	0
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x79c
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x79e
	.long	0x89e
	.uleb128 0x19
	.long	.LASF144
	.byte	0x1
	.word	0x7a0
	.long	0x71d
	.long	.LLST62
	.uleb128 0x19
	.long	.LASF174
	.byte	0x1
	.word	0x7a2
	.long	0x706
	.long	.LLST63
	.uleb128 0x1f
	.long	.LBB569
	.long	.LBE569
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x7d4
	.long	0xb3
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB570
	.long	.LBE570
	.byte	0x1
	.word	0x7d4
	.long	0xe16
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB571
	.long	.LBE571
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB572
	.long	.LBE572
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB573
	.long	.LBE573
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST64
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB574
	.long	.LBE574
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1e10
	.long	.LBB576
	.long	.LBE576
	.byte	0x1
	.word	0x7ee
	.long	0xe67
	.uleb128 0x2d
	.long	0x1e1e
	.long	.LLST65
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB577
	.long	.LBE577
	.byte	0x3
	.word	0x107
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST65
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB578
	.long	.LBE578
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LVL143
	.long	0x200d
	.long	0xe80
	.uleb128 0x2f
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 2
	.byte	0
	.uleb128 0x31
	.long	.LVL145
	.long	0x201a
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF187
	.byte	0x1
	.word	0x59a
	.byte	0x1
	.long	0x2ce
	.long	.LFB71
	.long	.LFE71
	.long	.LLST57
	.byte	0x1
	.long	0xf4a
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.word	0x59c
	.long	0xf1
	.long	.LLST58
	.uleb128 0x26
	.long	.LASF188
	.byte	0x1
	.word	0x59d
	.long	0x1c9
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x27
	.string	"ev"
	.byte	0x1
	.word	0x5a0
	.long	0x2ce
	.long	.LLST59
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.word	0x5a1
	.long	0xb9b
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x5a3
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x5a9
	.long	0xae5
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xd8
	.long	0xf2e
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x5cf
	.long	0x71d
	.uleb128 0x1a
	.long	.LASF189
	.byte	0x1
	.word	0x5d2
	.long	0x1b8
	.byte	0
	.uleb128 0x24
	.long	0x1de5
	.long	.LBB565
	.long	.LBE565
	.byte	0x1
	.word	0x5ca
	.uleb128 0x25
	.long	0x1df7
	.uleb128 0x25
	.long	0x1e03
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF190
	.byte	0x1
	.word	0x532
	.byte	0x1
	.long	0x2ce
	.long	.LFB70
	.long	.LFE70
	.long	.LLST51
	.byte	0x1
	.long	0xff6
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.word	0x534
	.long	0x107
	.long	.LLST52
	.uleb128 0x27
	.string	"ev"
	.byte	0x1
	.word	0x537
	.long	0x2ce
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x539
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x53f
	.long	0xae5
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x27
	.string	"tid"
	.byte	0x1
	.word	0x561
	.long	0xf1
	.long	.LLST54
	.uleb128 0x19
	.long	.LASF100
	.byte	0x1
	.word	0x563
	.long	0x71d
	.long	.LLST55
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x19
	.long	.LASF184
	.byte	0x1
	.word	0x574
	.long	0xff6
	.long	.LLST56
	.uleb128 0x32
	.long	.Ldebug_ranges0+0xb8
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x1
	.word	0x578
	.long	0x71d
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x461
	.uleb128 0x18
	.byte	0x1
	.long	.LASF192
	.byte	0x1
	.word	0x4ef
	.byte	0x1
	.long	0x2ce
	.long	.LFB69
	.long	.LFE69
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1156
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x1
	.word	0x4f1
	.long	0x2ce
	.long	.LLST43
	.uleb128 0x1d
	.string	"ev"
	.byte	0x1
	.word	0x4f4
	.long	0x2ce
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x4f5
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x4fb
	.long	0xae5
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x4fc
	.long	0xb3
	.uleb128 0x19
	.long	.LASF147
	.byte	0x1
	.word	0x4fd
	.long	0x68d
	.long	.LLST44
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB543
	.long	.LBE543
	.byte	0x1
	.word	0x4fc
	.long	0x10c2
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB544
	.long	.LBE544
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB545
	.long	.LBE545
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB546
	.long	.LBE546
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST45
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB547
	.long	.LBE547
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1d17
	.long	.LBB549
	.long	.LBE549
	.byte	0x1
	.word	0x51c
	.long	0x1108
	.uleb128 0x25
	.long	0x1d26
	.uleb128 0x2d
	.long	0x1d32
	.long	.LLST46
	.uleb128 0x1f
	.long	.LBB550
	.long	.LBE550
	.uleb128 0x22
	.long	0x1d3e
	.long	.LLST47
	.uleb128 0x1b
	.long	0x1f19
	.long	.LBB551
	.long	.LBE551
	.byte	0x3
	.word	0x2ba
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x1e10
	.long	.LBB553
	.long	.LBE553
	.byte	0x1
	.word	0x52c
	.uleb128 0x2d
	.long	0x1e1e
	.long	.LLST48
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB554
	.long	.LBE554
	.byte	0x3
	.word	0x107
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST48
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB555
	.long	.LBE555
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF194
	.byte	0x1
	.word	0x3ac
	.byte	0x1
	.long	0x2ce
	.long	.LFB68
	.long	.LFE68
	.long	.LLST39
	.byte	0x1
	.long	0x1275
	.uleb128 0x1d
	.string	"ev"
	.byte	0x1
	.word	0x3b1
	.long	0x2ce
	.byte	0
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x3b2
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x3b8
	.long	0xae5
	.uleb128 0x19
	.long	.LASF144
	.byte	0x1
	.word	0x3b9
	.long	0x71d
	.long	.LLST40
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.word	0x3ba
	.long	0x706
	.long	.LLST41
	.uleb128 0x1f
	.long	.LBB532
	.long	.LBE532
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x3ee
	.long	0xb3
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB533
	.long	.LBE533
	.byte	0x1
	.word	0x3ee
	.long	0x1225
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB534
	.long	.LBE534
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB535
	.long	.LBE535
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB536
	.long	.LBE536
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST42
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB537
	.long	.LBE537
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1e10
	.long	.LBB539
	.long	.LBE539
	.byte	0x1
	.word	0x3f8
	.long	0x126a
	.uleb128 0x25
	.long	0x1e1e
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB540
	.long	.LBE540
	.byte	0x3
	.word	0x107
	.uleb128 0x25
	.long	0x1ec2
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB541
	.long	.LBE541
	.byte	0x2
	.byte	0x9a
	.uleb128 0x25
	.long	0x1ee8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL95
	.long	0x2000
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF195
	.byte	0x1
	.word	0x339
	.byte	0x1
	.long	0x2ce
	.long	.LFB67
	.long	.LFE67
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x138d
	.uleb128 0x33
	.string	"ev"
	.byte	0x1
	.word	0x33e
	.long	0x2ce
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x340
	.long	0xada
	.uleb128 0x19
	.long	.LASF156
	.byte	0x1
	.word	0x348
	.long	0x89e
	.long	.LLST35
	.uleb128 0x19
	.long	.LASF144
	.byte	0x1
	.word	0x34a
	.long	0x71d
	.long	.LLST36
	.uleb128 0x1f
	.long	.LBB519
	.long	.LBE519
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x383
	.long	0xa8
	.uleb128 0x20
	.long	0x1edb
	.long	.LBB520
	.long	.LBE520
	.byte	0x1
	.word	0x388
	.long	0x12fe
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST37
	.byte	0
	.uleb128 0x1b
	.long	0x1f10
	.long	.LBB522
	.long	.LBE522
	.byte	0x1
	.word	0x38c
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB524
	.long	.LBE524
	.byte	0x1
	.word	0x390
	.long	0x1363
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB525
	.long	.LBE525
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB526
	.long	.LBE526
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB527
	.long	.LBE527
	.uleb128 0x34
	.long	0x1f05
	.byte	0x1
	.byte	0x68
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB528
	.long	.LBE528
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x1f48
	.long	.LBB530
	.long	.LBE530
	.byte	0x1
	.word	0x393
	.uleb128 0x2d
	.long	0x1f55
	.long	.LLST38
	.uleb128 0x25
	.long	0x1f60
	.uleb128 0x30
	.long	.LVL89
	.long	0x2027
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF196
	.byte	0x1
	.word	0x2b7
	.byte	0x1
	.long	0x2ce
	.long	.LFB66
	.long	.LFE66
	.long	.LLST26
	.byte	0x1
	.long	0x1571
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.word	0x2b9
	.long	0xf1
	.long	.LLST27
	.uleb128 0x27
	.string	"ev"
	.byte	0x1
	.word	0x2bc
	.long	0x2ce
	.long	.LLST28
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.word	0x2bd
	.long	0xb9b
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x2bf
	.long	0xada
	.uleb128 0x19
	.long	.LASF156
	.byte	0x1
	.word	0x2c7
	.long	0x89e
	.long	.LLST29
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x2c9
	.long	0x71d
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x60
	.long	0x1555
	.uleb128 0x19
	.long	.LASF197
	.byte	0x1
	.word	0x2ed
	.long	0x71d
	.long	.LLST30
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x68
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x304
	.long	0xa8
	.uleb128 0x20
	.long	0x1edb
	.long	.LBB500
	.long	.LBE500
	.byte	0x1
	.word	0x309
	.long	0x1447
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST31
	.byte	0
	.uleb128 0x1b
	.long	0x1f10
	.long	.LBB502
	.long	.LBE502
	.byte	0x1
	.word	0x30d
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB504
	.long	.LBE504
	.byte	0x1
	.word	0x311
	.long	0x14ae
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB505
	.long	.LBE505
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB506
	.long	.LBE506
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB507
	.long	.LBE507
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST32
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB508
	.long	.LBE508
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1f48
	.long	.LBB510
	.long	.LBE510
	.byte	0x1
	.word	0x31f
	.long	0x14d6
	.uleb128 0x25
	.long	0x1f55
	.uleb128 0x25
	.long	0x1f60
	.uleb128 0x30
	.long	.LVL76
	.long	0x2027
	.byte	0
	.uleb128 0x20
	.long	0x1e10
	.long	.LBB512
	.long	.LBE512
	.byte	0x1
	.word	0x322
	.long	0x1525
	.uleb128 0x2c
	.long	0x1e1e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB513
	.long	.LBE513
	.byte	0x3
	.word	0x107
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST33
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB514
	.long	.LBE514
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LVL77
	.long	0x2034
	.long	0x153e
	.uleb128 0x2f
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
	.uleb128 0x31
	.long	.LVL79
	.long	0x2041
	.uleb128 0x2f
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
	.byte	0
	.uleb128 0x24
	.long	0x1de5
	.long	.LBB496
	.long	.LBE496
	.byte	0x1
	.word	0x2e9
	.uleb128 0x25
	.long	0x1df7
	.uleb128 0x25
	.long	0x1e03
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF198
	.byte	0x1
	.word	0x268
	.byte	0x1
	.long	0x2ce
	.long	.LFB65
	.long	.LFE65
	.long	.LLST18
	.byte	0x1
	.long	0x16f9
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.word	0x26a
	.long	0xf1
	.long	.LLST19
	.uleb128 0x27
	.string	"ev"
	.byte	0x1
	.word	0x26d
	.long	0x2ce
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.word	0x26e
	.long	0xb9b
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x270
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x276
	.long	0xae5
	.uleb128 0x2b
	.long	.LBB484
	.long	.LBE484
	.long	0x16dd
	.uleb128 0x19
	.long	.LASF197
	.byte	0x1
	.word	0x294
	.long	0x71d
	.long	.LLST21
	.uleb128 0x1f
	.long	.LBB485
	.long	.LBE485
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x297
	.long	0xb3
	.uleb128 0x20
	.long	0x1e2b
	.long	.LBB486
	.long	.LBE486
	.byte	0x1
	.word	0x297
	.long	0x165c
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB487
	.long	.LBE487
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB488
	.long	.LBE488
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB489
	.long	.LBE489
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST22
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB490
	.long	.LBE490
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1e10
	.long	.LBB492
	.long	.LBE492
	.byte	0x1
	.word	0x29f
	.long	0x16ad
	.uleb128 0x2d
	.long	0x1e1e
	.long	.LLST23
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB493
	.long	.LBE493
	.byte	0x3
	.word	0x107
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST23
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB494
	.long	.LBE494
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LVL60
	.long	0x2034
	.long	0x16c6
	.uleb128 0x2f
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
	.uleb128 0x31
	.long	.LVL63
	.long	0x204e
	.uleb128 0x2f
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
	.byte	0
	.uleb128 0x24
	.long	0x1de5
	.long	.LBB482
	.long	.LBE482
	.byte	0x1
	.word	0x28f
	.uleb128 0x25
	.long	0x1df7
	.uleb128 0x25
	.long	0x1e03
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF199
	.byte	0x1
	.word	0x249
	.byte	0x1
	.long	0xe6
	.long	.LFB64
	.long	.LFE64
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1741
	.uleb128 0x19
	.long	.LASF148
	.byte	0x1
	.word	0x24e
	.long	0xe6
	.long	.LLST17
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x250
	.long	0xada
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x256
	.long	0xae5
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF200
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0x2ce
	.long	.LFB63
	.long	.LFE63
	.long	.LLST5
	.byte	0x1
	.long	0x19bf
	.uleb128 0x36
	.long	.LASF201
	.byte	0x1
	.byte	0xeb
	.long	0xe6
	.long	.LLST6
	.uleb128 0x37
	.string	"ev"
	.byte	0x1
	.byte	0xee
	.long	0x2ce
	.byte	0
	.uleb128 0x38
	.long	.LASF202
	.byte	0x1
	.byte	0xef
	.long	0xe6
	.long	.LLST7
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0xf5
	.long	0xada
	.uleb128 0x39
	.long	.LASF156
	.byte	0x1
	.byte	0xf6
	.long	0x89e
	.uleb128 0x39
	.long	.LASF175
	.byte	0x1
	.byte	0xf7
	.long	0xb3
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x18
	.long	0x18ef
	.uleb128 0x1e
	.long	.LASF203
	.byte	0x1
	.word	0x118
	.long	0x71d
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x30
	.long	0x1883
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x1d1
	.long	0x1f9
	.long	.LLST12
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x1
	.word	0x1d2
	.long	0x1f9
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.long	.LASF205
	.byte	0x1
	.word	0x1d4
	.long	0x19c5
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.word	0x1d7
	.long	0x19d0
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.long	.LASF207
	.byte	0x1
	.word	0x1d9
	.long	0x19db
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x19
	.long	.LASF208
	.byte	0x1
	.word	0x1e6
	.long	0x71d
	.long	.LLST13
	.uleb128 0x19
	.long	.LASF209
	.byte	0x1
	.word	0x1e8
	.long	0x706
	.long	.LLST14
	.uleb128 0x20
	.long	0x1fbe
	.long	.LBB475
	.long	.LBE475
	.byte	0x1
	.word	0x1ee
	.long	0x186c
	.uleb128 0x25
	.long	0x1fcf
	.uleb128 0x1f
	.long	.LBB476
	.long	.LBE476
	.uleb128 0x22
	.long	0x1fda
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LVL48
	.long	0x205b
	.uleb128 0x2f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1dca
	.long	.LBB471
	.long	.LBE471
	.byte	0x1
	.word	0x185
	.long	0x18a6
	.uleb128 0x25
	.long	0x1dd8
	.uleb128 0x30
	.long	.LVL30
	.long	0x2068
	.byte	0
	.uleb128 0x20
	.long	0x1f2f
	.long	.LBB478
	.long	.LBE478
	.byte	0x1
	.word	0x21a
	.long	0x18d9
	.uleb128 0x2d
	.long	0x1f3c
	.long	.LLST16
	.uleb128 0x31
	.long	.LVL39
	.long	0x2076
	.uleb128 0x2f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LVL40
	.long	0x2083
	.uleb128 0x2f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x1e2b
	.long	.LBB458
	.long	.LBE458
	.byte	0x1
	.byte	0xf7
	.long	0x1945
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB459
	.long	.LBE459
	.byte	0x3
	.byte	0xfe
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB460
	.long	.LBE460
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB461
	.long	.LBE461
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST8
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB462
	.long	.LBE462
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1e10
	.long	.LBB464
	.long	.LBE464
	.byte	0x1
	.word	0x242
	.long	0x1996
	.uleb128 0x2d
	.long	0x1e1e
	.long	.LLST9
	.uleb128 0x24
	.long	0x1eb5
	.long	.LBB465
	.long	.LBE465
	.byte	0x3
	.word	0x107
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST10
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB466
	.long	.LBE466
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x1e8d
	.long	.LBB468
	.long	.LBE468
	.byte	0x1
	.word	0x108
	.uleb128 0x1f
	.long	.LBB469
	.long	.LBE469
	.uleb128 0x34
	.long	0x1e9e
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3b
	.long	0x1ea9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x764
	.uleb128 0x7
	.long	0x19bf
	.uleb128 0x9
	.byte	0x2
	.long	0x466
	.uleb128 0x7
	.long	0x19ca
	.uleb128 0x9
	.byte	0x2
	.long	0x471
	.uleb128 0x7
	.long	0x19d5
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF210
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1a43
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0xd4
	.long	0xada
	.uleb128 0x39
	.long	.LASF156
	.byte	0x1
	.byte	0xd5
	.long	0x89e
	.uleb128 0x21
	.long	0x1eb5
	.long	.LBB434
	.long	.LBE434
	.byte	0x1
	.byte	0xdf
	.uleb128 0x2d
	.long	0x1ec2
	.long	.LLST3
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB435
	.long	.LBE435
	.byte	0x2
	.byte	0x9a
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF211
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1b17
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0xb4
	.long	0xada
	.uleb128 0x3d
	.long	.LASF156
	.byte	0x1
	.byte	0xb5
	.long	0x89e
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2b
	.long	.LBB424
	.long	.LBE424
	.long	0x1ad5
	.uleb128 0x39
	.long	.LASF175
	.byte	0x1
	.byte	0xbc
	.long	0xb3
	.uleb128 0x21
	.long	0x1ece
	.long	.LBB425
	.long	.LBE425
	.byte	0x1
	.byte	0xbc
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB426
	.long	.LBE426
	.byte	0x2
	.byte	0x93
	.uleb128 0x1f
	.long	.LBB427
	.long	.LBE427
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST2
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB428
	.long	.LBE428
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x1d17
	.long	.LBB430
	.long	.LBE430
	.byte	0x1
	.byte	0xc5
	.uleb128 0x25
	.long	0x1d26
	.uleb128 0x3e
	.long	0x1d32
	.byte	0x19
	.uleb128 0x1f
	.long	.LBB431
	.long	.LBE431
	.uleb128 0x34
	.long	0x1d3e
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1b
	.long	0x1f19
	.long	.LBB432
	.long	.LBE432
	.byte	0x3
	.word	0x2ba
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF212
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1b61
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0x9a
	.long	0xada
	.uleb128 0x39
	.long	.LASF156
	.byte	0x1
	.byte	0x9b
	.long	0x89e
	.uleb128 0x21
	.long	0x1edb
	.long	.LBB422
	.long	.LBE422
	.byte	0x1
	.byte	0xa5
	.uleb128 0x2d
	.long	0x1ee8
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF213
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1c44
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0x86
	.long	0xada
	.uleb128 0x3d
	.long	.LASF156
	.byte	0x1
	.byte	0x87
	.long	0x89e
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3f
	.long	0x1c44
	.long	.LBB409
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8d
	.uleb128 0x25
	.long	0x1c51
	.uleb128 0x2c
	.long	0x1c5c
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x40
	.long	0x1c67
	.long	.LBB411
	.long	.LBE411
	.long	0x1c01
	.uleb128 0x3b
	.long	0x1c68
	.uleb128 0x21
	.long	0x1ef4
	.long	.LBB412
	.long	.LBE412
	.byte	0x1
	.byte	0x72
	.uleb128 0x1f
	.long	.LBB413
	.long	.LBE413
	.uleb128 0x22
	.long	0x1f05
	.long	.LLST0
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB414
	.long	.LBE414
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x1d17
	.long	.LBB416
	.long	.LBE416
	.byte	0x1
	.byte	0x7b
	.uleb128 0x25
	.long	0x1d26
	.uleb128 0x3e
	.long	0x1d32
	.byte	0x19
	.uleb128 0x1f
	.long	.LBB417
	.long	.LBE417
	.uleb128 0x34
	.long	0x1d3e
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1b
	.long	0x1f19
	.long	.LBB418
	.long	.LBE418
	.byte	0x3
	.word	0x2ba
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	.LASF216
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.long	0x1c75
	.uleb128 0x42
	.long	.LASF173
	.byte	0x1
	.byte	0x6d
	.long	0xada
	.uleb128 0x42
	.long	.LASF156
	.byte	0x1
	.byte	0x6e
	.long	0x89e
	.uleb128 0x43
	.uleb128 0x39
	.long	.LASF175
	.byte	0x1
	.byte	0x72
	.long	0xb3
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1cb5
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0x59
	.long	0xada
	.uleb128 0x39
	.long	.LASF156
	.byte	0x1
	.byte	0x5a
	.long	0x89e
	.uleb128 0x23
	.long	0x1f10
	.long	.LBB395
	.long	.LBE395
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF215
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1cfc
	.uleb128 0x39
	.long	.LASF173
	.byte	0x1
	.byte	0x41
	.long	0xada
	.uleb128 0x3d
	.long	.LASF156
	.byte	0x1
	.byte	0x42
	.long	0x89e
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x23
	.long	0x1f19
	.long	.LBB393
	.long	.LBE393
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x44
	.long	.LASF217
	.byte	0x3
	.word	0x3ed
	.byte	0x1
	.byte	0x3
	.long	0x1d17
	.uleb128 0x45
	.long	.LASF173
	.byte	0x3
	.word	0x3ef
	.long	0xad4
	.byte	0
	.uleb128 0x46
	.long	.LASF223
	.byte	0x3
	.word	0x2ae
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.long	0x1d4b
	.uleb128 0x45
	.long	.LASF173
	.byte	0x3
	.word	0x2b0
	.long	0xad4
	.uleb128 0x45
	.long	.LASF193
	.byte	0x3
	.word	0x2b1
	.long	0x2ce
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x3
	.word	0x2b4
	.long	0x89e
	.byte	0
	.uleb128 0x47
	.long	.LASF237
	.byte	0x3
	.word	0x283
	.byte	0x1
	.byte	0x3
	.uleb128 0x44
	.long	.LASF218
	.byte	0x3
	.word	0x1f8
	.byte	0x1
	.byte	0x3
	.long	0x1d7c
	.uleb128 0x45
	.long	.LASF156
	.byte	0x3
	.word	0x1fa
	.long	0xadf
	.uleb128 0x45
	.long	.LASF219
	.byte	0x3
	.word	0x1fb
	.long	0x385
	.byte	0
	.uleb128 0x44
	.long	.LASF220
	.byte	0x3
	.word	0x1e0
	.byte	0x1
	.byte	0x3
	.long	0x1da3
	.uleb128 0x45
	.long	.LASF156
	.byte	0x3
	.word	0x1e2
	.long	0xadf
	.uleb128 0x45
	.long	.LASF193
	.byte	0x3
	.word	0x1e3
	.long	0x2ce
	.byte	0
	.uleb128 0x44
	.long	.LASF221
	.byte	0x3
	.word	0x1c3
	.byte	0x1
	.byte	0x3
	.long	0x1dca
	.uleb128 0x45
	.long	.LASF156
	.byte	0x3
	.word	0x1c5
	.long	0xadf
	.uleb128 0x45
	.long	.LASF193
	.byte	0x3
	.word	0x1c6
	.long	0x2ce
	.byte	0
	.uleb128 0x44
	.long	.LASF222
	.byte	0x3
	.word	0x144
	.byte	0x1
	.byte	0x3
	.long	0x1de5
	.uleb128 0x45
	.long	.LASF156
	.byte	0x3
	.word	0x146
	.long	0xadf
	.byte	0
	.uleb128 0x48
	.long	.LASF224
	.byte	0x3
	.word	0x10b
	.byte	0x1
	.long	0x98
	.byte	0x3
	.long	0x1e10
	.uleb128 0x45
	.long	.LASF180
	.byte	0x3
	.word	0x10d
	.long	0xb95
	.uleb128 0x49
	.string	"tid"
	.byte	0x3
	.word	0x10e
	.long	0xf1
	.byte	0
	.uleb128 0x44
	.long	.LASF225
	.byte	0x3
	.word	0x102
	.byte	0x1
	.byte	0x3
	.long	0x1e2b
	.uleb128 0x45
	.long	.LASF175
	.byte	0x3
	.word	0x104
	.long	0xa8
	.byte	0
	.uleb128 0x4a
	.long	.LASF226
	.byte	0x3
	.byte	0xf9
	.byte	0x1
	.long	0xa8
	.byte	0x3
	.uleb128 0x4a
	.long	.LASF227
	.byte	0x3
	.byte	0xa7
	.byte	0x1
	.long	0x717
	.byte	0x3
	.uleb128 0x41
	.long	.LASF228
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.long	0x1e69
	.uleb128 0x42
	.long	.LASF156
	.byte	0x3
	.byte	0x96
	.long	0xadf
	.uleb128 0x42
	.long	.LASF219
	.byte	0x3
	.byte	0x97
	.long	0x391
	.byte	0
	.uleb128 0x41
	.long	.LASF229
	.byte	0x3
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.long	0x1e8d
	.uleb128 0x42
	.long	.LASF156
	.byte	0x3
	.byte	0x8a
	.long	0xadf
	.uleb128 0x42
	.long	.LASF219
	.byte	0x3
	.byte	0x8b
	.long	0x391
	.byte	0
	.uleb128 0x4b
	.long	.LASF230
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.long	0x98
	.byte	0x3
	.long	0x1eb5
	.uleb128 0x4c
	.string	"ivt"
	.byte	0x2
	.byte	0xad
	.long	0xd9
	.uleb128 0x39
	.long	.LASF231
	.byte	0x2
	.byte	0xae
	.long	0xa3
	.byte	0
	.uleb128 0x41
	.long	.LASF232
	.byte	0x2
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.long	0x1ece
	.uleb128 0x42
	.long	.LASF233
	.byte	0x2
	.byte	0x98
	.long	0xa8
	.byte	0
	.uleb128 0x4a
	.long	.LASF234
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.long	0xa8
	.byte	0x3
	.uleb128 0x41
	.long	.LASF235
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.long	0x1ef4
	.uleb128 0x42
	.long	.LASF175
	.byte	0x2
	.byte	0x79
	.long	0xa8
	.byte	0
	.uleb128 0x4b
	.long	.LASF236
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0xa8
	.byte	0x3
	.long	0x1f10
	.uleb128 0x4c
	.string	"sr"
	.byte	0x2
	.byte	0x74
	.long	0xa8
	.byte	0
	.uleb128 0x4d
	.long	.LASF238
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.uleb128 0x4d
	.long	.LASF239
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x4a
	.long	.LASF240
	.byte	0x4
	.byte	0xa5
	.byte	0x1
	.long	0x98
	.byte	0x3
	.uleb128 0x41
	.long	.LASF241
	.byte	0x4
	.byte	0x91
	.byte	0x1
	.byte	0x3
	.long	0x1f48
	.uleb128 0x42
	.long	.LASF203
	.byte	0x4
	.byte	0x93
	.long	0x717
	.byte	0
	.uleb128 0x41
	.long	.LASF242
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.long	0x1f6c
	.uleb128 0x42
	.long	.LASF243
	.byte	0x4
	.byte	0x89
	.long	0x1f6c
	.uleb128 0x42
	.long	.LASF244
	.byte	0x4
	.byte	0x8a
	.long	0x641
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x636
	.uleb128 0x41
	.long	.LASF245
	.byte	0xb
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.long	0x1f8b
	.uleb128 0x42
	.long	.LASF173
	.byte	0xb
	.byte	0x7a
	.long	0xada
	.byte	0
	.uleb128 0x41
	.long	.LASF246
	.byte	0xb
	.byte	0x69
	.byte	0x1
	.byte	0x3
	.long	0x1fa4
	.uleb128 0x42
	.long	.LASF173
	.byte	0xb
	.byte	0x69
	.long	0xada
	.byte	0
	.uleb128 0x4a
	.long	.LASF247
	.byte	0xb
	.byte	0x54
	.byte	0x1
	.long	0xb95
	.byte	0x3
	.uleb128 0x4a
	.long	.LASF248
	.byte	0xb
	.byte	0x4b
	.byte	0x1
	.long	0xad4
	.byte	0x3
	.uleb128 0x4b
	.long	.LASF249
	.byte	0x5
	.byte	0x5d
	.byte	0x1
	.long	0x471
	.byte	0x3
	.long	0x1fe6
	.uleb128 0x42
	.long	.LASF250
	.byte	0x5
	.byte	0x5f
	.long	0x19d5
	.uleb128 0x39
	.long	.LASF251
	.byte	0x5
	.byte	0x62
	.long	0x471
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF252
	.long	.LASF252
	.byte	0x3
	.byte	0xc6
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF253
	.long	.LASF253
	.byte	0xc
	.byte	0x94
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF254
	.long	.LASF254
	.byte	0xc
	.byte	0x85
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF255
	.long	.LASF255
	.byte	0xc
	.byte	0x5b
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF256
	.long	.LASF256
	.byte	0x3
	.byte	0x58
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF257
	.long	.LASF257
	.byte	0x4
	.byte	0x77
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF258
	.long	.LASF258
	.byte	0x3
	.byte	0xb0
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF259
	.long	.LASF259
	.byte	0xc
	.byte	0x7e
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF260
	.long	.LASF260
	.byte	0xc
	.byte	0x77
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF261
	.long	.LASF261
	.byte	0xc
	.byte	0x46
	.uleb128 0x4f
	.byte	0x1
	.byte	0x1
	.long	.LASF262
	.long	.LASF262
	.byte	0xd
	.word	0x3c1
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF263
	.long	.LASF263
	.byte	0x4
	.byte	0x68
	.uleb128 0x4e
	.byte	0x1
	.byte	0x1
	.long	.LASF264
	.long	.LASF264
	.byte	0x3
	.byte	0xbf
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
.LLST81:
	.long	.LVL180
	.long	.LVL181
	.word	0x1
	.byte	0x68
	.long	.LVL182
	.long	.LFE76
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL173
	.long	.LVL177
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL177
	.long	.LFE75
	.word	0x4
	.byte	0x82
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL175
	.long	.LVL176
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST76:
	.long	.LVL164
	.long	.LVL165
	.word	0x1
	.byte	0x68
	.long	.LVL165
	.long	.LVL169
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL169
	.long	.LVL170
	.word	0x1
	.byte	0x68
	.long	.LVL170
	.long	.LFE74
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST77:
	.long	.LVL168
	.long	.LVL169
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL172
	.long	.LFE74
	.word	0x2
	.byte	0x3e
	.byte	0x9f
	.long	0
	.long	0
.LLST78:
	.long	.LVL166
	.long	.LVL167
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL167
	.long	.LVL169
	.word	0x6
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	.LVL171
	.long	.LFE74
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST68:
	.long	.LFB73
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI48
	.long	.LFE73
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	0
	.long	0
.LLST69:
	.long	.LVL150
	.long	.LVL152
	.word	0x1
	.byte	0x68
	.long	.LVL152
	.long	.LVL154
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL154
	.long	.LVL155
	.word	0x1
	.byte	0x68
	.long	.LVL155
	.long	.LFE73
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL150
	.long	.LVL153
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL153
	.long	.LVL154
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL154
	.long	.LVL159-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL159-1
	.long	.LFE73
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST71:
	.long	.LVL159
	.long	.LVL160
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL160
	.long	.LVL161-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST72:
	.long	.LVL156
	.long	.LVL159-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST73:
	.long	.LVL157
	.long	.LVL158
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST74:
	.long	.LVL162
	.long	.LVL163
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST60:
	.long	.LFB72
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI43
	.long	.LFE72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST61:
	.long	.LVL136
	.long	.LVL142
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL142
	.long	.LVL143-1
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LVL143-1
	.long	.LFE72
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL138
	.long	.LVL149
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST63:
	.long	.LVL139
	.long	.LVL148
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST64:
	.long	.LVL140
	.long	.LVL141
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST65:
	.long	.LVL146
	.long	.LVL147
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST57:
	.long	.LFB71
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI36
	.long	.LFE71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST58:
	.long	.LVL125
	.long	.LVL129
	.word	0x1
	.byte	0x68
	.long	.LVL129
	.long	.LVL132
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL132
	.long	.LVL133
	.word	0x1
	.byte	0x68
	.long	.LVL133
	.long	.LVL134
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL134
	.long	.LVL135
	.word	0x1
	.byte	0x68
	.long	.LVL135
	.long	.LFE71
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL130
	.long	.LVL131
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LFB70
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI34
	.long	.LFE70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST52:
	.long	.LVL109
	.long	.LVL111
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL111
	.long	.LFE70
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST53:
	.long	.LVL116
	.long	.LVL118
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL112
	.long	.LVL115
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL115
	.long	.LVL117
	.word	0x1
	.byte	0x69
	.long	.LVL117
	.long	.LVL118
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	.LVL119
	.long	.LFE70
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL113
	.long	.LVL114
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL119
	.long	.LVL120
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST56:
	.long	.LVL121
	.long	.LVL122
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL123
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
.LLST43:
	.long	.LVL99
	.long	.LVL106
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LFE69
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST44:
	.long	.LVL103
	.long	.LVL104
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL104
	.long	.LFE69
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL101
	.long	.LVL102
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST46:
	.long	.LVL105
	.long	.LVL106
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LVL107
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST47:
	.long	.LVL105
	.long	.LVL107
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST48:
	.long	.LVL107
	.long	.LVL108
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST39:
	.long	.LFB68
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI32
	.long	.LFE68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST40:
	.long	.LVL91
	.long	.LVL97
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST41:
	.long	.LVL92
	.long	.LVL98
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL98
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
.LLST42:
	.long	.LVL93
	.long	.LVL94
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST35:
	.long	.LVL84
	.long	.LVL89-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST36:
	.long	.LVL85
	.long	.LVL89-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST37:
	.long	.LVL86
	.long	.LVL87
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST38:
	.long	.LVL88
	.long	.LVL89-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LFB66
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI27
	.long	.LFE66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST27:
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x68
	.long	.LVL68
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL75
	.long	.LVL76
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL78
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL82
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
.LLST29:
	.long	.LVL76
	.long	.LVL80
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82
	.long	.LFE66
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
	.long	.LVL69
	.long	.LVL80
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82
	.long	.LFE66
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST31:
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST32:
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST33:
	.long	.LVL82
	.long	.LVL83
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST18:
	.long	.LFB65
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI22
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST19:
	.long	.LVL54
	.long	.LVL56
	.word	0x1
	.byte	0x68
	.long	.LVL56
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
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
	.long	.LVL64
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LFE65
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL57
	.long	.LVL64
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST23:
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST17:
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL53
	.long	.LFE64
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB63
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
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI17
	.long	.LFE63
	.word	0x2
	.byte	0x8c
	.sleb128 20
	.long	0
	.long	0
.LLST6:
	.long	.LVL18
	.long	.LVL25
	.word	0x1
	.byte	0x68
	.long	.LVL25
	.long	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x68
	.long	.LVL27
	.long	.LVL34
	.word	0x1
	.byte	0x5f
	.long	.LVL34
	.long	.LFE63
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL25
	.word	0x1
	.byte	0x68
	.long	.LVL25
	.long	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x68
	.long	.LVL27
	.long	.LVL34
	.word	0x1
	.byte	0x5f
	.long	.LVL34
	.long	.LFE63
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL33
	.long	.LVL35
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LFE63
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL42
	.long	.LVL48-1
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
	.long	.LVL43
	.long	.LVL45
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL21
	.long	.LVL22
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST9:
	.long	.LVL23
	.long	.LVL25
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST10:
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST0:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xb4
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
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	.LFB70
	.long	.LFE70-.LFB70
	.long	.LFB71
	.long	.LFE71-.LFB71
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	.LFB73
	.long	.LFE73-.LFB73
	.long	.LFB74
	.long	.LFE74-.LFB74
	.long	.LFB75
	.long	.LFE75-.LFB75
	.long	.LFB76
	.long	.LFE76-.LFB76
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB409
	.long	.LBE409
	.long	.LBB421
	.long	.LBE421
	.long	0
	.long	0
	.long	.LBB470
	.long	.LBE470
	.long	.LBB481
	.long	.LBE481
	.long	0
	.long	0
	.long	.LBB473
	.long	.LBE473
	.long	.LBB480
	.long	.LBE480
	.long	0
	.long	0
	.long	.LBB474
	.long	.LBE474
	.long	.LBB477
	.long	.LBE477
	.long	0
	.long	0
	.long	.LBB498
	.long	.LBE498
	.long	.LBB517
	.long	.LBE517
	.long	.LBB518
	.long	.LBE518
	.long	0
	.long	0
	.long	.LBB557
	.long	.LBE557
	.long	.LBB564
	.long	.LBE564
	.long	0
	.long	0
	.long	.LBB558
	.long	.LBE558
	.long	.LBB562
	.long	.LBE562
	.long	.LBB563
	.long	.LBE563
	.long	0
	.long	0
	.long	.LBB559
	.long	.LBE559
	.long	.LBB560
	.long	.LBE560
	.long	.LBB561
	.long	.LBE561
	.long	0
	.long	0
	.long	.LBB567
	.long	.LBE567
	.long	.LBB568
	.long	.LBE568
	.long	0
	.long	0
	.long	.LBB595
	.long	.LBE595
	.long	.LBB596
	.long	.LBE596
	.long	0
	.long	0
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB67
	.long	.LFE67
	.long	.LFB68
	.long	.LFE68
	.long	.LFB69
	.long	.LFE69
	.long	.LFB70
	.long	.LFE70
	.long	.LFB71
	.long	.LFE71
	.long	.LFB72
	.long	.LFE72
	.long	.LFB73
	.long	.LFE73
	.long	.LFB74
	.long	.LFE74
	.long	.LFB75
	.long	.LFE75
	.long	.LFB76
	.long	.LFE76
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF246:
	.string	"osEE_lock_core"
.LASF203:
	.string	"p_idle_tdb"
.LASF73:
	.string	"OSServiceId_ActivateTask"
.LASF15:
	.string	"OsEE_event_mask"
.LASF159:
	.string	"p_autostart_tdb_array"
.LASF146:
	.string	"p_stk_sn"
.LASF148:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF89:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF186:
	.string	"WaitEvent"
.LASF95:
	.string	"OSId_Kernel"
.LASF197:
	.string	"p_tdb_act"
.LASF24:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF59:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF251:
	.string	"p_sn_allocated"
.LASF76:
	.string	"OSServiceId_Schedule"
.LASF192:
	.string	"ShutdownOS"
.LASF165:
	.string	"OsEE_KDB"
.LASF98:
	.string	"OSServiceIdType"
.LASF27:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF259:
	.string	"osEE_scheduler_task_insert"
.LASF184:
	.string	"p_sn"
.LASF9:
	.string	"long long unsigned int"
.LASF258:
	.string	"osEE_task_activated"
.LASF88:
	.string	"OSServiceId_WaitEvent"
.LASF72:
	.string	"StatusType"
.LASF36:
	.string	"OsEE_task_status"
.LASF228:
	.string	"osEE_orti_trace_service_exit"
.LASF116:
	.string	"OsEE_SCB"
.LASF79:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF30:
	.string	"OSEE_TASK_SUSPENDED"
.LASF213:
	.string	"SuspendAllInterrupts"
.LASF26:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF161:
	.string	"OsEE_CDB"
.LASF104:
	.string	"task_type"
.LASF166:
	.string	"osEE_kdb_var"
.LASF145:
	.string	"p_free_sn"
.LASF139:
	.string	"OsEE_TDB"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF74:
	.string	"OSServiceId_TerminateTask"
.LASF39:
	.string	"EventMaskType"
.LASF92:
	.string	"OSId_TaskBody"
.LASF231:
	.string	"cpu_startos_ok"
.LASF234:
	.string	"osEE_hal_begin_nested_primitive"
.LASF58:
	.string	"E_OS_PROTECTION_TIME"
.LASF70:
	.string	"E_OS_SYS_ACT"
.LASF158:
	.string	"p_idle_task"
.LASF187:
	.string	"GetTaskState"
.LASF202:
	.string	"real_mode"
.LASF218:
	.string	"osEE_set_service_id"
.LASF81:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF28:
	.string	"OsEE_task_type"
.LASF212:
	.string	"ResumeAllInterrupts"
.LASF222:
	.string	"osEE_call_startup_hook"
.LASF21:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF264:
	.string	"osEE_task_end"
.LASF216:
	.string	"osEE_suspend_all_interrupts"
.LASF97:
	.string	"OsEE_service_id_type"
.LASF65:
	.string	"E_OS_CORE"
.LASF43:
	.string	"E_OS_ACCESS"
.LASF226:
	.string	"osEE_begin_primitive"
.LASF124:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF131:
	.string	"OsEE_kernel_status"
.LASF120:
	.string	"OsEE_SDB"
.LASF42:
	.string	"E_OK"
.LASF115:
	.string	"p_tos"
.LASF82:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF252:
	.string	"osEE_task_event_set_mask"
.LASF45:
	.string	"E_OS_ID"
.LASF179:
	.string	"Event"
.LASF106:
	.string	"ready_prio"
.LASF41:
	.string	"MemSize"
.LASF201:
	.string	"Mode"
.LASF224:
	.string	"osEE_is_valid_tid"
.LASF67:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF128:
	.string	"OSEE_KERNEL_STARTING"
.LASF162:
	.string	"dummy"
.LASF60:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF105:
	.string	"task_func"
.LASF255:
	.string	"osEE_scheduler_core_pop_running"
.LASF108:
	.string	"max_num_of_act"
.LASF160:
	.string	"autostart_tdb_array_size"
.LASF263:
	.string	"osEE_hal_save_ctx_and_ready2stacked"
.LASF0:
	.string	"unsigned int"
.LASF135:
	.string	"wait_mask"
.LASF243:
	.string	"p_to_term"
.LASF80:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF11:
	.string	"OSEE_TRUE"
.LASF8:
	.string	"long unsigned int"
.LASF244:
	.string	"kernel_cb"
.LASF57:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF223:
	.string	"osEE_shutdown_os"
.LASF164:
	.string	"p_kcb"
.LASF235:
	.string	"osEE_hal_resumeIRQ"
.LASF266:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\test\\erika\\src\\ee_oo_api_osek.c"
.LASF215:
	.string	"DisableAllInterrupts"
.LASF23:
	.string	"TaskFunc"
.LASF239:
	.string	"osEE_hal_disableIRQ"
.LASF18:
	.string	"TaskType"
.LASF180:
	.string	"p_kdb"
.LASF256:
	.string	"osEE_change_context_from_running"
.LASF207:
	.string	"pp_free_sn"
.LASF237:
	.string	"osEE_shutdown_os_extra"
.LASF182:
	.string	"p_tcb_event"
.LASF147:
	.string	"os_status"
.LASF17:
	.string	"AppModeType"
.LASF102:
	.string	"OsEE_TDB_tag"
.LASF114:
	.string	"OsEE_SCB_tag"
.LASF227:
	.string	"osEE_get_curr_task"
.LASF35:
	.string	"OSEE_TASK_CHAINED"
.LASF242:
	.string	"osEE_hal_terminate_activation"
.LASF110:
	.string	"OsEE_RQ"
.LASF155:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF157:
	.string	"p_idle_hook"
.LASF172:
	.string	"isr_id"
.LASF150:
	.string	"prev_s_isr_all_status"
.LASF96:
	.string	"OsId_Invalid"
.LASF171:
	.string	"ClearEvent"
.LASF262:
	.string	"StartupHook"
.LASF153:
	.string	"s_isr_os_cnt"
.LASF49:
	.string	"E_OS_STATE"
.LASF33:
	.string	"OSEE_TASK_WAITING"
.LASF206:
	.string	"p_rq"
.LASF154:
	.string	"d_isr_all_cnt"
.LASF193:
	.string	"Error"
.LASF195:
	.string	"TerminateTask"
.LASF144:
	.string	"p_curr"
.LASF241:
	.string	"osEE_idle_task_start"
.LASF190:
	.string	"GetTaskID"
.LASF130:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF68:
	.string	"E_OS_SYS_TASK"
.LASF75:
	.string	"OSServiceId_ChainTask"
.LASF2:
	.string	"long double"
.LASF181:
	.string	"p_tdb_event"
.LASF143:
	.string	"OsEE_autostart_tdb"
.LASF22:
	.string	"TaskActivation"
.LASF214:
	.string	"EnableAllInterrupts"
.LASF56:
	.string	"E_OS_PARAM_POINTER"
.LASF136:
	.string	"event_mask"
.LASF118:
	.string	"p_bos"
.LASF54:
	.string	"E_OS_DISABLEDINT"
.LASF163:
	.string	"OsEE_KCB"
.LASF109:
	.string	"OsEE_SN"
.LASF78:
	.string	"OSServiceId_GetTaskState"
.LASF53:
	.string	"E_OS_MISSINGEND"
.LASF238:
	.string	"osEE_hal_enableIRQ"
.LASF152:
	.string	"s_isr_all_cnt"
.LASF260:
	.string	"osEE_scheduler_task_activated"
.LASF38:
	.string	"TaskStateRefType"
.LASF196:
	.string	"ChainTask"
.LASF12:
	.string	"OsEE_bool"
.LASF32:
	.string	"OSEE_TASK_READY_STACKED"
.LASF50:
	.string	"E_OS_VALUE"
.LASF117:
	.string	"OsEE_SDB_tag"
.LASF247:
	.string	"osEE_get_kernel"
.LASF174:
	.string	"p_curr_tcb"
.LASF132:
	.string	"current_num_of_act"
.LASF183:
	.string	"SetEvent"
.LASF126:
	.string	"OsEE_byte"
.LASF254:
	.string	"osEE_scheduler_task_preemption_point"
.LASF103:
	.string	"p_tcb"
.LASF83:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF208:
	.string	"p_tdb_to_act"
.LASF257:
	.string	"osEE_hal_terminate_ctx"
.LASF253:
	.string	"osEE_scheduler_task_unblocked"
.LASF4:
	.string	"unsigned char"
.LASF61:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF176:
	.string	"GetEvent"
.LASF111:
	.string	"OsEE_CTX_tag"
.LASF69:
	.string	"E_OS_SYS_STACK"
.LASF129:
	.string	"OSEE_KERNEL_STARTED"
.LASF211:
	.string	"SuspendOSInterrupts"
.LASF63:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF64:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF141:
	.string	"p_tdb_ptr_array"
.LASF99:
	.string	"p_next"
.LASF31:
	.string	"OSEE_TASK_READY"
.LASF46:
	.string	"E_OS_LIMIT"
.LASF220:
	.string	"osEE_call_error_hook"
.LASF232:
	.string	"osEE_hal_end_nested_primitive"
.LASF210:
	.string	"ResumeOSInterrupts"
.LASF240:
	.string	"osEE_std_cpu_startos"
.LASF16:
	.string	"OsEE_void_cb"
.LASF168:
	.string	"osEE_kcb_var"
.LASF205:
	.string	"p_auto_tdb"
.LASF167:
	.string	"osEE_cdb_var"
.LASF140:
	.string	"OsEE_autostart_tdb_tag"
.LASF229:
	.string	"osEE_orti_trace_service_entry"
.LASF25:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF125:
	.string	"OsEE_kernel_cb"
.LASF151:
	.string	"prev_s_isr_os_status"
.LASF204:
	.string	"tdbsize"
.LASF149:
	.string	"last_error"
.LASF249:
	.string	"osEE_sn_alloc"
.LASF101:
	.string	"OsEE_SN_tag"
.LASF233:
	.string	"flag"
.LASF133:
	.string	"current_prio"
.LASF248:
	.string	"osEE_get_curr_core"
.LASF66:
	.string	"E_OS_SYS_INIT"
.LASF71:
	.string	"OsEE_status_type"
.LASF100:
	.string	"p_tdb"
.LASF188:
	.string	"State"
.LASF127:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF20:
	.string	"TaskRefType"
.LASF221:
	.string	"osEE_call_shutdown_hook"
.LASF219:
	.string	"service_id"
.LASF170:
	.string	"GetISRID"
.LASF267:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF93:
	.string	"OSId_ISR2Body"
.LASF230:
	.string	"osEE_cpu_startos"
.LASF14:
	.string	"OsEE_mem_size"
.LASF137:
	.string	"p_own_sn"
.LASF261:
	.string	"osEE_scheduler_rq_insert"
.LASF200:
	.string	"StartOS"
.LASF209:
	.string	"p_tcb_to_act"
.LASF123:
	.string	"p_scb"
.LASF37:
	.string	"TaskStateType"
.LASF84:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF40:
	.string	"EventMaskRefType"
.LASF185:
	.string	"p_tdb_waking_up"
.LASF217:
	.string	"osEE_stack_monitoring"
.LASF250:
	.string	"pp_first"
.LASF194:
	.string	"Schedule"
.LASF173:
	.string	"p_cdb"
.LASF48:
	.string	"E_OS_RESOURCE"
.LASF177:
	.string	"Mask"
.LASF225:
	.string	"osEE_end_primitive"
.LASF199:
	.string	"GetActiveApplicationMode"
.LASF142:
	.string	"tdb_array_size"
.LASF85:
	.string	"OSServiceId_SetEvent"
.LASF91:
	.string	"OSServiceId_StartOS"
.LASF77:
	.string	"OSServiceId_GetTaskID"
.LASF94:
	.string	"OSId_Action"
.LASF138:
	.string	"OsEE_TCB"
.LASF134:
	.string	"status"
.LASF87:
	.string	"OSServiceId_GetEvent"
.LASF265:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF107:
	.string	"dispatch_prio"
.LASF178:
	.string	"TaskID"
.LASF5:
	.string	"uint8_t"
.LASF189:
	.string	"local_state"
.LASF175:
	.string	"flags"
.LASF51:
	.string	"E_OS_SERVICEID"
.LASF86:
	.string	"OSServiceId_ClearEvent"
.LASF19:
	.string	"ISRType"
.LASF198:
	.string	"ActivateTask"
.LASF90:
	.string	"OSServiceId_ShutdownOS"
.LASF52:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF121:
	.string	"OsEE_HDB_tag"
.LASF119:
	.string	"stack_size"
.LASF47:
	.string	"E_OS_NOFUNC"
.LASF236:
	.string	"osEE_hal_suspendIRQ"
.LASF122:
	.string	"p_sdb"
.LASF44:
	.string	"E_OS_CALLEVEL"
.LASF29:
	.string	"TaskExecutionType"
.LASF34:
	.string	"OSEE_TASK_RUNNING"
.LASF191:
	.string	"p_searched_tdb"
.LASF169:
	.string	"osEE_ccb_var"
.LASF55:
	.string	"E_OS_STACKFAULT"
.LASF245:
	.string	"osEE_unlock_core"
.LASF156:
	.string	"p_ccb"
.LASF112:
	.string	"p_ctx"
.LASF62:
	.string	"E_OS_SPINLOCK"
.LASF113:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
