	.file	"hooks.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata.StartupHook.str1.1,"aMS",@progbits,1
.LC0:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\hooks.cpp"
.LC1:
	.string	":\t"
.LC2:
	.string	"DDRD = 0b"
.LC3:
	.string	" PORTD = 0b"
	.section	.text.StartupHook,"ax",@progbits
.global	StartupHook
	.type	StartupHook, @function
StartupHook:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	in r24,0xa
	ori r24,lo8(-120)
	out 0xa,r24
	in r24,0xb
	andi r24,lo8(119)
	out 0xb,r24
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(_ZZ11StartupHookE12__FUNCTION__)
	ldi r23,hi8(_ZZ11StartupHookE12__FUNCTION__)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	in r28,0xa
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
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
/* epilogue start */
	pop r28
	jmp _ZN5Print7printlnEv
	.size	StartupHook, .-StartupHook
	.section	.rodata._ZZ11StartupHookE12__FUNCTION__,"a",@progbits
	.type	_ZZ11StartupHookE12__FUNCTION__, @object
	.size	_ZZ11StartupHookE12__FUNCTION__, 12
_ZZ11StartupHookE12__FUNCTION__:
	.string	"StartupHook"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
