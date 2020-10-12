	.file	"Tone.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z4tonehjm,"ax",@progbits
.global	_Z4tonehjm
	.type	_Z4tonehjm, @function
_Z4tonehjm:
.LFB113:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Tone.cpp"
	.loc 1 244 0
	.cfi_startproc
.LVL0:
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
	rcall .
	push __zero_reg__
.LCFI16:
	.cfi_def_cfa_offset 23
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI17:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 5 */
/* stack size = 21 */
.L__stack_usage = 21
	movw r16,r22
	movw r4,r18
	movw r6,r20
.LVL1:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
	.loc 1 134 0
	lds r25,_ZL9tone_pins
	cp r24,r25
	breq .L2
.LVL2:
.LBE27:
.LBE26:
.LBB31:
.LBB32:
	.loc 1 141 0
	cpi r25,lo8(-1)
	brne .+2
	rjmp .L3
.LVL3:
.L1:
/* epilogue start */
.LBE32:
.LBE31:
.LBE25:
.LBE24:
	.loc 1 420 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL4:
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
.LVL5:
.L2:
.LBB55:
.LBB52:
.LBB36:
.LBB30:
.LBB28:
.LBB29:
	.loc 1 135 0
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  135 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	std Y+5,r25
.LVL6:
.LBE29:
.LBE28:
.LBE30:
.LBE36:
.LBE52:
.LBE55:
	.loc 1 252 0
	sbrc r25,7
	rjmp .L1
.LVL7:
.L5:
	.loc 1 255 0
	ldi r22,lo8(1)
	call pinMode
.LVL8:
	.loc 1 258 0
	ldd r24,Y+5
	tst r24
	breq .L11
.L31:
	.loc 1 258 0 is_stmt 0 discriminator 1
	ldd r25,Y+5
	cpi r25,lo8(2)
	breq .+2
	rjmp .L12
.L11:
	.loc 1 260 0 is_stmt 1
	movw r8,r16
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL9:
	.loc 1 262 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L38
.LVL10:
	.loc 1 264 0
	ldi r22,lo8(64)
	ldi r23,lo8(66)
	ldi r24,lo8(15)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
.LVL11:
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL12:
	.loc 1 267 0
	ldd r25,Y+5
	cpi r25,lo8(2)
	breq .+2
	rjmp .L14
	.loc 1 267 0 is_stmt 0 discriminator 1
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L39
	.loc 1 269 0 is_stmt 1
	ldi r22,lo8(-112)
	ldi r23,lo8(-48)
	ldi r24,lo8(3)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
.LVL13:
	movw r14,r20
	ldi r25,1
	sub r12,r25
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL14:
	.loc 1 273 0
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L16
	.loc 1 270 0
	ldi r24,lo8(3)
.LVL15:
.L23:
	.loc 1 307 0
	lds r25,177
	andi r25,lo8(-8)
	or r24,r25
.LVL16:
	.loc 1 307 0
	sts 177,r24
	rjmp .L24
.LVL17:
.L3:
.LBB56:
.LBB53:
.LBB37:
.LBB35:
.LBB33:
	.loc 1 142 0
	sts _ZL9tone_pins,r24
.LVL18:
.LBB34:
	.loc 1 143 0
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  143 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	std Y+5,r25
.LVL19:
.LBE34:
.LBE33:
.LBE35:
.LBE37:
.LBB38:
	.loc 1 148 0
	cpi r25,lo8(-1)
	brne .+2
	rjmp .L1
.LBB39:
	.loc 1 154 0
	cpi r25,lo8(1)
	breq .L8
	brlo .L9
	cpi r25,lo8(2)
	brne .+2
	rjmp .L10
.LVL20:
.LBE39:
.LBE38:
.LBE53:
.LBE56:
	.loc 1 252 0
	ldd r25,Y+5
	sbrc r25,7
	rjmp .L1
	.loc 1 255 0
	ldi r22,lo8(1)
	call pinMode
.LVL21:
	rjmp .L31
.LVL22:
.L9:
.LBB57:
.LBB54:
.LBB51:
.LBB50:
.LBB40:
	.loc 1 159 0
	out 0x24,__zero_reg__
	.loc 1 160 0
	out 0x25,__zero_reg__
	.loc 1 161 0
	in r25,0x24
.LVL23:
	ori r25,lo8(2)
	out 0x24,r25
	.loc 1 162 0
	in r25,0x25
	ori r25,lo8(1)
	out 0x25,r25
.LBB41:
.LBB42:
	.loc 1 163 0
	mov r18,r24
.LVL24:
	ldi r19,0
.LVL25:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL26:
	.loc 1 163 0
/* #APP */
 ;  163 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL27:
/* #NOAPP */
.LBE42:
	.loc 1 163 0
	ldi r31,0
	lsl r30
	rol r31
.LVL28:
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL29:
	.loc 1 163 0
/* #APP */
 ;  163 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
.LVL30:
/* #NOAPP */
.LBE41:
	.loc 1 163 0
	sts timer0_pin_port+1,r21
	sts timer0_pin_port,r20
.LVL31:
.LBB43:
	.loc 1 164 0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL32:
	.loc 1 164 0
/* #APP */
 ;  164 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL33:
	.loc 1 164 0
/* #NOAPP */
	sts timer0_pin_mask,r30
	std Y+5,__zero_reg__
	rjmp .L5
.LVL34:
.L8:
.LBE43:
	.loc 1 171 0
	sts 128,__zero_reg__
	.loc 1 172 0
	sts 129,__zero_reg__
	.loc 1 173 0
	lds r25,129
.LVL35:
	ori r25,lo8(8)
	sts 129,r25
	.loc 1 174 0
	lds r25,129
	ori r25,lo8(1)
	sts 129,r25
.LBB44:
.LBB45:
	.loc 1 175 0
	mov r18,r24
.LVL36:
	ldi r19,0
.LVL37:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL38:
	.loc 1 175 0
/* #APP */
 ;  175 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL39:
/* #NOAPP */
.LBE45:
	.loc 1 175 0
	ldi r31,0
	lsl r30
	rol r31
.LVL40:
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL41:
	.loc 1 175 0
/* #APP */
 ;  175 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
.LVL42:
/* #NOAPP */
.LBE44:
	.loc 1 175 0
	sts timer1_pin_port+1,r21
	sts timer1_pin_port,r20
.LVL43:
.LBB46:
	.loc 1 176 0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL44:
	.loc 1 176 0
/* #APP */
 ;  176 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL45:
	.loc 1 176 0
/* #NOAPP */
	sts timer1_pin_mask,r30
	rjmp .L5
.LVL46:
.L10:
.LBE46:
	.loc 1 183 0
	sts 176,__zero_reg__
	.loc 1 184 0
	sts 177,__zero_reg__
	.loc 1 185 0
	lds r25,176
.LVL47:
	ori r25,lo8(2)
	sts 176,r25
	.loc 1 186 0
	lds r25,177
	ori r25,lo8(1)
	sts 177,r25
.LBB47:
.LBB48:
	.loc 1 187 0
	mov r18,r24
.LVL48:
	ldi r19,0
.LVL49:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL50:
	.loc 1 187 0
/* #APP */
 ;  187 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL51:
/* #NOAPP */
.LBE48:
	.loc 1 187 0
	ldi r31,0
	lsl r30
	rol r31
.LVL52:
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL53:
	.loc 1 187 0
/* #APP */
 ;  187 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
.LVL54:
/* #NOAPP */
.LBE47:
	.loc 1 187 0
	sts timer2_pin_port+1,r21
	sts timer2_pin_port,r20
.LVL55:
.LBB49:
	.loc 1 188 0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL56:
	.loc 1 188 0
/* #APP */
 ;  188 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL57:
	.loc 1 188 0
/* #NOAPP */
	sts timer2_pin_mask,r30
	rjmp .L5
.LVL58:
.L14:
.LBE49:
.LBE40:
.LBE50:
.LBE51:
.LBE54:
.LBE57:
	.loc 1 273 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L40
	.loc 1 275 0
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
.LVL59:
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL60:
	.loc 1 276 0
	ldd r25,Y+5
	tst r25
	brne .+2
	rjmp .L18
.LVL61:
	.loc 1 284 0
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L37
	rjmp .L54
.L36:
	.loc 1 280 0
	ldi r22,lo8(36)
	ldi r23,lo8(-12)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
.LVL62:
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL63:
	.loc 1 281 0
	ldi r24,lo8(5)
	.loc 1 284 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L23
	.loc 1 286 0
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
.LVL64:
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL65:
	rjmp .L22
.LVL66:
.L38:
	.loc 1 261 0
	ldi r24,lo8(1)
.LVL67:
.L13:
	.loc 1 299 0
	ldd r25,Y+5
	cpse r25,__zero_reg__
	rjmp .L23
.LVL68:
.L34:
	.loc 1 301 0
	in r25,0x25
	andi r25,lo8(-8)
	or r24,r25
.LVL69:
	.loc 1 301 0
	out 0x25,r24
.LVL70:
.L24:
	.loc 1 356 0
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
	.loc 1 350 0
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .+2
	rjmp .L26
.LVL71:
.L28:
	.loc 1 362 0
	ldd r25,Y+5
	cpi r25,lo8(1)
	brne .+2
	rjmp .L27
	cpi r25,lo8(2)
	brne .+2
	rjmp .L29
	cpse r25,__zero_reg__
	rjmp .L1
	.loc 1 367 0
	out 0x27,r12
	.loc 1 368 0
	sts timer0_toggle_count,r18
	sts timer0_toggle_count+1,r19
	sts timer0_toggle_count+2,r20
	sts timer0_toggle_count+3,r21
	.loc 1 369 0
	lds r24,110
	ori r24,lo8(2)
	sts 110,r24
	.loc 1 370 0
	rjmp .L1
.LVL72:
.L40:
	.loc 1 265 0
	ldi r24,lo8(2)
	rjmp .L13
.LVL73:
.L12:
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL74:
	.loc 1 321 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	ldi r25,1
	cpc r14,r25
	cpc r15,__zero_reg__
	brlo .L41
	.loc 1 323 0
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL75:
	.loc 1 324 0
	ldi r25,lo8(3)
.LVL76:
.L25:
	.loc 1 327 0
	ldd r24,Y+5
	cpi r24,lo8(1)
	breq .+2
	rjmp .L24
	.loc 1 330 0
	lds r24,129
	andi r24,lo8(-8)
	or r24,r25
	.loc 1 330 0
	sts 129,r24
	.loc 1 356 0
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
	.loc 1 350 0
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L27
.LVL77:
.L26:
	.loc 1 352 0
	movw r26,r16
	lsl r26
	rol r27
	movw r20,r6
	movw r18,r4
	call __muluhisi3
	ldi r18,lo8(-24)
	ldi r19,lo8(3)
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
.LVL78:
	rjmp .L28
.LVL79:
.L41:
	.loc 1 320 0
	ldi r25,lo8(1)
	rjmp .L25
.LVL80:
.L27:
	.loc 1 375 0
	sts 136+1,r13
	sts 136,r12
	.loc 1 376 0
	sts timer1_toggle_count,r18
	sts timer1_toggle_count+1,r19
	sts timer1_toggle_count+2,r20
	sts timer1_toggle_count+3,r21
	.loc 1 377 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 384 0
	rjmp .L1
.L29:
	.loc 1 388 0
	sts 179,r12
	.loc 1 389 0
	sts timer2_toggle_count,r18
	sts timer2_toggle_count+1,r19
	sts timer2_toggle_count+2,r20
	sts timer2_toggle_count+3,r21
	.loc 1 390 0
	lds r24,112
	ori r24,lo8(2)
	sts 112,r24
	.loc 1 420 0
	rjmp .L1
.LVL81:
.L21:
	.loc 1 287 0
	ldi r24,lo8(4)
	.loc 1 288 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L34
	.loc 1 291 0
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
.LVL82:
	ldi r24,10
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r24
	brne 1b
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL83:
	.loc 1 292 0
	ldi r24,lo8(5)
	rjmp .L34
.LVL84:
.L16:
	.loc 1 275 0
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
.LVL85:
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL86:
	.loc 1 278 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L36
.L54:
	.loc 1 276 0
	ldi r24,lo8(4)
	rjmp .L23
.LVL87:
.L18:
	ldi r24,lo8(3)
	.loc 1 284 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L34
.LVL88:
.L37:
	.loc 1 286 0
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
.LVL89:
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL90:
	.loc 1 287 0
	ldd r25,Y+5
	tst r25
	brne .+2
	rjmp .L21
.L22:
.LVL91:
	ldi r24,lo8(6)
	.loc 1 288 0
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L23
	.loc 1 291 0
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
.LVL92:
	ldi r25,10
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r25
	brne 1b
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL93:
	.loc 1 292 0
	ldi r24,lo8(7)
	rjmp .L23
.LVL94:
.L39:
	.loc 1 265 0
	ldi r24,lo8(2)
.LVL95:
	rjmp .L23
	.cfi_endproc
.LFE113:
	.size	_Z4tonehjm, .-_Z4tonehjm
	.section	.text._Z12disableTimerh,"ax",@progbits
.global	_Z12disableTimerh
	.type	_Z12disableTimerh, @function
_Z12disableTimerh:
.LFB114:
	.loc 1 427 0
	.cfi_startproc
.LVL96:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 428 0
	cpi r24,lo8(1)
	breq .L57
	brlo .L58
	cpi r24,lo8(2)
	breq .L59
	ret
.L58:
	.loc 1 432 0
	sts 110,__zero_reg__
	.loc 1 436 0
	ret
.L57:
	.loc 1 440 0
	lds r24,111
.LVL97:
	andi r24,lo8(-3)
	sts 111,r24
	.loc 1 441 0
	ret
.LVL98:
.L59:
.LBB60:
.LBB61:
	.loc 1 446 0
	lds r24,112
.LVL99:
	andi r24,lo8(-3)
	sts 112,r24
	.loc 1 449 0
	ldi r24,lo8(1)
	sts 176,r24
	.loc 1 452 0
	lds r24,177
	.loc 1 452 0
	andi r24,lo8(-8)
	ori r24,lo8(4)
	.loc 1 452 0
	sts 177,r24
	.loc 1 455 0
	sts 179,__zero_reg__
/* epilogue start */
.LBE61:
.LBE60:
	.loc 1 477 0
	ret
	.cfi_endproc
.LFE114:
	.size	_Z12disableTimerh, .-_Z12disableTimerh
	.section	.text._Z6noToneh,"ax",@progbits
.global	_Z6noToneh
	.type	_Z6noToneh, @function
_Z6noToneh:
.LFB115:
	.loc 1 481 0
	.cfi_startproc
.LVL100:
	push r28
.LCFI18:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
.LVL101:
.LBB62:
.LBB63:
	.loc 1 485 0
	lds r24,_ZL9tone_pins
.LVL102:
	cpse r28,r24
	rjmp .L62
.LVL103:
.LBB64:
.LBB65:
	.loc 1 486 0
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  486 "D:\Downloads\arduino-PR-beta1.9-BUILD-119\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL104:
/* #NOAPP */
.LBE65:
	.loc 1 487 0
	ldi r25,lo8(-1)
	sts _ZL9tone_pins,r25
.LVL105:
.L61:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 492 0
	call _Z12disableTimerh
.LVL106:
	.loc 1 494 0
	ldi r22,0
	mov r24,r28
/* epilogue start */
	.loc 1 495 0
	pop r28
.LVL107:
	.loc 1 494 0
	jmp digitalWrite
.LVL108:
.L62:
	.loc 1 482 0
	ldi r24,lo8(-1)
	rjmp .L61
	.cfi_endproc
.LFE115:
	.size	_Z6noToneh, .-_Z6noToneh
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
.LFB116:
	.loc 1 539 0
	.cfi_startproc
	push r1
.LCFI19:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI21:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI22:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI23:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI25:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI26:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI27:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI28:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI29:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI30:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI31:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI32:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 541 0
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L64
	.loc 1 544 0
	lds r25,timer2_pin_mask
	lds r30,timer2_pin_port
	lds r31,timer2_pin_port+1
	ld r24,Z
	eor r24,r25
	st Z,r24
	.loc 1 546 0
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	cpc __zero_reg__,r26
	cpc __zero_reg__,r27
	brge .L63
	.loc 1 547 0
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sts timer2_toggle_count,r24
	sts timer2_toggle_count+1,r25
	sts timer2_toggle_count+2,r26
	sts timer2_toggle_count+3,r27
.L63:
/* epilogue start */
	.loc 1 558 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.L64:
	.loc 1 554 0
	lds r24,_ZL9tone_pins
	call _Z6noToneh
.LVL109:
	.loc 1 558 0
	rjmp .L63
	.cfi_endproc
.LFE116:
	.size	__vector_7, .-__vector_7
	.section	.data._ZL9tone_pins,"aw",@progbits
	.type	_ZL9tone_pins, @object
	.size	_ZL9tone_pins, 1
_ZL9tone_pins:
	.byte	-1
	.section	.progmem.data._ZL21tone_pin_to_timer_PGM,"a",@progbits
	.type	_ZL21tone_pin_to_timer_PGM, @object
	.size	_ZL21tone_pin_to_timer_PGM, 1
_ZL21tone_pin_to_timer_PGM:
	.byte	2
.global	timer2_pin_mask
	.section	.bss.timer2_pin_mask,"aw",@nobits
	.type	timer2_pin_mask, @object
	.size	timer2_pin_mask, 1
timer2_pin_mask:
	.zero	1
.global	timer2_pin_port
	.section	.bss.timer2_pin_port,"aw",@nobits
	.type	timer2_pin_port, @object
	.size	timer2_pin_port, 2
timer2_pin_port:
	.zero	2
.global	timer2_toggle_count
	.section	.bss.timer2_toggle_count,"aw",@nobits
	.type	timer2_toggle_count, @object
	.size	timer2_toggle_count, 4
timer2_toggle_count:
	.zero	4
.global	timer1_pin_mask
	.section	.bss.timer1_pin_mask,"aw",@nobits
	.type	timer1_pin_mask, @object
	.size	timer1_pin_mask, 1
timer1_pin_mask:
	.zero	1
.global	timer1_pin_port
	.section	.bss.timer1_pin_port,"aw",@nobits
	.type	timer1_pin_port, @object
	.size	timer1_pin_port, 2
timer1_pin_port:
	.zero	2
.global	timer1_toggle_count
	.section	.bss.timer1_toggle_count,"aw",@nobits
	.type	timer1_toggle_count, @object
	.size	timer1_toggle_count, 4
timer1_toggle_count:
	.zero	4
.global	timer0_pin_mask
	.section	.bss.timer0_pin_mask,"aw",@nobits
	.type	timer0_pin_mask, @object
	.size	timer0_pin_mask, 1
timer0_pin_mask:
	.zero	1
.global	timer0_pin_port
	.section	.bss.timer0_pin_port,"aw",@nobits
	.type	timer0_pin_port, @object
	.size	timer0_pin_port, 2
timer0_pin_port:
	.zero	2
.global	timer0_toggle_count
	.section	.bss.timer0_toggle_count,"aw",@nobits
	.type	timer0_toggle_count, @object
	.size	timer0_toggle_count, 4
timer0_toggle_count:
	.zero	4
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.file 4 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 5 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
	.file 6 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdio.h"
	.file 7 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\HardwareSerial.h"
	.file 8 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 9 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Stream.h"
	.file 10 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Print.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x953
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF63
	.byte	0x4
	.long	.LASF64
	.long	.LASF65
	.long	.Ldebug_ranges0+0x58
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7d
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7e
	.long	0x57
	.uleb128 0x4
	.long	0x42
	.uleb128 0x5
	.long	0x42
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x80
	.long	0x75
	.uleb128 0x4
	.long	0x65
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	0x7c
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x82
	.long	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0xd8
	.long	0x75
	.uleb128 0x7
	.long	.LASF12
	.byte	0x4
	.word	0x138
	.long	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	.LASF13
	.byte	0x4
	.word	0x13d
	.long	0xc8
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x2
	.long	0xce
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x4
	.long	0xce
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.word	0x142
	.long	0xc8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF16
	.uleb128 0x9
	.long	0x70
	.long	0xfa
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0xa4
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xa5
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0xa6
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4d
	.long	0x12c
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0xa8
	.long	0x121
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.byte	0xaa
	.long	0x121
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.byte	0xab
	.long	0x121
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x2
	.long	0xd5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF23
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF24
	.uleb128 0xc
	.long	.LASF66
	.byte	0xe
	.byte	0x6
	.byte	0xf4
	.long	0x1e9
	.uleb128 0xd
	.string	"buf"
	.byte	0x6
	.byte	0xf5
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF25
	.byte	0x6
	.byte	0xf6
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF26
	.byte	0x6
	.byte	0xf7
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.long	.LASF27
	.byte	0x6
	.word	0x107
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"len"
	.byte	0x6
	.word	0x108
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"put"
	.byte	0x6
	.word	0x109
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"get"
	.byte	0x6
	.word	0x10a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF28
	.byte	0x6
	.word	0x10b
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x11
	.long	0x5e
	.long	0x1fd
	.uleb128 0x12
	.long	0xce
	.uleb128 0x12
	.long	0x1fd
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x167
	.uleb128 0x8
	.byte	0x2
	.long	0x1e9
	.uleb128 0x11
	.long	0x5e
	.long	0x218
	.uleb128 0x12
	.long	0x1fd
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x209
	.uleb128 0x13
	.byte	0x2
	.uleb128 0x9
	.long	0x1fd
	.long	0x22b
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x6
	.word	0x197
	.long	0x220
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF67
	.byte	0x7
	.byte	0x2
	.long	0x75
	.byte	0x9
	.byte	0x29
	.long	0x25d
	.uleb128 0x15
	.long	.LASF30
	.byte	0
	.uleb128 0x15
	.long	.LASF31
	.byte	0x1
	.uleb128 0x15
	.long	.LASF32
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.long	.LASF33
	.byte	0x1
	.long	0x26f
	.uleb128 0x17
	.byte	0x7
	.byte	0x5d
	.long	0x279
	.byte	0
	.uleb128 0x16
	.long	.LASF34
	.byte	0x1
	.long	0x2a0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF68
	.byte	0xa
	.byte	0x39
	.long	.LASF69
	.long	0xa1
	.byte	0x1
	.long	0x28e
	.uleb128 0x19
	.long	0x2a0
	.byte	0x1
	.uleb128 0x12
	.long	0x153
	.uleb128 0x12
	.long	0xa1
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x26f
	.uleb128 0xb
	.long	.LASF35
	.byte	0x7
	.byte	0x8f
	.long	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF36
	.uleb128 0x1a
	.long	.LASF70
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF37
	.uleb128 0x1b
	.string	"SS"
	.byte	0x8
	.byte	0x2b
	.long	0x4d
	.byte	0xa
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x8
	.byte	0x2c
	.long	0x4d
	.byte	0xb
	.uleb128 0x1c
	.long	.LASF39
	.byte	0x8
	.byte	0x2d
	.long	0x4d
	.byte	0xc
	.uleb128 0x1b
	.string	"SCK"
	.byte	0x8
	.byte	0x2e
	.long	0x4d
	.byte	0xd
	.uleb128 0x1b
	.string	"SDA"
	.byte	0x8
	.byte	0x33
	.long	0x4d
	.byte	0x12
	.uleb128 0x1b
	.string	"SCL"
	.byte	0x8
	.byte	0x34
	.long	0x4d
	.byte	0x13
	.uleb128 0x1b
	.string	"A0"
	.byte	0x8
	.byte	0x41
	.long	0x4d
	.byte	0xe
	.uleb128 0x1b
	.string	"A1"
	.byte	0x8
	.byte	0x42
	.long	0x4d
	.byte	0xf
	.uleb128 0x1b
	.string	"A2"
	.byte	0x8
	.byte	0x43
	.long	0x4d
	.byte	0x10
	.uleb128 0x1b
	.string	"A3"
	.byte	0x8
	.byte	0x44
	.long	0x4d
	.byte	0x11
	.uleb128 0x1b
	.string	"A4"
	.byte	0x8
	.byte	0x45
	.long	0x4d
	.byte	0x12
	.uleb128 0x1b
	.string	"A5"
	.byte	0x8
	.byte	0x46
	.long	0x4d
	.byte	0x13
	.uleb128 0x1b
	.string	"A6"
	.byte	0x8
	.byte	0x47
	.long	0x4d
	.byte	0x14
	.uleb128 0x1b
	.string	"A7"
	.byte	0x8
	.byte	0x48
	.long	0x4d
	.byte	0x15
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.byte	0x3c
	.long	0x83
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_toggle_count
	.uleb128 0x1d
	.long	.LASF41
	.byte	0x1
	.byte	0x3d
	.long	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_pin_port
	.uleb128 0x8
	.byte	0x2
	.long	0x52
	.uleb128 0x1d
	.long	.LASF42
	.byte	0x1
	.byte	0x3e
	.long	0x52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_pin_mask
	.uleb128 0x1d
	.long	.LASF43
	.byte	0x1
	.byte	0x41
	.long	0x83
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_toggle_count
	.uleb128 0x1d
	.long	.LASF44
	.byte	0x1
	.byte	0x42
	.long	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_pin_port
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.byte	0x43
	.long	0x52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_pin_mask
	.uleb128 0x1d
	.long	.LASF46
	.byte	0x1
	.byte	0x44
	.long	0x83
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer2_toggle_count
	.uleb128 0x1d
	.long	.LASF47
	.byte	0x1
	.byte	0x45
	.long	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer2_pin_port
	.uleb128 0x1d
	.long	.LASF48
	.byte	0x1
	.byte	0x46
	.long	0x52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer2_pin_mask
	.uleb128 0x9
	.long	0x4d
	.long	0x41d
	.uleb128 0x1e
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x40d
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.byte	0x79
	.long	0x41d
	.byte	0x5
	.byte	0x3
	.long	_ZL21tone_pin_to_timer_PGM
	.uleb128 0x9
	.long	0x42
	.long	0x443
	.uleb128 0x1e
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF50
	.byte	0x1
	.byte	0x7a
	.long	0x433
	.byte	0x5
	.byte	0x3
	.long	_ZL9tone_pins
	.uleb128 0x20
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.word	0x21a
	.long	.LFB116
	.long	.LFE116
	.long	.LLST35
	.byte	0x1
	.long	0x478
	.uleb128 0x21
	.long	.LVL109
	.long	0x478
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.word	0x1e0
	.long	.LASF72
	.long	.LFB115
	.long	.LFE115
	.long	.LLST31
	.byte	0x1
	.long	0x516
	.uleb128 0x23
	.long	.LASF55
	.byte	0x1
	.word	0x1e0
	.long	0x42
	.long	.LLST32
	.uleb128 0x24
	.long	.LASF51
	.byte	0x1
	.word	0x1e2
	.long	0x30
	.long	.LLST33
	.uleb128 0x25
	.long	.LBB62
	.long	.LBE62
	.long	0x4f5
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.word	0x1e4
	.long	0x5e
	.byte	0
	.uleb128 0x27
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x28
	.long	.LASF60
	.byte	0x1
	.word	0x1e6
	.long	0x65
	.uleb128 0x24
	.long	.LASF52
	.byte	0x1
	.word	0x1e6
	.long	0x42
	.long	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LVL106
	.long	0x516
	.uleb128 0x29
	.long	.LVL108
	.byte	0x1
	.long	0x93c
	.uleb128 0x2a
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x1aa
	.long	.LASF74
	.byte	0x1
	.long	0x535
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.word	0x1aa
	.long	0x42
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0xf3
	.long	.LASF75
	.long	.LFB113
	.long	.LFE113
	.long	.LLST0
	.byte	0x1
	.long	0x7a3
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.byte	0xf3
	.long	0x42
	.long	.LLST1
	.uleb128 0x2e
	.long	.LASF56
	.byte	0x1
	.byte	0xf3
	.long	0x75
	.long	.LLST2
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.byte	0xf3
	.long	0x29
	.long	.LLST3
	.uleb128 0x2f
	.long	.LASF58
	.byte	0x1
	.byte	0xf5
	.long	0x42
	.long	.LLST4
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.byte	0xf6
	.long	0x7c
	.long	.LLST5
	.uleb128 0x30
	.string	"ocr"
	.byte	0x1
	.byte	0xf7
	.long	0x88
	.long	.LLST6
	.uleb128 0x31
	.long	.LASF51
	.byte	0x1
	.byte	0xf8
	.long	0x30
	.uleb128 0x32
	.long	0x7a3
	.long	.LBB24
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfa
	.long	0x779
	.uleb128 0x33
	.long	0x7b3
	.long	.LLST7
	.uleb128 0x34
	.long	.Ldebug_ranges0+0
	.uleb128 0x35
	.long	0x7be
	.long	.LLST8
	.uleb128 0x36
	.long	0x7c9
	.long	.Ldebug_ranges0+0x28
	.long	0x610
	.uleb128 0x35
	.long	0x7ce
	.long	.LLST9
	.uleb128 0x37
	.long	0x7d7
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x38
	.long	0x7d8
	.uleb128 0x38
	.long	0x7e3
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x7f0
	.long	.Ldebug_ranges0+0x40
	.long	0x643
	.uleb128 0x35
	.long	0x7f5
	.long	.LLST10
	.uleb128 0x37
	.long	0x7fe
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x38
	.long	0x7ff
	.uleb128 0x35
	.long	0x80a
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x817
	.long	.LBB41
	.long	.LBE41
	.long	0x687
	.uleb128 0x35
	.long	0x81c
	.long	.LLST12
	.uleb128 0x35
	.long	0x827
	.long	.LLST13
	.uleb128 0x37
	.long	0x832
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x35
	.long	0x833
	.long	.LLST14
	.uleb128 0x35
	.long	0x83e
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x84b
	.long	.LBB43
	.long	.LBE43
	.long	0x6ab
	.uleb128 0x35
	.long	0x850
	.long	.LLST16
	.uleb128 0x35
	.long	0x85b
	.long	.LLST17
	.byte	0
	.uleb128 0x39
	.long	0x867
	.long	.LBB44
	.long	.LBE44
	.long	0x6ef
	.uleb128 0x35
	.long	0x86c
	.long	.LLST18
	.uleb128 0x35
	.long	0x877
	.long	.LLST19
	.uleb128 0x37
	.long	0x882
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x35
	.long	0x883
	.long	.LLST20
	.uleb128 0x35
	.long	0x88e
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x89b
	.long	.LBB46
	.long	.LBE46
	.long	0x713
	.uleb128 0x35
	.long	0x8a0
	.long	.LLST22
	.uleb128 0x35
	.long	0x8ab
	.long	.LLST23
	.byte	0
	.uleb128 0x39
	.long	0x8b7
	.long	.LBB47
	.long	.LBE47
	.long	0x757
	.uleb128 0x35
	.long	0x8bc
	.long	.LLST24
	.uleb128 0x35
	.long	0x8c7
	.long	.LLST25
	.uleb128 0x37
	.long	0x8d2
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x35
	.long	0x8d3
	.long	.LLST26
	.uleb128 0x35
	.long	0x8de
	.long	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0x8eb
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x35
	.long	0x8ec
	.long	.LLST28
	.uleb128 0x35
	.long	0x8f7
	.long	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LVL8
	.long	0x949
	.long	0x78c
	.uleb128 0x2a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3b
	.long	.LVL21
	.long	0x949
	.uleb128 0x2a
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2a
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF76
	.byte	0x1
	.byte	0x80
	.long	0x30
	.byte	0x1
	.long	0x904
	.uleb128 0x3d
	.long	.LASF55
	.byte	0x1
	.byte	0x80
	.long	0x42
	.uleb128 0x31
	.long	.LASF51
	.byte	0x1
	.byte	0x82
	.long	0x30
	.uleb128 0x3e
	.long	0x7f0
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x5e
	.uleb128 0x40
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0x87
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0x87
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0x817
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x5e
	.uleb128 0x40
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0x8f
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0x8f
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0x84b
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xa3
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xa3
	.long	0x65
	.uleb128 0x40
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xa3
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xa3
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0x867
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xa4
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xa4
	.long	0x42
	.byte	0
	.uleb128 0x3e
	.long	0x89b
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xaf
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xaf
	.long	0x65
	.uleb128 0x40
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xaf
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xaf
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0x8b7
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xb0
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xb0
	.long	0x42
	.byte	0
	.uleb128 0x3e
	.long	0x8eb
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xbb
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xbb
	.long	0x65
	.uleb128 0x40
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xbb
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xbb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x31
	.long	.LASF60
	.byte	0x1
	.byte	0xbc
	.long	0x65
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.byte	0xbc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x516
	.long	.LASF74
	.long	.LFB114
	.long	.LFE114
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x93c
	.uleb128 0x33
	.long	0x528
	.long	.LLST30
	.uleb128 0x37
	.long	0x516
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x42
	.long	0x528
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF61
	.long	.LASF61
	.byte	0x5
	.byte	0x87
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF62
	.long	.LASF62
	.byte	0x5
	.byte	0x86
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
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
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
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
.LLST35:
	.long	.LFB116
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI32
	.long	.LFE116
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST31:
	.long	.LFB115
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI18
	.long	.LFE115
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST32:
	.long	.LVL100
	.long	.LVL102
	.word	0x1
	.byte	0x68
	.long	.LVL102
	.long	.LVL107
	.word	0x1
	.byte	0x6c
	.long	.LVL107
	.long	.LVL108-1
	.word	0x1
	.byte	0x68
	.long	.LVL108-1
	.long	.LVL108
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL108
	.long	.LFE115
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST33:
	.long	.LVL101
	.long	.LVL104
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL104
	.long	.LVL106-1
	.word	0x1
	.byte	0x68
	.long	.LVL108
	.long	.LFE115
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL104
	.long	.LVL105
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST0:
	.long	.LFB113
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
	.sleb128 23
	.long	.LCFI17
	.long	.LFE113
	.word	0x2
	.byte	0x8c
	.sleb128 23
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL5
	.long	.LVL8-1
	.word	0x1
	.byte	0x68
	.long	.LVL8-1
	.long	.LVL17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL17
	.long	.LVL21-1
	.word	0x1
	.byte	0x68
	.long	.LVL21-1
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL22
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LFE113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL3
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL4
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL5
	.long	.LVL10
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL17
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL58
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58
	.long	.LVL70
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL72
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL73
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73
	.long	.LVL81
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81
	.long	.LFE113
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL3
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL17
	.long	.LVL21-1
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL34
	.long	.LVL36
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL46
	.long	.LVL48
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LFE113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL5
	.long	.LVL12
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL12
	.long	.LVL14
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL58
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL58
	.long	.LVL61
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL61
	.long	.LVL63
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL63
	.long	.LVL66
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL66
	.long	.LVL67
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL67
	.long	.LVL69
	.word	0x1
	.byte	0x68
	.long	.LVL72
	.long	.LVL73
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL73
	.long	.LVL75
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL75
	.long	.LVL76
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.word	0x1
	.byte	0x69
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL81
	.long	.LVL83
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL83
	.long	.LVL84
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL84
	.long	.LVL86
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL91
	.long	.LVL93
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL93
	.long	.LVL94
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL94
	.long	.LVL95
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL95
	.long	.LFE113
	.word	0x2
	.byte	0x8c
	.sleb128 5
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL71
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL72
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL78
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81
	.long	.LFE113
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL11
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL13
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL58
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL62
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL64
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL67
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL73
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73
	.long	.LVL74
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.word	0x15
	.byte	0xc
	.long	0x7a1200
	.byte	0xf7
	.uleb128 0x29
	.byte	0x80
	.sleb128 0
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.word	0x15
	.byte	0xc
	.long	0x7a1200
	.byte	0xf7
	.uleb128 0x29
	.byte	0x80
	.sleb128 0
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL81
	.long	.LVL82
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84
	.long	.LVL85
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL86
	.long	.LVL89
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LVL92
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94
	.long	.LVL95
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL1
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL22
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL1
	.long	.LVL3
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x69
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x69
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x69
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST9:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL20
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL22
	.long	.LVL58
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LVL58
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x69
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x69
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x69
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST12:
	.long	.LVL29
	.long	.LVL30
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL30
	.long	.LVL34
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
	.long	.LVL26
	.long	.LVL27
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
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST18:
	.long	.LVL41
	.long	.LVL42
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
	.long	.LVL42
	.long	.LVL46
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
	.long	.LVL39
	.long	.LVL40
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST22:
	.long	.LVL44
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
.LLST23:
	.long	.LVL45
	.long	.LVL46
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST24:
	.long	.LVL53
	.long	.LVL54
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL54
	.long	.LVL58
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST27:
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST28:
	.long	.LVL56
	.long	.LVL57
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST29:
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST30:
	.long	.LVL96
	.long	.LVL97
	.word	0x1
	.byte	0x68
	.long	.LVL97
	.long	.LVL98
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL98
	.long	.LVL99
	.word	0x1
	.byte	0x68
	.long	.LVL99
	.long	.LFE114
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
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
	.long	.LFB113
	.long	.LFE113-.LFB113
	.long	.LFB114
	.long	.LFE114-.LFB114
	.long	.LFB115
	.long	.LFE115-.LFB115
	.long	.LFB116
	.long	.LFE116-.LFB116
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB24
	.long	.LBE24
	.long	.LBB55
	.long	.LBE55
	.long	.LBB56
	.long	.LBE56
	.long	.LBB57
	.long	.LBE57
	.long	0
	.long	0
	.long	.LBB26
	.long	.LBE26
	.long	.LBB36
	.long	.LBE36
	.long	0
	.long	0
	.long	.LBB31
	.long	.LBE31
	.long	.LBB37
	.long	.LBE37
	.long	0
	.long	0
	.long	.LFB113
	.long	.LFE113
	.long	.LFB114
	.long	.LFE114
	.long	.LFB115
	.long	.LFE115
	.long	.LFB116
	.long	.LFE116
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"digital_pin_to_port_PGM"
.LASF11:
	.string	"size_t"
.LASF46:
	.string	"timer2_toggle_count"
.LASF60:
	.string	"__addr16"
.LASF22:
	.string	"digital_pin_to_timer_PGM"
.LASF76:
	.string	"toneBegin"
.LASF12:
	.string	"__malloc_margin"
.LASF25:
	.string	"unget"
.LASF47:
	.string	"timer2_pin_port"
.LASF10:
	.string	"long long unsigned int"
.LASF33:
	.string	"HardwareSerial"
.LASF56:
	.string	"frequency"
.LASF9:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF63:
	.string	"GNU C++11 7.3.0 -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF43:
	.string	"timer1_toggle_count"
.LASF13:
	.string	"__malloc_heap_start"
.LASF7:
	.string	"long int"
.LASF28:
	.string	"udata"
.LASF53:
	.string	"noTone"
.LASF49:
	.string	"tone_pin_to_timer_PGM"
.LASF5:
	.string	"uint16_t"
.LASF24:
	.string	"double"
.LASF18:
	.string	"port_to_input_PGM"
.LASF48:
	.string	"timer2_pin_mask"
.LASF17:
	.string	"port_to_mode_PGM"
.LASF57:
	.string	"duration"
.LASF62:
	.string	"pinMode"
.LASF6:
	.string	"unsigned int"
.LASF75:
	.string	"_Z4tonehjm"
.LASF40:
	.string	"timer0_toggle_count"
.LASF0:
	.string	"long unsigned int"
.LASF42:
	.string	"timer0_pin_mask"
.LASF45:
	.string	"timer1_pin_mask"
.LASF19:
	.string	"port_to_output_PGM"
.LASF72:
	.string	"_Z6noToneh"
.LASF69:
	.string	"_ZN5Print5writeEPKcj"
.LASF41:
	.string	"timer0_pin_port"
.LASF71:
	.string	"__vector_7"
.LASF15:
	.string	"__malloc_heap_end"
.LASF27:
	.string	"size"
.LASF37:
	.string	"short unsigned int"
.LASF16:
	.string	"bool"
.LASF70:
	.string	"decltype(nullptr)"
.LASF58:
	.string	"prescalarbits"
.LASF68:
	.string	"write"
.LASF52:
	.string	"__result"
.LASF36:
	.string	"long double"
.LASF29:
	.string	"__iob"
.LASF23:
	.string	"float"
.LASF54:
	.string	"tone"
.LASF4:
	.string	"unsigned char"
.LASF66:
	.string	"__file"
.LASF59:
	.string	"toggle_count"
.LASF74:
	.string	"_Z12disableTimerh"
.LASF64:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Tone.cpp"
.LASF8:
	.string	"uint32_t"
.LASF61:
	.string	"digitalWrite"
.LASF50:
	.string	"tone_pins"
.LASF14:
	.string	"char"
.LASF67:
	.string	"LookaheadMode"
.LASF21:
	.string	"digital_pin_to_bit_mask_PGM"
.LASF73:
	.string	"disableTimer"
.LASF38:
	.string	"MOSI"
.LASF65:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF55:
	.string	"_pin"
.LASF2:
	.string	"int8_t"
.LASF44:
	.string	"timer1_pin_port"
.LASF30:
	.string	"SKIP_ALL"
.LASF39:
	.string	"MISO"
.LASF32:
	.string	"SKIP_WHITESPACE"
.LASF34:
	.string	"Print"
.LASF3:
	.string	"uint8_t"
.LASF51:
	.string	"_timer"
.LASF26:
	.string	"flags"
.LASF31:
	.string	"SKIP_NONE"
.LASF35:
	.string	"Serial"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
