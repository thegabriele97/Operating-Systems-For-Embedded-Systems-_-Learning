	.file	"code.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.StartupHook,"ax",@progbits
.global	StartupHook
	.type	StartupHook, @function
StartupHook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(64)
	ldi r23,lo8(66)
	ldi r24,lo8(15)
	ldi r25,0
	jmp OsEE_atmega_startTimer1
	.size	StartupHook, .-StartupHook
	.section	.text.clock_handler,"ax",@progbits
.global	clock_handler
	.type	clock_handler, @function
clock_handler:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,isr2_armed
	cpse r24,__zero_reg__
	rjmp .L3
	ldi r22,lo8(1)
	lds r24,led_val
	lds r25,led_val+1
	or r24,r25
	breq .L4
	ldi r22,0
.L4:
	mov r24,r22
	ldi r25,0
	sts led_val+1,r25
	sts led_val,r24
	lds r24,led
	call digitalWrite
	ldi r24,lo8(1)
	jmp ActivateTask
.L3:
	sts isr2_armed,__zero_reg__
/* epilogue start */
	ret
	.size	clock_handler, .-clock_handler
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	lds r24,led
	call pinMode
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	jmp _ZN14HardwareSerial5beginEmh
	.size	setup, .-setup
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	call setup
	ldi r24,0
	call StartOS
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	main, .-main
	.section	.text._Z12serial_printPKc,"ax",@progbits
.global	_Z12serial_printPKc
	.type	_Z12serial_printPKc, @function
_Z12serial_printPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  126 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r24
	sbc r21,r25
	movw r22,r24
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5writeEPKhj
	ldi r24,lo8(gs(_Z14serialEventRunv))
	ldi r25,hi8(gs(_Z14serialEventRunv))
	or r24,r25
	breq .L11
	call _Z14serialEventRunv
.L11:
/* #APP */
 ;  131 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	_Z12serial_printPKc, .-_Z12serial_printPKc
	.section	.rodata._Z8print_sphPv.str1.1,"aMS",@progbits,1
.LC0:
	.string	"TASK %d SP<%p>\r\n"
	.section	.text._Z8print_sphPv,"ax",@progbits
.global	_Z8print_sphPv
	.type	_Z8print_sphPv, @function
_Z8print_sphPv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  136 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	push r23
	push r22
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	ldi r24,lo8(_ZZ8print_sphPvE3msg)
	ldi r25,hi8(_ZZ8print_sphPvE3msg)
	push r25
	push r24
	call sprintf
/* #APP */
 ;  138 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	ldi r24,lo8(_ZZ8print_sphPvE3msg)
	ldi r25,hi8(_ZZ8print_sphPvE3msg)
	jmp _Z12serial_printPKc
	.size	_Z8print_sphPv, .-_Z8print_sphPv
	.section	.rodata.idle_hook.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Test Failed!!!, line:177 \r\n"
	.section	.text.idle_hook,"ax",@progbits
.global	idle_hook
	.type	idle_hook, @function
idle_hook:
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	in r24,__SP_L__
	in r25,__SP_L__+1
	std Y+2,r25
	std Y+1,r24
	lds r24,main_sp
	lds r25,main_sp+1
	or r24,r25
	brne .L17
	ldd r24,Y+1
	ldd r25,Y+2
	sts main_sp+1,r25
	sts main_sp,r24
.L18:
/* #APP */
 ;  180 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(gs(_Z14serialEventRunv))
	ldi r25,hi8(gs(_Z14serialEventRunv))
	or r24,r25
	breq .L21
	call _Z14serialEventRunv
.L21:
/* #APP */
 ;  184 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L17:
	lds r18,main_sp
	lds r19,main_sp+1
	ldd r24,Y+1
	ldd r25,Y+2
	cp r18,r24
	cpc r19,r25
	breq .L18
	ldi r22,lo8(1)
	lds r24,led
	call digitalWrite
/* #APP */
 ;  177 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z12serial_printPKc
	ldi r16,lo8(gs(_Z14serialEventRunv))
	ldi r17,hi8(gs(_Z14serialEventRunv))
.L19:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L19
	call _Z14serialEventRunv
	rjmp .L19
	.size	idle_hook, .-idle_hook
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC2:
	.string	"TASK1\r\n"
.LC3:
	.string	"Test Failed!!!, line:243 \r\n"
.LC4:
	.string	"Release TASK1\r\n"
.LC5:
	.string	"Test Failed!!!, line:257 \r\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	call _Z12serial_printPKc
	lds r24,task1_fired
	subi r24,lo8(-(1))
	sts task1_fired,r24
	ldi r24,lo8(1)
	sts isr2_armed,r24
	in r24,__SP_L__
	in r25,__SP_L__+1
	lds r18,task1_sp
	lds r19,task1_sp+1
	or r18,r19
	brne .L28
	sts task1_sp+1,r25
	sts task1_sp,r24
.L29:
	ldi r24,lo8(2)
	call ActivateTask
	ldi r24,lo8(V)
	ldi r25,hi8(V)
	call PostSem
.L32:
	lds r24,isr2_armed
	cpse r24,__zero_reg__
	rjmp .L32
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	call _Z12serial_printPKc
	in r24,__SP_L__
	in r25,__SP_L__+1
	lds r18,task1_sp
	lds r19,task1_sp+1
	cp r18,r24
	cpc r19,r25
	breq .L33
	ldi r22,lo8(1)
	lds r24,led
	call digitalWrite
/* #APP */
 ;  257 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	call _Z12serial_printPKc
	ldi r28,lo8(gs(_Z14serialEventRunv))
	ldi r29,hi8(gs(_Z14serialEventRunv))
.L34:
	sbiw r28,0
	breq .L34
	call _Z14serialEventRunv
	rjmp .L34
.L28:
	lds r18,task1_sp
	lds r19,task1_sp+1
	cp r18,r24
	cpc r19,r25
	breq .L29
	ldi r22,lo8(1)
	lds r24,led
	call digitalWrite
/* #APP */
 ;  243 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	call _Z12serial_printPKc
	ldi r28,lo8(gs(_Z14serialEventRunv))
	ldi r29,hi8(gs(_Z14serialEventRunv))
.L30:
	sbiw r28,0
	breq .L30
	call _Z14serialEventRunv
	rjmp .L30
.L33:
	lds r24,task1_ended
	subi r24,lo8(-(1))
	sts task1_ended,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	FuncTask1, .-FuncTask1
	.section	.rodata.FuncTask2.str1.1,"aMS",@progbits,1
.LC6:
	.string	"TASK2\r\n"
.LC7:
	.string	"Test Failed!!!, line:274 \r\n"
	.section	.text.FuncTask2,"ax",@progbits
.global	FuncTask2
	.type	FuncTask2, @function
FuncTask2:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	call _Z12serial_printPKc
	in r24,__SP_L__
	in r25,__SP_L__+1
	lds r18,task2_sp
	lds r19,task2_sp+1
	or r18,r19
	brne .L42
	sts task2_sp+1,r25
	sts task2_sp,r24
.L43:
	lds r24,task2_fired
	subi r24,lo8(-(1))
	sts task2_fired,r24
	ldi r24,lo8(V)
	ldi r25,hi8(V)
	call WaitSem
	ldi r24,lo8(3)
	call ActivateTask
	lds r24,task2_ended
	subi r24,lo8(-(1))
	sts task2_ended,r24
/* epilogue start */
	pop r29
	pop r28
	ret
.L42:
	lds r18,task2_sp
	lds r19,task2_sp+1
	cp r18,r24
	cpc r19,r25
	breq .L43
	ldi r22,lo8(1)
	lds r24,led
	call digitalWrite
/* #APP */
 ;  274 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\test\code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	call _Z12serial_printPKc
	ldi r28,lo8(gs(_Z14serialEventRunv))
	ldi r29,hi8(gs(_Z14serialEventRunv))
.L44:
	sbiw r28,0
	breq .L44
	call _Z14serialEventRunv
	rjmp .L44
	.size	FuncTask2, .-FuncTask2
	.section	.rodata.FuncTask3.str1.1,"aMS",@progbits,1
.LC8:
	.string	"TASK3\r\n"
	.section	.text.FuncTask3,"ax",@progbits
.global	FuncTask3
	.type	FuncTask3, @function
FuncTask3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	call _Z12serial_printPKc
	lds r24,task3_fired
	subi r24,lo8(-(1))
	sts task3_fired,r24
	ldi r24,lo8(4)
	call ActivateTask
	lds r24,task3_ended
	subi r24,lo8(-(1))
	sts task3_ended,r24
/* epilogue start */
	ret
	.size	FuncTask3, .-FuncTask3
	.section	.rodata.FuncTask4.str1.1,"aMS",@progbits,1
.LC9:
	.string	"TASK4\r\n"
	.section	.text.FuncTask4,"ax",@progbits
.global	FuncTask4
	.type	FuncTask4, @function
FuncTask4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	call _Z12serial_printPKc
	lds r24,task4_fired
	subi r24,lo8(-(1))
	sts task4_fired,r24
	ldi r24,lo8(5)
	jmp ActivateTask
	.size	FuncTask4, .-FuncTask4
	.section	.rodata.FuncTask5.str1.1,"aMS",@progbits,1
.LC10:
	.string	"TASK5\r\n"
	.section	.text.FuncTask5,"ax",@progbits
.global	FuncTask5
	.type	FuncTask5, @function
FuncTask5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	call _Z12serial_printPKc
	lds r24,task5_fired
	subi r24,lo8(-(1))
	sts task5_fired,r24
/* epilogue start */
	ret
	.size	FuncTask5, .-FuncTask5
	.section	.data._ZZ8print_sphPvE3msg,"aw",@progbits
	.type	_ZZ8print_sphPvE3msg, @object
	.size	_ZZ8print_sphPvE3msg, 22
_ZZ8print_sphPvE3msg:
	.string	"TASK n SP<0xXXXX>\r\n  "
.global	main_sp
	.section	.bss.main_sp,"aw",@nobits
	.type	main_sp, @object
	.size	main_sp, 2
main_sp:
	.zero	2
.global	task5_sp
	.section	.bss.task5_sp,"aw",@nobits
	.type	task5_sp, @object
	.size	task5_sp, 2
task5_sp:
	.zero	2
.global	task4_sp
	.section	.bss.task4_sp,"aw",@nobits
	.type	task4_sp, @object
	.size	task4_sp, 2
task4_sp:
	.zero	2
.global	task3_sp
	.section	.bss.task3_sp,"aw",@nobits
	.type	task3_sp, @object
	.size	task3_sp, 2
task3_sp:
	.zero	2
.global	task2_sp
	.section	.bss.task2_sp,"aw",@nobits
	.type	task2_sp, @object
	.size	task2_sp, 2
task2_sp:
	.zero	2
.global	task1_sp
	.section	.bss.task1_sp,"aw",@nobits
	.type	task1_sp, @object
	.size	task1_sp, 2
task1_sp:
	.zero	2
.global	isr2_armed
	.section	.bss.isr2_armed,"aw",@nobits
	.type	isr2_armed, @object
	.size	isr2_armed, 1
isr2_armed:
	.zero	1
.global	isr2_fired
	.section	.bss.isr2_fired,"aw",@nobits
	.type	isr2_fired, @object
	.size	isr2_fired, 1
isr2_fired:
	.zero	1
.global	task5_fired
	.section	.bss.task5_fired,"aw",@nobits
	.type	task5_fired, @object
	.size	task5_fired, 1
task5_fired:
	.zero	1
.global	task4_fired
	.section	.bss.task4_fired,"aw",@nobits
	.type	task4_fired, @object
	.size	task4_fired, 1
task4_fired:
	.zero	1
.global	task3_ended
	.section	.bss.task3_ended,"aw",@nobits
	.type	task3_ended, @object
	.size	task3_ended, 1
task3_ended:
	.zero	1
.global	task3_fired
	.section	.bss.task3_fired,"aw",@nobits
	.type	task3_fired, @object
	.size	task3_fired, 1
task3_fired:
	.zero	1
.global	task2_ended
	.section	.bss.task2_ended,"aw",@nobits
	.type	task2_ended, @object
	.size	task2_ended, 1
task2_ended:
	.zero	1
.global	task1_ended
	.section	.bss.task1_ended,"aw",@nobits
	.type	task1_ended, @object
	.size	task1_ended, 1
task1_ended:
	.zero	1
.global	task2_fired
	.section	.bss.task2_fired,"aw",@nobits
	.type	task2_fired, @object
	.size	task2_fired, 1
task2_fired:
	.zero	1
.global	task1_fired
	.section	.bss.task1_fired,"aw",@nobits
	.type	task1_fired, @object
	.size	task1_fired, 1
task1_fired:
	.zero	1
.global	old_sp
	.section	.bss.old_sp,"aw",@nobits
	.type	old_sp, @object
	.size	old_sp, 2
old_sp:
	.zero	2
.global	isr_cnt
	.section	.bss.isr_cnt,"aw",@nobits
	.type	isr_cnt, @object
	.size	isr_cnt, 2
isr_cnt:
	.zero	2
.global	stk_wrong
	.section	.bss.stk_wrong,"aw",@nobits
	.type	stk_wrong, @object
	.size	stk_wrong, 1
stk_wrong:
	.zero	1
.global	led_val
	.section	.bss.led_val,"aw",@nobits
	.type	led_val, @object
	.size	led_val, 2
led_val:
	.zero	2
.global	led
	.section	.data.led,"aw",@progbits
	.type	led, @object
	.size	led, 2
led:
	.word	13
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
