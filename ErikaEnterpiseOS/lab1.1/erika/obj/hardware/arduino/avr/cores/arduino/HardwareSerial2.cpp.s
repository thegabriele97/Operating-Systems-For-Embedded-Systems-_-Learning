	.file	"HardwareSerial2.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.Letext0:
	.file 1 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdlib.h"
	.file 2 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include\\stddef.h"
	.file 3 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 4 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
	.file 5 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\tools\\avr\\avr\\include\\stdio.h"
	.file 6 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\HardwareSerial.h"
	.file 7 "d:\\downloads\\arduino-pr-beta1.9-build-119\\hardware\\arduino\\avr\\variants\\standard\\pins_arduino.h"
	.file 8 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Stream.h"
	.file 9 "D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\Print.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x336
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.long	.LASF39
	.long	.LASF40
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x28
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
	.byte	0x1
	.word	0x138
	.long	0x1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	.LASF3
	.byte	0x1
	.word	0x13d
	.long	0x59
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.long	0x5f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x7
	.long	0x5f
	.uleb128 0x5
	.long	.LASF5
	.byte	0x1
	.word	0x142
	.long	0x59
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x7e
	.long	0x90
	.uleb128 0x7
	.long	0x80
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x80
	.long	0x28
	.uleb128 0x7
	.long	0x97
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF14
	.uleb128 0x8
	.long	0xa2
	.long	0xce
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0xa4
	.long	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0xa5
	.long	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0xa6
	.long	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x8b
	.long	0x100
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0xa8
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0xaa
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.byte	0xab
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.long	0x66
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF22
	.uleb128 0xb
	.long	.LASF41
	.byte	0xe
	.byte	0x5
	.byte	0xf4
	.long	0x1bd
	.uleb128 0xc
	.string	"buf"
	.byte	0x5
	.byte	0xf5
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF23
	.byte	0x5
	.byte	0xf6
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF24
	.byte	0x5
	.byte	0xf7
	.long	0x80
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.long	.LASF25
	.byte	0x5
	.word	0x107
	.long	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.word	0x108
	.long	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"put"
	.byte	0x5
	.word	0x109
	.long	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"get"
	.byte	0x5
	.word	0x10a
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.long	.LASF26
	.byte	0x5
	.word	0x10b
	.long	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.long	0x2f
	.long	0x1d1
	.uleb128 0x11
	.long	0x5f
	.uleb128 0x11
	.long	0x1d1
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x13b
	.uleb128 0x6
	.byte	0x2
	.long	0x1bd
	.uleb128 0x10
	.long	0x2f
	.long	0x1ec
	.uleb128 0x11
	.long	0x1d1
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x1dd
	.uleb128 0x12
	.byte	0x2
	.uleb128 0x8
	.long	0x1d1
	.long	0x1ff
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x5
	.word	0x197
	.long	0x1f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF42
	.byte	0x7
	.byte	0x2
	.long	0x28
	.byte	0x8
	.byte	0x29
	.long	0x231
	.uleb128 0x14
	.long	.LASF28
	.byte	0
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.uleb128 0x14
	.long	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	.LASF31
	.byte	0x1
	.long	0x243
	.uleb128 0x16
	.byte	0x6
	.byte	0x5d
	.long	0x24d
	.byte	0
	.uleb128 0x15
	.long	.LASF32
	.byte	0x1
	.long	0x274
	.uleb128 0x17
	.byte	0x1
	.long	.LASF43
	.byte	0x9
	.byte	0x39
	.long	.LASF44
	.long	0x1d
	.byte	0x1
	.long	0x262
	.uleb128 0x18
	.long	0x274
	.byte	0x1
	.uleb128 0x11
	.long	0x127
	.uleb128 0x11
	.long	0x1d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x243
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x8f
	.long	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF34
	.uleb128 0x19
	.long	.LASF45
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF35
	.uleb128 0x1a
	.string	"SS"
	.byte	0x7
	.byte	0x2b
	.long	0x8b
	.byte	0xa
	.uleb128 0x1b
	.long	.LASF36
	.byte	0x7
	.byte	0x2c
	.long	0x8b
	.byte	0xb
	.uleb128 0x1b
	.long	.LASF37
	.byte	0x7
	.byte	0x2d
	.long	0x8b
	.byte	0xc
	.uleb128 0x1a
	.string	"SCK"
	.byte	0x7
	.byte	0x2e
	.long	0x8b
	.byte	0xd
	.uleb128 0x1a
	.string	"SDA"
	.byte	0x7
	.byte	0x33
	.long	0x8b
	.byte	0x12
	.uleb128 0x1a
	.string	"SCL"
	.byte	0x7
	.byte	0x34
	.long	0x8b
	.byte	0x13
	.uleb128 0x1a
	.string	"A0"
	.byte	0x7
	.byte	0x41
	.long	0x8b
	.byte	0xe
	.uleb128 0x1a
	.string	"A1"
	.byte	0x7
	.byte	0x42
	.long	0x8b
	.byte	0xf
	.uleb128 0x1a
	.string	"A2"
	.byte	0x7
	.byte	0x43
	.long	0x8b
	.byte	0x10
	.uleb128 0x1a
	.string	"A3"
	.byte	0x7
	.byte	0x44
	.long	0x8b
	.byte	0x11
	.uleb128 0x1a
	.string	"A4"
	.byte	0x7
	.byte	0x45
	.long	0x8b
	.byte	0x12
	.uleb128 0x1a
	.string	"A5"
	.byte	0x7
	.byte	0x46
	.long	0x8b
	.byte	0x13
	.uleb128 0x1a
	.string	"A6"
	.byte	0x7
	.byte	0x47
	.long	0x8b
	.byte	0x14
	.uleb128 0x1a
	.string	"A7"
	.byte	0x7
	.byte	0x48
	.long	0x8b
	.byte	0x15
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"port_to_output_PGM"
.LASF38:
	.string	"GNU C++11 7.3.0 -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF26:
	.string	"udata"
.LASF41:
	.string	"__file"
.LASF14:
	.string	"bool"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"digital_pin_to_port_PGM"
.LASF19:
	.string	"digital_pin_to_bit_mask_PGM"
.LASF20:
	.string	"digital_pin_to_timer_PGM"
.LASF21:
	.string	"float"
.LASF15:
	.string	"port_to_mode_PGM"
.LASF11:
	.string	"long unsigned int"
.LASF35:
	.string	"short unsigned int"
.LASF7:
	.string	"size_t"
.LASF43:
	.string	"write"
.LASF39:
	.string	"D:\\Downloads\\arduino-PR-beta1.9-BUILD-119\\hardware\\arduino\\avr\\cores\\arduino\\HardwareSerial2.cpp"
.LASF9:
	.string	"unsigned char"
.LASF2:
	.string	"__malloc_margin"
.LASF22:
	.string	"double"
.LASF44:
	.string	"_ZN5Print5writeEPKcj"
.LASF28:
	.string	"SKIP_ALL"
.LASF37:
	.string	"MISO"
.LASF36:
	.string	"MOSI"
.LASF23:
	.string	"unget"
.LASF24:
	.string	"flags"
.LASF30:
	.string	"SKIP_WHITESPACE"
.LASF13:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF42:
	.string	"LookaheadMode"
.LASF33:
	.string	"Serial"
.LASF12:
	.string	"long long int"
.LASF4:
	.string	"char"
.LASF45:
	.string	"decltype(nullptr)"
.LASF29:
	.string	"SKIP_NONE"
.LASF10:
	.string	"uint16_t"
.LASF40:
	.string	"C:\\\\Users\\\\gabri\\\\OneDrive\\\\Desktop\\\\OS4ES_~1\\\\lab1.1\\\\erika"
.LASF1:
	.string	"long int"
.LASF34:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF3:
	.string	"__malloc_heap_start"
.LASF16:
	.string	"port_to_input_PGM"
.LASF25:
	.string	"size"
.LASF32:
	.string	"Print"
.LASF27:
	.string	"__iob"
.LASF31:
	.string	"HardwareSerial"
.LASF5:
	.string	"__malloc_heap_end"
	.ident	"GCC: (GNU) 7.3.0"
