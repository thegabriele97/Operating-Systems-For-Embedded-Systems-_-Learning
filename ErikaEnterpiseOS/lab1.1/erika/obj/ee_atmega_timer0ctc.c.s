	.file	"ee_atmega_timer0ctc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.OsEE_atmega_startTimer0,"ax",@progbits
.global	OsEE_atmega_startTimer0
	.type	OsEE_atmega_startTimer0, @function
OsEE_atmega_startTimer0:
.LFB65:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_atmega_timer0ctc.c"
	.loc 1 67 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
	out 0x25,__zero_reg__
	.loc 1 71 0
	out 0x24,__zero_reg__
	.loc 1 72 0
	out 0x26,__zero_reg__
	.loc 1 83 0
	cpi r22,16
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L2
.LVL1:
	.loc 1 85 0
	ldi r30,4
	1:
	lsl r22
	rol r23
	dec r30
	brne 1b
.LVL2:
	subi r22,1
	sbc r23,__zero_reg__
	.loc 1 84 0
	ldi r24,lo8(1)
.LVL3:
.L3:
	.loc 1 106 0
	ldi r25,lo8(2)
	out 0x15,r25
	.loc 1 107 0
	sts 110,r25
	.loc 1 108 0
	out 0x27,r22
	.loc 1 109 0
	ori r24,lo8(8)
.LVL4:
	out 0x25,r24
/* epilogue start */
	.loc 1 110 0
	ret
.LVL5:
.L2:
	.loc 1 87 0
	cpi r22,-128
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L4
.LVL6:
	.loc 1 89 0
	lsl r22
	rol r23
.LVL7:
	subi r22,1
	sbc r23,__zero_reg__
	.loc 1 88 0
	ldi r24,lo8(2)
	rjmp .L3
.LVL8:
.L4:
	.loc 1 91 0
	cp r22,__zero_reg__
	ldi r18,4
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L5
.LVL9:
	.loc 1 93 0
	ldi r20,2
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r20
	brne 1b
.LVL10:
	subi r22,1
	sbc r23,__zero_reg__
	.loc 1 92 0
	ldi r24,lo8(3)
	rjmp .L3
.LVL11:
.L5:
	.loc 1 95 0
	cp r22,__zero_reg__
	ldi r18,16
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L6
.LVL12:
	.loc 1 97 0
	ldi r19,4
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r19
	brne 1b
.LVL13:
	subi r22,1
	sbc r23,__zero_reg__
	.loc 1 96 0
	ldi r24,lo8(4)
	rjmp .L3
.LVL14:
.L6:
	.loc 1 101 0
	ldi r18,6
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r18
	brne 1b
.LVL15:
	subi r22,1
	sbc r23,__zero_reg__
	.loc 1 100 0
	ldi r24,lo8(5)
	rjmp .L3
	.cfi_endproc
.LFE65:
	.size	OsEE_atmega_startTimer0, .-OsEE_atmega_startTimer0
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_platform_types.h"
	.file 4 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_api_types.h"
	.file 5 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_scheduler_types.h"
	.file 6 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_kernel_types.h"
	.file 7 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd02
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF202
	.byte	0xc
	.long	.LASF203
	.long	.LASF204
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x82
	.long	0x7b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x5b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x68
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x6d
	.long	0x5e
	.uleb128 0x5
	.byte	0x2
	.long	0xbb
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x78
	.long	0x89
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xf4
	.long	0x4c
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.word	0x13a
	.long	0xb5
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x145
	.long	0x11c
	.uleb128 0x9
	.long	.LASF20
	.byte	0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.uleb128 0x9
	.long	.LASF22
	.byte	0x2
	.uleb128 0x9
	.long	.LASF23
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x4
	.word	0x153
	.long	0xf5
	.uleb128 0x7
	.long	.LASF25
	.byte	0x4
	.word	0x157
	.long	0x11c
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x15d
	.long	0x167
	.uleb128 0x9
	.long	.LASF26
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.uleb128 0x9
	.long	.LASF29
	.byte	0x3
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF32
	.byte	0x4
	.word	0x16e
	.long	0x134
	.uleb128 0x7
	.long	.LASF33
	.byte	0x4
	.word	0x17e
	.long	0x167
	.uleb128 0x7
	.long	.LASF34
	.byte	0x4
	.word	0x19e
	.long	0x9f
	.uleb128 0xa
	.byte	0x6
	.byte	0x4
	.word	0x1b7
	.long	0x1c2
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.word	0x1b9
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.word	0x1bc
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.word	0x1c0
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF38
	.byte	0x4
	.word	0x1c2
	.long	0x18b
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.word	0x237
	.long	0xaa
	.uleb128 0x7
	.long	.LASF40
	.byte	0x4
	.word	0x2a3
	.long	0x94
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x2b1
	.long	0x2a3
	.uleb128 0x9
	.long	.LASF41
	.byte	0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x1
	.uleb128 0x9
	.long	.LASF43
	.byte	0x2
	.uleb128 0x9
	.long	.LASF44
	.byte	0x3
	.uleb128 0x9
	.long	.LASF45
	.byte	0x4
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.uleb128 0x9
	.long	.LASF47
	.byte	0x6
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x9
	.uleb128 0x9
	.long	.LASF51
	.byte	0xa
	.uleb128 0x9
	.long	.LASF52
	.byte	0xb
	.uleb128 0x9
	.long	.LASF53
	.byte	0xc
	.uleb128 0x9
	.long	.LASF54
	.byte	0xd
	.uleb128 0x9
	.long	.LASF55
	.byte	0xe
	.uleb128 0x9
	.long	.LASF56
	.byte	0xf
	.uleb128 0x9
	.long	.LASF57
	.byte	0x10
	.uleb128 0x9
	.long	.LASF58
	.byte	0x11
	.uleb128 0x9
	.long	.LASF59
	.byte	0x12
	.uleb128 0x9
	.long	.LASF60
	.byte	0x13
	.uleb128 0x9
	.long	.LASF61
	.byte	0x14
	.uleb128 0x9
	.long	.LASF62
	.byte	0x15
	.uleb128 0x9
	.long	.LASF63
	.byte	0x16
	.uleb128 0x9
	.long	.LASF64
	.byte	0x17
	.uleb128 0x9
	.long	.LASF65
	.byte	0x18
	.uleb128 0x9
	.long	.LASF66
	.byte	0x19
	.uleb128 0x9
	.long	.LASF67
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF68
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF69
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.long	.LASF70
	.byte	0x4
	.word	0x2d4
	.long	0x1e6
	.uleb128 0x7
	.long	.LASF71
	.byte	0x4
	.word	0x2d9
	.long	0x2a3
	.uleb128 0xc
	.long	.LASF74
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x2e4
	.uleb128 0xd
	.long	.LASF72
	.byte	0x5
	.byte	0x4d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF73
	.byte	0x5
	.byte	0x4f
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x2bb
	.uleb128 0xe
	.long	.LASF75
	.byte	0xe
	.byte	0x6
	.word	0x108
	.long	0x370
	.uleb128 0xf
	.string	"hdb"
	.byte	0x6
	.word	0x10b
	.long	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x6
	.word	0x10e
	.long	0x6b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.word	0x110
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF77
	.byte	0x6
	.word	0x112
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.long	.LASF78
	.byte	0x6
	.word	0x114
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF79
	.byte	0x6
	.word	0x117
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.long	.LASF80
	.byte	0x6
	.word	0x11a
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.word	0x11c
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x10
	.long	0x2ea
	.uleb128 0x5
	.byte	0x2
	.long	0x370
	.uleb128 0x4
	.long	.LASF82
	.byte	0x5
	.byte	0x50
	.long	0x2bb
	.uleb128 0x4
	.long	.LASF83
	.byte	0x5
	.byte	0xd5
	.long	0x391
	.uleb128 0x5
	.byte	0x2
	.long	0x37b
	.uleb128 0xc
	.long	.LASF84
	.byte	0x14
	.byte	0x7
	.byte	0x43
	.long	0x4a6
	.uleb128 0x11
	.string	"r29"
	.byte	0x7
	.byte	0x44
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0x7
	.byte	0x45
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0x7
	.byte	0x46
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0x7
	.byte	0x47
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0x7
	.byte	0x48
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0x7
	.byte	0x49
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0x7
	.byte	0x4a
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0x7
	.byte	0x4b
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0x7
	.byte	0x4c
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0x7
	.byte	0x4d
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0x7
	.byte	0x4e
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0x7
	.byte	0x4f
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0x7
	.byte	0x50
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0x7
	.byte	0x51
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0x7
	.byte	0x52
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0x7
	.byte	0x53
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0x7
	.byte	0x54
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0x7
	.byte	0x55
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.long	.LASF85
	.byte	0x7
	.byte	0x56
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x397
	.uleb128 0x4
	.long	.LASF86
	.byte	0x7
	.byte	0x57
	.long	0x397
	.uleb128 0xc
	.long	.LASF87
	.byte	0x2
	.byte	0x7
	.byte	0x5a
	.long	0x4d2
	.uleb128 0xd
	.long	.LASF88
	.byte	0x7
	.byte	0x5b
	.long	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x4ac
	.uleb128 0x4
	.long	.LASF89
	.byte	0x7
	.byte	0x5c
	.long	0x4b7
	.uleb128 0xc
	.long	.LASF90
	.byte	0x4
	.byte	0x7
	.byte	0x5e
	.long	0x50c
	.uleb128 0xd
	.long	.LASF91
	.byte	0x7
	.byte	0x5f
	.long	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF92
	.byte	0x7
	.byte	0x60
	.long	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x10
	.long	0x4e3
	.uleb128 0x4
	.long	.LASF93
	.byte	0x7
	.byte	0x61
	.long	0x50c
	.uleb128 0xc
	.long	.LASF94
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.long	0x545
	.uleb128 0xd
	.long	.LASF95
	.byte	0x7
	.byte	0x64
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF96
	.byte	0x7
	.byte	0x65
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x10
	.long	0x51c
	.uleb128 0x5
	.byte	0x2
	.long	0x511
	.uleb128 0x5
	.byte	0x2
	.long	0x4d8
	.uleb128 0x4
	.long	.LASF97
	.byte	0x7
	.byte	0x69
	.long	0x545
	.uleb128 0x4
	.long	.LASF98
	.byte	0x6
	.byte	0x51
	.long	0xb5
	.uleb128 0x4
	.long	.LASF99
	.byte	0x6
	.byte	0x53
	.long	0x4c
	.uleb128 0x12
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x73
	.long	0x59d
	.uleb128 0x9
	.long	.LASF100
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0x1
	.uleb128 0x9
	.long	.LASF102
	.byte	0x2
	.uleb128 0x9
	.long	.LASF103
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF104
	.byte	0x6
	.byte	0x7d
	.long	0x577
	.uleb128 0x13
	.long	0x59d
	.uleb128 0x14
	.byte	0x5
	.byte	0x6
	.byte	0x90
	.long	0x5e0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x6
	.byte	0x94
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF105
	.byte	0x6
	.byte	0x97
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF106
	.byte	0x6
	.byte	0x9a
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF107
	.byte	0x3
	.byte	0x6
	.byte	0xb5
	.long	0x609
	.uleb128 0xd
	.long	.LASF108
	.byte	0x6
	.byte	0xb7
	.long	0x61f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x6
	.byte	0xc3
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x10
	.long	0x5e0
	.uleb128 0x5
	.byte	0x2
	.long	0x609
	.uleb128 0x4
	.long	.LASF110
	.byte	0x6
	.byte	0x9b
	.long	0x5ad
	.uleb128 0x5
	.byte	0x2
	.long	0x614
	.uleb128 0x4
	.long	.LASF111
	.byte	0x6
	.byte	0xce
	.long	0x609
	.uleb128 0x4
	.long	.LASF112
	.byte	0x6
	.byte	0xd2
	.long	0x625
	.uleb128 0x14
	.byte	0xc
	.byte	0x6
	.byte	0xe0
	.long	0x6a6
	.uleb128 0xd
	.long	.LASF113
	.byte	0x6
	.byte	0xe4
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF114
	.byte	0x6
	.byte	0xea
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF115
	.byte	0x6
	.byte	0xec
	.long	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF116
	.byte	0x6
	.byte	0xef
	.long	0x6a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF117
	.byte	0x6
	.byte	0xf3
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF118
	.byte	0x6
	.byte	0xf5
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF119
	.byte	0x6
	.byte	0xfb
	.long	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x625
	.uleb128 0x7
	.long	.LASF120
	.byte	0x6
	.word	0x101
	.long	0x63b
	.uleb128 0x5
	.byte	0x2
	.long	0x6ac
	.uleb128 0x7
	.long	.LASF121
	.byte	0x6
	.word	0x122
	.long	0x370
	.uleb128 0x5
	.byte	0x2
	.long	0x6be
	.uleb128 0x10
	.long	0x6ca
	.uleb128 0x7
	.long	.LASF122
	.byte	0x6
	.word	0x151
	.long	0x6e1
	.uleb128 0x5
	.byte	0x2
	.long	0x722
	.uleb128 0xe
	.long	.LASF123
	.byte	0xe
	.byte	0x6
	.word	0x269
	.long	0x722
	.uleb128 0xb
	.long	.LASF124
	.byte	0x6
	.word	0x26b
	.long	0x8ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x6
	.word	0x26d
	.long	0x811
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF126
	.byte	0x6
	.word	0x27b
	.long	0x855
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.long	0x6e7
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.word	0x155
	.long	0x74f
	.uleb128 0xb
	.long	.LASF127
	.byte	0x6
	.word	0x157
	.long	0x6d5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF128
	.byte	0x6
	.word	0x159
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF129
	.byte	0x6
	.word	0x15e
	.long	0x727
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.word	0x16f
	.long	0x783
	.uleb128 0xb
	.long	.LASF130
	.byte	0x6
	.word	0x171
	.long	0x788
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF131
	.byte	0x6
	.word	0x177
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x10
	.long	0x75b
	.uleb128 0x5
	.byte	0x2
	.long	0x74f
	.uleb128 0x7
	.long	.LASF132
	.byte	0x6
	.word	0x17c
	.long	0x783
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x17f
	.long	0x7c1
	.uleb128 0x9
	.long	.LASF133
	.byte	0
	.uleb128 0x9
	.long	.LASF134
	.byte	0x1
	.uleb128 0x9
	.long	.LASF135
	.byte	0x2
	.uleb128 0x9
	.long	.LASF136
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF137
	.byte	0x6
	.word	0x184
	.long	0x79a
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.word	0x189
	.long	0x811
	.uleb128 0xf
	.string	"f"
	.byte	0x6
	.word	0x18b
	.long	0x561
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.word	0x18d
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF125
	.byte	0x6
	.word	0x18f
	.long	0x811
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF138
	.byte	0x6
	.word	0x192
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x78e
	.uleb128 0x10
	.long	0x811
	.uleb128 0x7
	.long	.LASF139
	.byte	0x6
	.word	0x194
	.long	0x7cd
	.uleb128 0xa
	.byte	0xa
	.byte	0x6
	.word	0x198
	.long	0x850
	.uleb128 0xb
	.long	.LASF140
	.byte	0x6
	.word	0x19a
	.long	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF141
	.byte	0x6
	.word	0x19c
	.long	0x7c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.long	0x828
	.uleb128 0x7
	.long	.LASF142
	.byte	0x6
	.word	0x19d
	.long	0x850
	.uleb128 0x8
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x22b
	.long	0x88e
	.uleb128 0x9
	.long	.LASF143
	.byte	0
	.uleb128 0x9
	.long	.LASF144
	.byte	0x1
	.uleb128 0x9
	.long	.LASF145
	.byte	0x2
	.uleb128 0x9
	.long	.LASF146
	.byte	0x3
	.uleb128 0x9
	.long	.LASF147
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF148
	.byte	0x6
	.word	0x231
	.long	0x861
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.word	0x242
	.long	0x8e0
	.uleb128 0xb
	.long	.LASF72
	.byte	0x6
	.word	0x244
	.long	0x6e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF149
	.byte	0x6
	.word	0x247
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF115
	.byte	0x6
	.word	0x249
	.long	0x88e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.word	0x24d
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF151
	.byte	0x6
	.word	0x25e
	.long	0x89a
	.uleb128 0x5
	.byte	0x2
	.long	0x8e0
	.uleb128 0x7
	.long	.LASF152
	.byte	0x6
	.word	0x290
	.long	0x722
	.uleb128 0x7
	.long	.LASF153
	.byte	0x6
	.word	0x295
	.long	0x8f2
	.uleb128 0xa
	.byte	0x6
	.byte	0x6
	.word	0x2a9
	.long	0x941
	.uleb128 0xb
	.long	.LASF154
	.byte	0x6
	.word	0x2ad
	.long	0x946
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF155
	.byte	0x6
	.word	0x2af
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF156
	.byte	0x6
	.word	0x2b2
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.long	0x90a
	.uleb128 0x5
	.byte	0x2
	.long	0x8f2
	.uleb128 0x7
	.long	.LASF157
	.byte	0x6
	.word	0x2b8
	.long	0x941
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.word	0x2bb
	.long	0x980
	.uleb128 0xb
	.long	.LASF158
	.byte	0x6
	.word	0x2bd
	.long	0x990
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF159
	.byte	0x6
	.word	0x2bf
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x10
	.long	0x958
	.uleb128 0x15
	.long	0x94c
	.long	0x990
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x985
	.uleb128 0x7
	.long	.LASF160
	.byte	0x6
	.word	0x2c0
	.long	0x980
	.uleb128 0xe
	.long	.LASF161
	.byte	0x4
	.byte	0x6
	.word	0x2c7
	.long	0x9ce
	.uleb128 0xb
	.long	.LASF162
	.byte	0x6
	.word	0x2c9
	.long	0x9de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF163
	.byte	0x6
	.word	0x2cb
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x10
	.long	0x9a2
	.uleb128 0x15
	.long	0x6d0
	.long	0x9de
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x9d3
	.uleb128 0x7
	.long	.LASF164
	.byte	0x6
	.word	0x2cc
	.long	0x9ce
	.uleb128 0xa
	.byte	0x12
	.byte	0x6
	.word	0x2d9
	.long	0xaad
	.uleb128 0xb
	.long	.LASF165
	.byte	0x6
	.word	0x2dc
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"rq"
	.byte	0x6
	.word	0x2ee
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF166
	.byte	0x6
	.word	0x2f0
	.long	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF167
	.byte	0x6
	.word	0x2ff
	.long	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF168
	.byte	0x6
	.word	0x301
	.long	0x5a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF169
	.byte	0x6
	.word	0x305
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF170
	.byte	0x6
	.word	0x307
	.long	0x2af
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.long	.LASF171
	.byte	0x6
	.word	0x327
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.long	.LASF172
	.byte	0x6
	.word	0x329
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.long	.LASF173
	.byte	0x6
	.word	0x32b
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.long	.LASF174
	.byte	0x6
	.word	0x32d
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF175
	.byte	0x6
	.word	0x330
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	.LASF176
	.byte	0x6
	.word	0x33a
	.long	0x9f0
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.word	0x344
	.long	0xb3b
	.uleb128 0xb
	.long	.LASF177
	.byte	0x6
	.word	0x34a
	.long	0xb40
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF178
	.byte	0x6
	.word	0x351
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF179
	.byte	0x6
	.word	0x354
	.long	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF180
	.byte	0x6
	.word	0x358
	.long	0x811
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF181
	.byte	0x6
	.word	0x35c
	.long	0xb51
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF182
	.byte	0x6
	.word	0x35e
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF183
	.byte	0x6
	.word	0x362
	.long	0xb62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF184
	.byte	0x6
	.word	0x364
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x10
	.long	0xab9
	.uleb128 0x5
	.byte	0x2
	.long	0xaad
	.uleb128 0x15
	.long	0x9e4
	.long	0xb51
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xb46
	.uleb128 0x15
	.long	0x996
	.long	0xb62
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xb57
	.uleb128 0x7
	.long	.LASF185
	.byte	0x6
	.word	0x36a
	.long	0xb3b
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.word	0x36f
	.long	0xb8d
	.uleb128 0xb
	.long	.LASF186
	.byte	0x6
	.word	0x3b1
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF187
	.byte	0x6
	.word	0x3b3
	.long	0xb74
	.uleb128 0xa
	.byte	0x12
	.byte	0x6
	.word	0x3c3
	.long	0xc2a
	.uleb128 0xb
	.long	.LASF188
	.byte	0x6
	.word	0x3c5
	.long	0xc2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF162
	.byte	0x6
	.word	0x3d1
	.long	0x9de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF163
	.byte	0x6
	.word	0x3d4
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF189
	.byte	0x6
	.word	0x3e0
	.long	0xc4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF190
	.byte	0x6
	.word	0x3e2
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF191
	.byte	0x6
	.word	0x3e6
	.long	0xc5c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF192
	.byte	0x6
	.word	0x3e8
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF193
	.byte	0x6
	.word	0x3eb
	.long	0xc78
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.long	.LASF194
	.byte	0x6
	.word	0x3ed
	.long	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.long	0xb99
	.uleb128 0x5
	.byte	0x2
	.long	0xb8d
	.uleb128 0x15
	.long	0xc46
	.long	0xc40
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x630
	.uleb128 0x10
	.long	0xc40
	.uleb128 0x5
	.byte	0x2
	.long	0xc35
	.uleb128 0x15
	.long	0x817
	.long	0xc5c
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xc51
	.uleb128 0x15
	.long	0xc73
	.long	0xc6d
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x8fe
	.uleb128 0x10
	.long	0xc6d
	.uleb128 0x5
	.byte	0x2
	.long	0xc62
	.uleb128 0x7
	.long	.LASF195
	.byte	0x6
	.word	0x3fc
	.long	0xc2a
	.uleb128 0x17
	.long	.LASF196
	.byte	0x8
	.byte	0x3f
	.long	0xc7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF197
	.byte	0x8
	.byte	0x40
	.long	0xb68
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF198
	.byte	0x8
	.byte	0x41
	.long	0xb8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF199
	.byte	0x8
	.byte	0x42
	.long	0xaad
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF205
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x19
	.long	.LASF206
	.byte	0x1
	.byte	0x43
	.long	0x70
	.long	.LLST0
	.uleb128 0x1a
	.long	.LASF200
	.byte	0x1
	.byte	0x44
	.long	0x4c
	.long	.LLST1
	.uleb128 0x1b
	.long	.LASF201
	.byte	0x1
	.byte	0x45
	.long	0x5e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL8
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL9
	.long	.LVL11
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL12
	.long	.LVL14
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL14
	.long	.LFE65
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB65
	.long	.LFE65
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF136:
	.string	"OSEE_ACTION_CALLBACK"
.LASF14:
	.string	"OsEE_event_mask"
.LASF193:
	.string	"p_alarm_ptr_array"
.LASF99:
	.string	"OsEE_byte"
.LASF133:
	.string	"OSEE_ACTION_TASK"
.LASF167:
	.string	"p_stk_sn"
.LASF34:
	.string	"TickType"
.LASF169:
	.string	"app_mode"
.LASF11:
	.string	"OsEE_reg"
.LASF160:
	.string	"OsEE_autostart_trigger"
.LASF121:
	.string	"OsEE_TDB"
.LASF20:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF58:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF141:
	.string	"type"
.LASF190:
	.string	"res_array_size"
.LASF195:
	.string	"OsEE_KDB"
.LASF23:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF10:
	.string	"long long unsigned int"
.LASF71:
	.string	"StatusType"
.LASF32:
	.string	"OsEE_task_status"
.LASF89:
	.string	"OsEE_SCB"
.LASF26:
	.string	"OSEE_TASK_SUSPENDED"
.LASF22:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF185:
	.string	"OsEE_CDB"
.LASF77:
	.string	"task_type"
.LASF35:
	.string	"maxallowedvalue"
.LASF196:
	.string	"osEE_kdb_var"
.LASF166:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF39:
	.string	"EventMaskType"
.LASF184:
	.string	"autostart_trigger_array_size"
.LASF110:
	.string	"OsEE_MCB"
.LASF57:
	.string	"E_OS_PROTECTION_TIME"
.LASF69:
	.string	"E_OS_SYS_ACT"
.LASF179:
	.string	"p_idle_task"
.LASF24:
	.string	"OsEE_task_type"
.LASF108:
	.string	"p_cb"
.LASF17:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF189:
	.string	"p_res_ptr_array"
.LASF147:
	.string	"OSEE_TRIGGER_REENABLED"
.LASF132:
	.string	"OsEE_CounterDB"
.LASF64:
	.string	"E_OS_CORE"
.LASF42:
	.string	"E_OS_ACCESS"
.LASF97:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF104:
	.string	"OsEE_kernel_status"
.LASF93:
	.string	"OsEE_SDB"
.LASF203:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_atmega_timer0ctc.c"
.LASF88:
	.string	"p_tos"
.LASF156:
	.string	"second_tick_parameter"
.LASF155:
	.string	"first_tick_parameter"
.LASF44:
	.string	"E_OS_ID"
.LASF40:
	.string	"MemSize"
.LASF37:
	.string	"mincycle"
.LASF101:
	.string	"OSEE_KERNEL_STARTING"
.LASF186:
	.string	"dummy"
.LASF59:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF78:
	.string	"task_func"
.LASF128:
	.string	"value"
.LASF81:
	.string	"max_num_of_act"
.LASF111:
	.string	"OsEE_MDB"
.LASF116:
	.string	"p_last_m"
.LASF158:
	.string	"p_trigger_ptr_array"
.LASF0:
	.string	"unsigned int"
.LASF38:
	.string	"AlarmBaseType"
.LASF122:
	.string	"OsEE_TriggerQ"
.LASF134:
	.string	"OSEE_ACTION_EVENT"
.LASF130:
	.string	"p_counter_cb"
.LASF9:
	.string	"long unsigned int"
.LASF151:
	.string	"OsEE_TriggerCB"
.LASF56:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF188:
	.string	"p_kcb"
.LASF149:
	.string	"when"
.LASF19:
	.string	"TaskFunc"
.LASF16:
	.string	"TaskType"
.LASF142:
	.string	"OsEE_action"
.LASF145:
	.string	"OSEE_TRIGGER_ACTIVE"
.LASF168:
	.string	"os_status"
.LASF15:
	.string	"AppModeType"
.LASF75:
	.string	"OsEE_TDB_tag"
.LASF87:
	.string	"OsEE_SCB_tag"
.LASF200:
	.string	"timer0Prescaler"
.LASF31:
	.string	"OSEE_TASK_CHAINED"
.LASF83:
	.string	"OsEE_RQ"
.LASF176:
	.string	"OsEE_CCB"
.LASF206:
	.string	"microsecondsInterval"
.LASF178:
	.string	"p_idle_hook"
.LASF171:
	.string	"prev_s_isr_all_status"
.LASF191:
	.string	"p_counter_ptr_array"
.LASF192:
	.string	"counter_array_size"
.LASF194:
	.string	"alarm_array_size"
.LASF41:
	.string	"E_OK"
.LASF48:
	.string	"E_OS_STATE"
.LASF29:
	.string	"OSEE_TASK_WAITING"
.LASF125:
	.string	"p_counter_db"
.LASF175:
	.string	"d_isr_all_cnt"
.LASF165:
	.string	"p_curr"
.LASF103:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF67:
	.string	"E_OS_SYS_TASK"
.LASF107:
	.string	"OsEE_MDB_tag"
.LASF135:
	.string	"OSEE_ACTION_COUNTER"
.LASF2:
	.string	"long double"
.LASF112:
	.string	"OsEE_ResourceDB"
.LASF164:
	.string	"OsEE_autostart_tdb"
.LASF126:
	.string	"action"
.LASF106:
	.string	"p_owner"
.LASF18:
	.string	"TaskActivation"
.LASF13:
	.string	"OsEE_tick_type"
.LASF159:
	.string	"trigger_array_size"
.LASF55:
	.string	"E_OS_PARAM_POINTER"
.LASF105:
	.string	"prev_prio"
.LASF118:
	.string	"event_mask"
.LASF91:
	.string	"p_bos"
.LASF53:
	.string	"E_OS_DISABLEDINT"
.LASF187:
	.string	"OsEE_KCB"
.LASF82:
	.string	"OsEE_SN"
.LASF174:
	.string	"s_isr_os_cnt"
.LASF52:
	.string	"E_OS_MISSINGEND"
.LASF109:
	.string	"prio"
.LASF204:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF36:
	.string	"ticksperbase"
.LASF144:
	.string	"OSEE_TRIGGER_CANCELED"
.LASF79:
	.string	"ready_prio"
.LASF28:
	.string	"OSEE_TASK_READY_STACKED"
.LASF49:
	.string	"E_OS_VALUE"
.LASF90:
	.string	"OsEE_SDB_tag"
.LASF153:
	.string	"OsEE_AlarmDB"
.LASF113:
	.string	"current_num_of_act"
.LASF180:
	.string	"p_sys_counter_db"
.LASF76:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF60:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF84:
	.string	"OsEE_CTX_tag"
.LASF68:
	.string	"E_OS_SYS_STACK"
.LASF102:
	.string	"OSEE_KERNEL_STARTED"
.LASF123:
	.string	"OsEE_TriggerDB_tag"
.LASF131:
	.string	"info"
.LASF62:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF63:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF162:
	.string	"p_tdb_ptr_array"
.LASF72:
	.string	"p_next"
.LASF27:
	.string	"OSEE_TASK_READY"
.LASF45:
	.string	"E_OS_LIMIT"
.LASF148:
	.string	"OsEE_trigger_status"
.LASF117:
	.string	"wait_mask"
.LASF177:
	.string	"p_ccb"
.LASF198:
	.string	"osEE_kcb_var"
.LASF197:
	.string	"osEE_cdb_var"
.LASF152:
	.string	"OsEE_TriggerDB"
.LASF161:
	.string	"OsEE_autostart_tdb_tag"
.LASF21:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF98:
	.string	"OsEE_kernel_cb"
.LASF172:
	.string	"prev_s_isr_os_status"
.LASF170:
	.string	"last_error"
.LASF8:
	.string	"uint32_t"
.LASF74:
	.string	"OsEE_SN_tag"
.LASF114:
	.string	"current_prio"
.LASF65:
	.string	"E_OS_SYS_INIT"
.LASF127:
	.string	"trigger_queue"
.LASF70:
	.string	"OsEE_status_type"
.LASF73:
	.string	"p_tdb"
.LASF100:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF51:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF183:
	.string	"p_autostart_trigger_array"
.LASF12:
	.string	"OsEE_mem_size"
.LASF124:
	.string	"p_trigger_cb"
.LASF119:
	.string	"p_own_sn"
.LASF139:
	.string	"OsEE_action_param"
.LASF154:
	.string	"p_trigger_db"
.LASF96:
	.string	"p_scb"
.LASF33:
	.string	"TaskStateType"
.LASF140:
	.string	"param"
.LASF143:
	.string	"OSEE_TRIGGER_INACTIVE"
.LASF47:
	.string	"E_OS_RESOURCE"
.LASF163:
	.string	"tdb_array_size"
.LASF173:
	.string	"s_isr_all_cnt"
.LASF150:
	.string	"cycle"
.LASF138:
	.string	"mask"
.LASF201:
	.string	"timer0CompareValue"
.LASF115:
	.string	"status"
.LASF66:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF202:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF80:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF50:
	.string	"E_OS_SERVICEID"
.LASF92:
	.string	"stack_size"
.LASF146:
	.string	"OSEE_TRIGGER_EXPIRED"
.LASF120:
	.string	"OsEE_TCB"
.LASF182:
	.string	"autostart_tdb_array_size"
.LASF94:
	.string	"OsEE_HDB_tag"
.LASF129:
	.string	"OsEE_CounterCB"
.LASF46:
	.string	"E_OS_NOFUNC"
.LASF95:
	.string	"p_sdb"
.LASF43:
	.string	"E_OS_CALLEVEL"
.LASF25:
	.string	"TaskExecutionType"
.LASF205:
	.string	"OsEE_atmega_startTimer0"
.LASF30:
	.string	"OSEE_TASK_RUNNING"
.LASF157:
	.string	"OsEE_autostart_trigger_info"
.LASF199:
	.string	"osEE_ccb_var"
.LASF137:
	.string	"OsEE_action_type"
.LASF54:
	.string	"E_OS_STACKFAULT"
.LASF181:
	.string	"p_autostart_tdb_array"
.LASF85:
	.string	"p_ctx"
.LASF61:
	.string	"E_OS_SPINLOCK"
.LASF86:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
