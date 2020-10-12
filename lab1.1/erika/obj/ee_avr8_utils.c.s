	.file	"ee_avr8_utils.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_avr8_WriteCCPReg,"ax",@progbits
.global	osEE_avr8_WriteCCPReg
	.type	osEE_avr8_WriteCCPReg, @function
osEE_avr8_WriteCCPReg:
.LFB65:
	.file 1 "C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_avr8_utils.c"
	.loc 1 73 0
	.cfi_startproc
.LVL0:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL1:
	.loc 1 87 0
/* #APP */
 ;  87 "C:\Users\gabri\OneDrive\Desktop\OS4ES_~1\lab1.1\erika\src\ee_avr8_utils.c" 1
	movw r30,  r24
	ldi  r16,  216
	out   52, r16
	st     Z,  r22
	
 ;  0 "" 2
/* epilogue start */
	.loc 1 100 0
/* #NOAPP */
	pop r16
	ret
	.cfi_endproc
.LFE65:
	.size	osEE_avr8_WriteCCPReg, .-osEE_avr8_WriteCCPReg
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
	.long	0xd07
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF200
	.byte	0xc
	.long	.LASF201
	.long	.LASF202
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
	.byte	0x3
	.byte	0x5b
	.long	0x4c
	.uleb128 0x5
	.long	0x7e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x65
	.long	0x5e
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x68
	.long	0x5e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x6d
	.long	0x5e
	.uleb128 0x6
	.byte	0x2
	.long	0xb5
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x60
	.long	0x4c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x78
	.long	0x7e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0xc8
	.long	0x4c
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0xf4
	.long	0x4c
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.word	0x13a
	.long	0xaf
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x145
	.long	0x116
	.uleb128 0xa
	.long	.LASF19
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.uleb128 0xa
	.long	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.word	0x153
	.long	0xef
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.word	0x157
	.long	0x116
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x15d
	.long	0x161
	.uleb128 0xa
	.long	.LASF25
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.uleb128 0xa
	.long	.LASF28
	.byte	0x3
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.word	0x16e
	.long	0x12e
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.word	0x17e
	.long	0x161
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.word	0x19e
	.long	0x99
	.uleb128 0xb
	.byte	0x6
	.byte	0x4
	.word	0x1b7
	.long	0x1bc
	.uleb128 0xc
	.long	.LASF34
	.byte	0x4
	.word	0x1b9
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x4
	.word	0x1bc
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF36
	.byte	0x4
	.word	0x1c0
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.word	0x1c2
	.long	0x185
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.word	0x237
	.long	0xa4
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.word	0x2a3
	.long	0x8e
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.word	0x2b1
	.long	0x29d
	.uleb128 0xa
	.long	.LASF40
	.byte	0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0x2
	.uleb128 0xa
	.long	.LASF43
	.byte	0x3
	.uleb128 0xa
	.long	.LASF44
	.byte	0x4
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.uleb128 0xa
	.long	.LASF48
	.byte	0x8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x9
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.uleb128 0xa
	.long	.LASF51
	.byte	0xb
	.uleb128 0xa
	.long	.LASF52
	.byte	0xc
	.uleb128 0xa
	.long	.LASF53
	.byte	0xd
	.uleb128 0xa
	.long	.LASF54
	.byte	0xe
	.uleb128 0xa
	.long	.LASF55
	.byte	0xf
	.uleb128 0xa
	.long	.LASF56
	.byte	0x10
	.uleb128 0xa
	.long	.LASF57
	.byte	0x11
	.uleb128 0xa
	.long	.LASF58
	.byte	0x12
	.uleb128 0xa
	.long	.LASF59
	.byte	0x13
	.uleb128 0xa
	.long	.LASF60
	.byte	0x14
	.uleb128 0xa
	.long	.LASF61
	.byte	0x15
	.uleb128 0xa
	.long	.LASF62
	.byte	0x16
	.uleb128 0xa
	.long	.LASF63
	.byte	0x17
	.uleb128 0xa
	.long	.LASF64
	.byte	0x18
	.uleb128 0xa
	.long	.LASF65
	.byte	0x19
	.uleb128 0xa
	.long	.LASF66
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF67
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF68
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x4
	.word	0x2d4
	.long	0x1e0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x4
	.word	0x2d9
	.long	0x29d
	.uleb128 0xd
	.long	.LASF73
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x2de
	.uleb128 0xe
	.long	.LASF71
	.byte	0x5
	.byte	0x4d
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF72
	.byte	0x5
	.byte	0x4f
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x2b5
	.uleb128 0xf
	.long	.LASF74
	.byte	0xe
	.byte	0x6
	.word	0x108
	.long	0x36a
	.uleb128 0x10
	.string	"hdb"
	.byte	0x6
	.word	0x10b
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF75
	.byte	0x6
	.word	0x10e
	.long	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"tid"
	.byte	0x6
	.word	0x110
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF76
	.byte	0x6
	.word	0x112
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF77
	.byte	0x6
	.word	0x114
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF78
	.byte	0x6
	.word	0x117
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF79
	.byte	0x6
	.word	0x11a
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF80
	.byte	0x6
	.word	0x11c
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x11
	.long	0x2e4
	.uleb128 0x6
	.byte	0x2
	.long	0x36a
	.uleb128 0x4
	.long	.LASF81
	.byte	0x5
	.byte	0x50
	.long	0x2b5
	.uleb128 0x4
	.long	.LASF82
	.byte	0x5
	.byte	0xd5
	.long	0x38b
	.uleb128 0x6
	.byte	0x2
	.long	0x375
	.uleb128 0xd
	.long	.LASF83
	.byte	0x14
	.byte	0x7
	.byte	0x43
	.long	0x4a0
	.uleb128 0x12
	.string	"r29"
	.byte	0x7
	.byte	0x44
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"r28"
	.byte	0x7
	.byte	0x45
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"r17"
	.byte	0x7
	.byte	0x46
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"r16"
	.byte	0x7
	.byte	0x47
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.string	"r15"
	.byte	0x7
	.byte	0x48
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"r14"
	.byte	0x7
	.byte	0x49
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x12
	.string	"r13"
	.byte	0x7
	.byte	0x4a
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.string	"r12"
	.byte	0x7
	.byte	0x4b
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x12
	.string	"r11"
	.byte	0x7
	.byte	0x4c
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"r10"
	.byte	0x7
	.byte	0x4d
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.string	"r9"
	.byte	0x7
	.byte	0x4e
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.string	"r8"
	.byte	0x7
	.byte	0x4f
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x12
	.string	"r7"
	.byte	0x7
	.byte	0x50
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"r6"
	.byte	0x7
	.byte	0x51
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"r5"
	.byte	0x7
	.byte	0x52
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"r4"
	.byte	0x7
	.byte	0x53
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x12
	.string	"r3"
	.byte	0x7
	.byte	0x54
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"r2"
	.byte	0x7
	.byte	0x55
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.long	.LASF84
	.byte	0x7
	.byte	0x56
	.long	0x4a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x391
	.uleb128 0x4
	.long	.LASF85
	.byte	0x7
	.byte	0x57
	.long	0x391
	.uleb128 0xd
	.long	.LASF86
	.byte	0x2
	.byte	0x7
	.byte	0x5a
	.long	0x4cc
	.uleb128 0xe
	.long	.LASF87
	.byte	0x7
	.byte	0x5b
	.long	0x4cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x4a6
	.uleb128 0x4
	.long	.LASF88
	.byte	0x7
	.byte	0x5c
	.long	0x4b1
	.uleb128 0xd
	.long	.LASF89
	.byte	0x4
	.byte	0x7
	.byte	0x5e
	.long	0x506
	.uleb128 0xe
	.long	.LASF90
	.byte	0x7
	.byte	0x5f
	.long	0x4cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF91
	.byte	0x7
	.byte	0x60
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.long	0x4dd
	.uleb128 0x4
	.long	.LASF92
	.byte	0x7
	.byte	0x61
	.long	0x506
	.uleb128 0xd
	.long	.LASF93
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.long	0x53f
	.uleb128 0xe
	.long	.LASF94
	.byte	0x7
	.byte	0x64
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF95
	.byte	0x7
	.byte	0x65
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.long	0x516
	.uleb128 0x6
	.byte	0x2
	.long	0x50b
	.uleb128 0x6
	.byte	0x2
	.long	0x4d2
	.uleb128 0x4
	.long	.LASF96
	.byte	0x7
	.byte	0x69
	.long	0x53f
	.uleb128 0x4
	.long	.LASF97
	.byte	0x6
	.byte	0x51
	.long	0xaf
	.uleb128 0x4
	.long	.LASF98
	.byte	0x6
	.byte	0x53
	.long	0x4c
	.uleb128 0x13
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x73
	.long	0x597
	.uleb128 0xa
	.long	.LASF99
	.byte	0
	.uleb128 0xa
	.long	.LASF100
	.byte	0x1
	.uleb128 0xa
	.long	.LASF101
	.byte	0x2
	.uleb128 0xa
	.long	.LASF102
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF103
	.byte	0x6
	.byte	0x7d
	.long	0x571
	.uleb128 0x5
	.long	0x597
	.uleb128 0x14
	.byte	0x5
	.byte	0x6
	.byte	0x90
	.long	0x5da
	.uleb128 0xe
	.long	.LASF71
	.byte	0x6
	.byte	0x94
	.long	0x608
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x6
	.byte	0x97
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF105
	.byte	0x6
	.byte	0x9a
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x3
	.byte	0x6
	.byte	0xb5
	.long	0x603
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.byte	0xb7
	.long	0x619
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF108
	.byte	0x6
	.byte	0xc3
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.long	0x5da
	.uleb128 0x6
	.byte	0x2
	.long	0x603
	.uleb128 0x4
	.long	.LASF109
	.byte	0x6
	.byte	0x9b
	.long	0x5a7
	.uleb128 0x6
	.byte	0x2
	.long	0x60e
	.uleb128 0x4
	.long	.LASF110
	.byte	0x6
	.byte	0xce
	.long	0x603
	.uleb128 0x4
	.long	.LASF111
	.byte	0x6
	.byte	0xd2
	.long	0x61f
	.uleb128 0x14
	.byte	0xc
	.byte	0x6
	.byte	0xe0
	.long	0x6a0
	.uleb128 0xe
	.long	.LASF112
	.byte	0x6
	.byte	0xe4
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF113
	.byte	0x6
	.byte	0xea
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF114
	.byte	0x6
	.byte	0xec
	.long	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF115
	.byte	0x6
	.byte	0xef
	.long	0x6a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF116
	.byte	0x6
	.byte	0xf3
	.long	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF117
	.byte	0x6
	.byte	0xf5
	.long	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF118
	.byte	0x6
	.byte	0xfb
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x61f
	.uleb128 0x8
	.long	.LASF119
	.byte	0x6
	.word	0x101
	.long	0x635
	.uleb128 0x6
	.byte	0x2
	.long	0x6a6
	.uleb128 0x8
	.long	.LASF120
	.byte	0x6
	.word	0x122
	.long	0x36a
	.uleb128 0x6
	.byte	0x2
	.long	0x6b8
	.uleb128 0x11
	.long	0x6c4
	.uleb128 0x8
	.long	.LASF121
	.byte	0x6
	.word	0x151
	.long	0x6db
	.uleb128 0x6
	.byte	0x2
	.long	0x71c
	.uleb128 0xf
	.long	.LASF122
	.byte	0xe
	.byte	0x6
	.word	0x269
	.long	0x71c
	.uleb128 0xc
	.long	.LASF123
	.byte	0x6
	.word	0x26b
	.long	0x8e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF124
	.byte	0x6
	.word	0x26d
	.long	0x80b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF125
	.byte	0x6
	.word	0x27b
	.long	0x84f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x11
	.long	0x6e1
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.word	0x155
	.long	0x749
	.uleb128 0xc
	.long	.LASF126
	.byte	0x6
	.word	0x157
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF127
	.byte	0x6
	.word	0x159
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF128
	.byte	0x6
	.word	0x15e
	.long	0x721
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.word	0x16f
	.long	0x77d
	.uleb128 0xc
	.long	.LASF129
	.byte	0x6
	.word	0x171
	.long	0x782
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF130
	.byte	0x6
	.word	0x177
	.long	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.long	0x755
	.uleb128 0x6
	.byte	0x2
	.long	0x749
	.uleb128 0x8
	.long	.LASF131
	.byte	0x6
	.word	0x17c
	.long	0x77d
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x17f
	.long	0x7bb
	.uleb128 0xa
	.long	.LASF132
	.byte	0
	.uleb128 0xa
	.long	.LASF133
	.byte	0x1
	.uleb128 0xa
	.long	.LASF134
	.byte	0x2
	.uleb128 0xa
	.long	.LASF135
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF136
	.byte	0x6
	.word	0x184
	.long	0x794
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.word	0x189
	.long	0x80b
	.uleb128 0x10
	.string	"f"
	.byte	0x6
	.word	0x18b
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x6
	.word	0x18d
	.long	0x6c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF124
	.byte	0x6
	.word	0x18f
	.long	0x80b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF137
	.byte	0x6
	.word	0x192
	.long	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x788
	.uleb128 0x11
	.long	0x80b
	.uleb128 0x8
	.long	.LASF138
	.byte	0x6
	.word	0x194
	.long	0x7c7
	.uleb128 0xb
	.byte	0xa
	.byte	0x6
	.word	0x198
	.long	0x84a
	.uleb128 0xc
	.long	.LASF139
	.byte	0x6
	.word	0x19a
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF140
	.byte	0x6
	.word	0x19c
	.long	0x7bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x11
	.long	0x822
	.uleb128 0x8
	.long	.LASF141
	.byte	0x6
	.word	0x19d
	.long	0x84a
	.uleb128 0x9
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x22b
	.long	0x888
	.uleb128 0xa
	.long	.LASF142
	.byte	0
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1
	.uleb128 0xa
	.long	.LASF144
	.byte	0x2
	.uleb128 0xa
	.long	.LASF145
	.byte	0x3
	.uleb128 0xa
	.long	.LASF146
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF147
	.byte	0x6
	.word	0x231
	.long	0x85b
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.word	0x242
	.long	0x8da
	.uleb128 0xc
	.long	.LASF71
	.byte	0x6
	.word	0x244
	.long	0x6db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF148
	.byte	0x6
	.word	0x247
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF114
	.byte	0x6
	.word	0x249
	.long	0x888
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF149
	.byte	0x6
	.word	0x24d
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0x6
	.word	0x25e
	.long	0x894
	.uleb128 0x6
	.byte	0x2
	.long	0x8da
	.uleb128 0x8
	.long	.LASF151
	.byte	0x6
	.word	0x290
	.long	0x71c
	.uleb128 0x8
	.long	.LASF152
	.byte	0x6
	.word	0x295
	.long	0x8ec
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.word	0x2a9
	.long	0x93b
	.uleb128 0xc
	.long	.LASF153
	.byte	0x6
	.word	0x2ad
	.long	0x940
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF154
	.byte	0x6
	.word	0x2af
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF155
	.byte	0x6
	.word	0x2b2
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x11
	.long	0x904
	.uleb128 0x6
	.byte	0x2
	.long	0x8ec
	.uleb128 0x8
	.long	.LASF156
	.byte	0x6
	.word	0x2b8
	.long	0x93b
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.word	0x2bb
	.long	0x97a
	.uleb128 0xc
	.long	.LASF157
	.byte	0x6
	.word	0x2bd
	.long	0x98a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF158
	.byte	0x6
	.word	0x2bf
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.long	0x952
	.uleb128 0x15
	.long	0x946
	.long	0x98a
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x97f
	.uleb128 0x8
	.long	.LASF159
	.byte	0x6
	.word	0x2c0
	.long	0x97a
	.uleb128 0xf
	.long	.LASF160
	.byte	0x4
	.byte	0x6
	.word	0x2c7
	.long	0x9c8
	.uleb128 0xc
	.long	.LASF161
	.byte	0x6
	.word	0x2c9
	.long	0x9d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF162
	.byte	0x6
	.word	0x2cb
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x11
	.long	0x99c
	.uleb128 0x15
	.long	0x6ca
	.long	0x9d8
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x9cd
	.uleb128 0x8
	.long	.LASF163
	.byte	0x6
	.word	0x2cc
	.long	0x9c8
	.uleb128 0xb
	.byte	0x12
	.byte	0x6
	.word	0x2d9
	.long	0xaa7
	.uleb128 0xc
	.long	.LASF164
	.byte	0x6
	.word	0x2dc
	.long	0x6c4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"rq"
	.byte	0x6
	.word	0x2ee
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF165
	.byte	0x6
	.word	0x2f0
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF166
	.byte	0x6
	.word	0x2ff
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF167
	.byte	0x6
	.word	0x301
	.long	0x5a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF168
	.byte	0x6
	.word	0x305
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF169
	.byte	0x6
	.word	0x307
	.long	0x2a9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF170
	.byte	0x6
	.word	0x327
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.long	.LASF171
	.byte	0x6
	.word	0x329
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF172
	.byte	0x6
	.word	0x32b
	.long	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xc
	.long	.LASF173
	.byte	0x6
	.word	0x32d
	.long	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF174
	.byte	0x6
	.word	0x330
	.long	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x6
	.word	0x33a
	.long	0x9ea
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.word	0x344
	.long	0xb35
	.uleb128 0xc
	.long	.LASF176
	.byte	0x6
	.word	0x34a
	.long	0xb3a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF177
	.byte	0x6
	.word	0x351
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF178
	.byte	0x6
	.word	0x354
	.long	0x6c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF179
	.byte	0x6
	.word	0x358
	.long	0x80b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF180
	.byte	0x6
	.word	0x35c
	.long	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF181
	.byte	0x6
	.word	0x35e
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF182
	.byte	0x6
	.word	0x362
	.long	0xb5c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF183
	.byte	0x6
	.word	0x364
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x11
	.long	0xab3
	.uleb128 0x6
	.byte	0x2
	.long	0xaa7
	.uleb128 0x15
	.long	0x9de
	.long	0xb4b
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xb40
	.uleb128 0x15
	.long	0x990
	.long	0xb5c
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xb51
	.uleb128 0x8
	.long	.LASF184
	.byte	0x6
	.word	0x36a
	.long	0xb35
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.word	0x36f
	.long	0xb87
	.uleb128 0xc
	.long	.LASF185
	.byte	0x6
	.word	0x3b1
	.long	0x7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.long	.LASF186
	.byte	0x6
	.word	0x3b3
	.long	0xb6e
	.uleb128 0xb
	.byte	0x12
	.byte	0x6
	.word	0x3c3
	.long	0xc24
	.uleb128 0xc
	.long	.LASF187
	.byte	0x6
	.word	0x3c5
	.long	0xc29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF161
	.byte	0x6
	.word	0x3d1
	.long	0x9d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF162
	.byte	0x6
	.word	0x3d4
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF188
	.byte	0x6
	.word	0x3e0
	.long	0xc45
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF189
	.byte	0x6
	.word	0x3e2
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF190
	.byte	0x6
	.word	0x3e6
	.long	0xc56
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF191
	.byte	0x6
	.word	0x3e8
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF192
	.byte	0x6
	.word	0x3eb
	.long	0xc72
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF193
	.byte	0x6
	.word	0x3ed
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	0xb93
	.uleb128 0x6
	.byte	0x2
	.long	0xb87
	.uleb128 0x15
	.long	0xc40
	.long	0xc3a
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x62a
	.uleb128 0x11
	.long	0xc3a
	.uleb128 0x6
	.byte	0x2
	.long	0xc2f
	.uleb128 0x15
	.long	0x811
	.long	0xc56
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0xc4b
	.uleb128 0x15
	.long	0xc6d
	.long	0xc67
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x8f8
	.uleb128 0x11
	.long	0xc67
	.uleb128 0x6
	.byte	0x2
	.long	0xc5c
	.uleb128 0x8
	.long	.LASF194
	.byte	0x6
	.word	0x3fc
	.long	0xc24
	.uleb128 0x17
	.long	.LASF195
	.byte	0x8
	.byte	0x3f
	.long	0xc78
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF196
	.byte	0x8
	.byte	0x40
	.long	0xb62
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF197
	.byte	0x8
	.byte	0x41
	.long	0xb87
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF198
	.byte	0x8
	.byte	0x42
	.long	0xaa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF203
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST0
	.byte	0x1
	.long	0xd04
	.uleb128 0x19
	.long	.LASF199
	.byte	0x1
	.byte	0x48
	.long	0xd04
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0x48
	.long	0x7e
	.byte	0x1
	.byte	0x66
	.uleb128 0x1a
	.long	.LASF204
	.byte	0x1
	.byte	0x4d
	.long	0xd04
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x89
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
	.uleb128 0x35
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB65
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
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
.LASF135:
	.string	"OSEE_ACTION_CALLBACK"
.LASF13:
	.string	"OsEE_event_mask"
.LASF192:
	.string	"p_alarm_ptr_array"
.LASF98:
	.string	"OsEE_byte"
.LASF132:
	.string	"OSEE_ACTION_TASK"
.LASF166:
	.string	"p_stk_sn"
.LASF33:
	.string	"TickType"
.LASF168:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF159:
	.string	"OsEE_autostart_trigger"
.LASF120:
	.string	"OsEE_TDB"
.LASF19:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF57:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF140:
	.string	"type"
.LASF189:
	.string	"res_array_size"
.LASF194:
	.string	"OsEE_KDB"
.LASF22:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF70:
	.string	"StatusType"
.LASF31:
	.string	"OsEE_task_status"
.LASF88:
	.string	"OsEE_SCB"
.LASF25:
	.string	"OSEE_TASK_SUSPENDED"
.LASF21:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF184:
	.string	"OsEE_CDB"
.LASF76:
	.string	"task_type"
.LASF34:
	.string	"maxallowedvalue"
.LASF195:
	.string	"osEE_kdb_var"
.LASF165:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF38:
	.string	"EventMaskType"
.LASF183:
	.string	"autostart_trigger_array_size"
.LASF109:
	.string	"OsEE_MCB"
.LASF56:
	.string	"E_OS_PROTECTION_TIME"
.LASF68:
	.string	"E_OS_SYS_ACT"
.LASF178:
	.string	"p_idle_task"
.LASF199:
	.string	"addr"
.LASF23:
	.string	"OsEE_task_type"
.LASF107:
	.string	"p_cb"
.LASF16:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF188:
	.string	"p_res_ptr_array"
.LASF146:
	.string	"OSEE_TRIGGER_REENABLED"
.LASF131:
	.string	"OsEE_CounterDB"
.LASF63:
	.string	"E_OS_CORE"
.LASF41:
	.string	"E_OS_ACCESS"
.LASF96:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF103:
	.string	"OsEE_kernel_status"
.LASF92:
	.string	"OsEE_SDB"
.LASF40:
	.string	"E_OK"
.LASF87:
	.string	"p_tos"
.LASF155:
	.string	"second_tick_parameter"
.LASF154:
	.string	"first_tick_parameter"
.LASF43:
	.string	"E_OS_ID"
.LASF39:
	.string	"MemSize"
.LASF36:
	.string	"mincycle"
.LASF100:
	.string	"OSEE_KERNEL_STARTING"
.LASF185:
	.string	"dummy"
.LASF58:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF77:
	.string	"task_func"
.LASF127:
	.string	"value"
.LASF80:
	.string	"max_num_of_act"
.LASF110:
	.string	"OsEE_MDB"
.LASF115:
	.string	"p_last_m"
.LASF157:
	.string	"p_trigger_ptr_array"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"AlarmBaseType"
.LASF121:
	.string	"OsEE_TriggerQ"
.LASF133:
	.string	"OSEE_ACTION_EVENT"
.LASF129:
	.string	"p_counter_cb"
.LASF201:
	.string	"C:\\Users\\gabri\\OneDrive\\Desktop\\OS4ES_~1\\lab1.1\\erika\\src\\ee_avr8_utils.c"
.LASF8:
	.string	"long unsigned int"
.LASF150:
	.string	"OsEE_TriggerCB"
.LASF55:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF187:
	.string	"p_kcb"
.LASF148:
	.string	"when"
.LASF18:
	.string	"TaskFunc"
.LASF15:
	.string	"TaskType"
.LASF141:
	.string	"OsEE_action"
.LASF144:
	.string	"OSEE_TRIGGER_ACTIVE"
.LASF167:
	.string	"os_status"
.LASF14:
	.string	"AppModeType"
.LASF74:
	.string	"OsEE_TDB_tag"
.LASF86:
	.string	"OsEE_SCB_tag"
.LASF30:
	.string	"OSEE_TASK_CHAINED"
.LASF82:
	.string	"OsEE_RQ"
.LASF175:
	.string	"OsEE_CCB"
.LASF177:
	.string	"p_idle_hook"
.LASF170:
	.string	"prev_s_isr_all_status"
.LASF190:
	.string	"p_counter_ptr_array"
.LASF191:
	.string	"counter_array_size"
.LASF193:
	.string	"alarm_array_size"
.LASF173:
	.string	"s_isr_os_cnt"
.LASF47:
	.string	"E_OS_STATE"
.LASF28:
	.string	"OSEE_TASK_WAITING"
.LASF124:
	.string	"p_counter_db"
.LASF174:
	.string	"d_isr_all_cnt"
.LASF164:
	.string	"p_curr"
.LASF102:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF66:
	.string	"E_OS_SYS_TASK"
.LASF106:
	.string	"OsEE_MDB_tag"
.LASF134:
	.string	"OSEE_ACTION_COUNTER"
.LASF2:
	.string	"long double"
.LASF111:
	.string	"OsEE_ResourceDB"
.LASF163:
	.string	"OsEE_autostart_tdb"
.LASF125:
	.string	"action"
.LASF105:
	.string	"p_owner"
.LASF17:
	.string	"TaskActivation"
.LASF12:
	.string	"OsEE_tick_type"
.LASF158:
	.string	"trigger_array_size"
.LASF54:
	.string	"E_OS_PARAM_POINTER"
.LASF104:
	.string	"prev_prio"
.LASF117:
	.string	"event_mask"
.LASF90:
	.string	"p_bos"
.LASF52:
	.string	"E_OS_DISABLEDINT"
.LASF186:
	.string	"OsEE_KCB"
.LASF81:
	.string	"OsEE_SN"
.LASF51:
	.string	"E_OS_MISSINGEND"
.LASF108:
	.string	"prio"
.LASF202:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF35:
	.string	"ticksperbase"
.LASF143:
	.string	"OSEE_TRIGGER_CANCELED"
.LASF78:
	.string	"ready_prio"
.LASF27:
	.string	"OSEE_TASK_READY_STACKED"
.LASF48:
	.string	"E_OS_VALUE"
.LASF89:
	.string	"OsEE_SDB_tag"
.LASF152:
	.string	"OsEE_AlarmDB"
.LASF112:
	.string	"current_num_of_act"
.LASF179:
	.string	"p_sys_counter_db"
.LASF75:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF59:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF83:
	.string	"OsEE_CTX_tag"
.LASF67:
	.string	"E_OS_SYS_STACK"
.LASF101:
	.string	"OSEE_KERNEL_STARTED"
.LASF122:
	.string	"OsEE_TriggerDB_tag"
.LASF130:
	.string	"info"
.LASF61:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF62:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF161:
	.string	"p_tdb_ptr_array"
.LASF71:
	.string	"p_next"
.LASF26:
	.string	"OSEE_TASK_READY"
.LASF204:
	.string	"tmp_addr"
.LASF44:
	.string	"E_OS_LIMIT"
.LASF147:
	.string	"OsEE_trigger_status"
.LASF116:
	.string	"wait_mask"
.LASF176:
	.string	"p_ccb"
.LASF197:
	.string	"osEE_kcb_var"
.LASF196:
	.string	"osEE_cdb_var"
.LASF151:
	.string	"OsEE_TriggerDB"
.LASF160:
	.string	"OsEE_autostart_tdb_tag"
.LASF20:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF97:
	.string	"OsEE_kernel_cb"
.LASF171:
	.string	"prev_s_isr_os_status"
.LASF169:
	.string	"last_error"
.LASF73:
	.string	"OsEE_SN_tag"
.LASF113:
	.string	"current_prio"
.LASF64:
	.string	"E_OS_SYS_INIT"
.LASF126:
	.string	"trigger_queue"
.LASF69:
	.string	"OsEE_status_type"
.LASF72:
	.string	"p_tdb"
.LASF99:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF50:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF182:
	.string	"p_autostart_trigger_array"
.LASF11:
	.string	"OsEE_mem_size"
.LASF123:
	.string	"p_trigger_cb"
.LASF118:
	.string	"p_own_sn"
.LASF138:
	.string	"OsEE_action_param"
.LASF153:
	.string	"p_trigger_db"
.LASF95:
	.string	"p_scb"
.LASF32:
	.string	"TaskStateType"
.LASF139:
	.string	"param"
.LASF142:
	.string	"OSEE_TRIGGER_INACTIVE"
.LASF46:
	.string	"E_OS_RESOURCE"
.LASF162:
	.string	"tdb_array_size"
.LASF172:
	.string	"s_isr_all_cnt"
.LASF149:
	.string	"cycle"
.LASF137:
	.string	"mask"
.LASF114:
	.string	"status"
.LASF65:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF200:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF79:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF49:
	.string	"E_OS_SERVICEID"
.LASF91:
	.string	"stack_size"
.LASF145:
	.string	"OSEE_TRIGGER_EXPIRED"
.LASF119:
	.string	"OsEE_TCB"
.LASF181:
	.string	"autostart_tdb_array_size"
.LASF93:
	.string	"OsEE_HDB_tag"
.LASF128:
	.string	"OsEE_CounterCB"
.LASF45:
	.string	"E_OS_NOFUNC"
.LASF94:
	.string	"p_sdb"
.LASF42:
	.string	"E_OS_CALLEVEL"
.LASF24:
	.string	"TaskExecutionType"
.LASF29:
	.string	"OSEE_TASK_RUNNING"
.LASF203:
	.string	"osEE_avr8_WriteCCPReg"
.LASF156:
	.string	"OsEE_autostart_trigger_info"
.LASF198:
	.string	"osEE_ccb_var"
.LASF136:
	.string	"OsEE_action_type"
.LASF53:
	.string	"E_OS_STACKFAULT"
.LASF180:
	.string	"p_autostart_tdb_array"
.LASF84:
	.string	"p_ctx"
.LASF60:
	.string	"E_OS_SPINLOCK"
.LASF85:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 7.3.0"
