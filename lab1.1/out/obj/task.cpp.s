	.file	"task.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata._Z19header_serial_printPKcS0_.str1.1,"aMS",@progbits,1
.LC0:
	.string	":\t"
	.section	.text._Z19header_serial_printPKcS0_,"axG",@progbits,_Z19header_serial_printPKcS0_,comdat
	.weak	_Z19header_serial_printPKcS0_
	.type	_Z19header_serial_printPKcS0_, @function
_Z19header_serial_printPKcS0_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r22
	movw r22,r24
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	movw r22,r28
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
/* epilogue start */
	pop r29
	pop r28
	jmp _ZN5Print5printEPKc
	.size	_Z19header_serial_printPKcS0_, .-_Z19header_serial_printPKcS0_
	.section	.text.FuncTask0,"ax",@progbits
.global	FuncTask0
	.type	FuncTask0, @function
FuncTask0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp TerminateTask
	.size	FuncTask0, .-FuncTask0
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC1:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\task.cpp"
.LC2:
	.string	"has been started!"
.LC3:
	.string	"PORTD = 0b"
.LC4:
	.string	"closing...!"
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
	ldi r22,lo8(_ZZ9FuncTask1E12__FUNCTION__)
	ldi r23,hi8(_ZZ9FuncTask1E12__FUNCTION__)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z19header_serial_printPKcS0_
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r29,lo8(8)
.L5:
	ldi r24,lo8(1)
	ldi r25,0
	call WaitEvent
	or r24,r25
	brne .L4
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
	ldi r24,0
	call GetResource
	in r24,0xb
	eor r24,r29
	out 0xb,r24
	ldi r22,lo8(_ZZ9FuncTask1E12__FUNCTION__)
	ldi r23,hi8(_ZZ9FuncTask1E12__FUNCTION__)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z19header_serial_printPKcS0_
	in r28,0xb
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	mov r22,r28
	ldi r23,0
	ldi r20,lo8(2)
	ldi r21,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEii
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEv
	ldi r24,0
	call ReleaseResource
	rjmp .L5
.L4:
	ldi r22,lo8(_ZZ9FuncTask1E12__FUNCTION__)
	ldi r23,hi8(_ZZ9FuncTask1E12__FUNCTION__)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z19header_serial_printPKcS0_
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
/* epilogue start */
	pop r29
	pop r28
	jmp TerminateTask
	.size	FuncTask1, .-FuncTask1
	.section	.text.FuncTask2,"ax",@progbits
.global	FuncTask2
	.type	FuncTask2, @function
FuncTask2:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r22,lo8(_ZZ9FuncTask2E12__FUNCTION__)
	ldi r23,hi8(_ZZ9FuncTask2E12__FUNCTION__)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z19header_serial_printPKcS0_
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
.L8:
	ldi r24,lo8(1)
	ldi r25,0
	call WaitEvent
	or r24,r25
	brne .L7
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
	ldi r24,0
	call GetResource
	in r24,0xb
	subi r24,lo8(-(-128))
	out 0xb,r24
	ldi r22,lo8(_ZZ9FuncTask2E12__FUNCTION__)
	ldi r23,hi8(_ZZ9FuncTask2E12__FUNCTION__)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z19header_serial_printPKcS0_
	in r28,0xb
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	mov r22,r28
	ldi r23,0
	ldi r20,lo8(2)
	ldi r21,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEii
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEv
	ldi r24,0
	call ReleaseResource
	rjmp .L8
.L7:
	ldi r22,lo8(_ZZ9FuncTask2E12__FUNCTION__)
	ldi r23,hi8(_ZZ9FuncTask2E12__FUNCTION__)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call _Z19header_serial_printPKcS0_
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
/* epilogue start */
	pop r28
	jmp TerminateTask
	.size	FuncTask2, .-FuncTask2
	.section	.rodata._ZZ9FuncTask2E12__FUNCTION__,"a",@progbits
	.type	_ZZ9FuncTask2E12__FUNCTION__, @object
	.size	_ZZ9FuncTask2E12__FUNCTION__, 10
_ZZ9FuncTask2E12__FUNCTION__:
	.string	"FuncTask2"
	.section	.rodata._ZZ9FuncTask1E12__FUNCTION__,"a",@progbits
	.type	_ZZ9FuncTask1E12__FUNCTION__, @object
	.size	_ZZ9FuncTask1E12__FUNCTION__, 10
_ZZ9FuncTask1E12__FUNCTION__:
	.string	"FuncTask1"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
