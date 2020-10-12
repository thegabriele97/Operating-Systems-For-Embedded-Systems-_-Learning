	.file	"new.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Znwj,"ax",@progbits
.global	_Znwj
	.type	_Znwj, @function
_Znwj:
.LFB4:
	.file 1 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\new.cpp"
	.loc 1 21 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 22 0
	jmp malloc
.LVL1:
	.cfi_endproc
.LFE4:
	.size	_Znwj, .-_Znwj
	.section	.text._Znaj,"ax",@progbits
.global	_Znaj
	.type	_Znaj, @function
_Znaj:
.LFB10:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp malloc
	.cfi_endproc
.LFE10:
	.size	_Znaj, .-_Znaj
	.section	.text._ZnwjPv,"ax",@progbits
.global	_ZnwjPv
	.type	_ZnwjPv, @function
_ZnwjPv:
.LFB6:
	.loc 1 29 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	movw r24,r22
.LVL3:
/* epilogue start */
	.loc 1 32 0
	ret
	.cfi_endproc
.LFE6:
	.size	_ZnwjPv, .-_ZnwjPv
	.section	.text._ZdlPv,"ax",@progbits
.global	_ZdlPv
	.type	_ZdlPv, @function
_ZdlPv:
.LFB7:
	.loc 1 34 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	jmp free
.LVL5:
	.cfi_endproc
.LFE7:
	.size	_ZdlPv, .-_ZdlPv
	.section	.text._ZdaPv,"ax",@progbits
.global	_ZdaPv
	.type	_ZdaPv, @function
_ZdaPv:
.LFB12:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp free
	.cfi_endproc
.LFE12:
	.size	_ZdaPv, .-_ZdaPv
	.text
.Letext0:
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ce
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.long	.LASF15
	.long	.LASF16
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0xd8
	.long	0x34
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.word	0x138
	.long	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.word	0x13d
	.long	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.long	0x6b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.word	0x142
	.long	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x26
	.long	.LASF19
	.long	0x9c
	.uleb128 0x8
	.string	"ptr"
	.byte	0x1
	.byte	0x26
	.long	0x9c
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.uleb128 0xa
	.byte	0x1
	.long	.LASF7
	.byte	0x1
	.byte	0x22
	.long	.LASF9
	.byte	0x1
	.long	0xbb
	.uleb128 0x8
	.string	"ptr"
	.byte	0x1
	.byte	0x22
	.long	0x9c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x1d
	.long	.LASF21
	.long	0x9c
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xfe
	.uleb128 0xc
	.long	.LASF6
	.byte	0x1
	.byte	0x1d
	.long	0x29
	.long	.LLST1
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.byte	0x1d
	.long	0x9c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0x19
	.long	.LASF10
	.long	0x9c
	.long	0x11e
	.uleb128 0xf
	.long	.LASF6
	.byte	0x1
	.byte	0x19
	.long	0x29
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x15
	.long	.LASF11
	.long	0x9c
	.byte	0x1
	.long	0x13f
	.uleb128 0xf
	.long	.LASF6
	.byte	0x1
	.byte	0x15
	.long	0x29
	.byte	0
	.uleb128 0x11
	.long	0x11e
	.long	.LASF11
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x17a
	.uleb128 0x12
	.long	0x133
	.long	.LLST0
	.uleb128 0x13
	.long	.LVL1
	.byte	0x1
	.long	0x1b5
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x9e
	.long	.LASF9
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1b5
	.uleb128 0x12
	.long	0xaf
	.long	.LLST2
	.uleb128 0x13
	.long	.LVL5
	.byte	0x1
	.long	0x1c3
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF12
	.long	.LASF12
	.byte	0x2
	.word	0x12c
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF13
	.long	.LASF13
	.byte	0x2
	.word	0x133
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
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5-1
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB4
	.long	.LFE4
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"operator new []"
.LASF17:
	.string	"size_t"
.LASF15:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\new.cpp"
.LASF14:
	.string	"GNU C++11 7.3.0 -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF9:
	.string	"_ZdlPv"
.LASF5:
	.string	"__malloc_heap_end"
.LASF3:
	.string	"__malloc_heap_start"
.LASF7:
	.string	"operator delete"
.LASF4:
	.string	"char"
.LASF1:
	.string	"long int"
.LASF21:
	.string	"_ZnwjPv"
.LASF10:
	.string	"_Znaj"
.LASF18:
	.string	"operator delete []"
.LASF16:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\test\\\\erika"
.LASF6:
	.string	"size"
.LASF19:
	.string	"_ZdaPv"
.LASF11:
	.string	"_Znwj"
.LASF13:
	.string	"free"
.LASF2:
	.string	"__malloc_margin"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"operator new"
.LASF12:
	.string	"malloc"
	.ident	"GCC: (GNU) 7.3.0"
