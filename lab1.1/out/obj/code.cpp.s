	.file	"code.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	loop, .-loop
	.section	.text.idle_hook,"ax",@progbits
.global	idle_hook
	.type	idle_hook, @function
idle_hook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(gs(_Z14serialEventRunv))
	ldi r25,hi8(gs(_Z14serialEventRunv))
	or r24,r25
	breq .L2
	jmp _Z14serialEventRunv
.L2:
/* epilogue start */
	ret
	.size	idle_hook, .-idle_hook
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	setup, .-setup
	.section	.rodata.main.str1.1,"aMS",@progbits,1
.LC0:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\code.cpp"
.LC1:
	.string	":\t"
.LC2:
	.string	"Hello world!!"
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEmh
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
	ldi r22,lo8(_ZZ4mainE12__FUNCTION__)
	ldi r23,hi8(_ZZ4mainE12__FUNCTION__)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r24,0
	call StartOS
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	main, .-main
	.section	.rodata._ZZ4mainE12__FUNCTION__,"a",@progbits
	.type	_ZZ4mainE12__FUNCTION__, @object
	.size	_ZZ4mainE12__FUNCTION__, 5
_ZZ4mainE12__FUNCTION__:
	.string	"main"
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
