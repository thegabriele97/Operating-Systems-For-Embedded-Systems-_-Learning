	.file	"ee_applcfg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	osEE_kdb_var
	.section	.rodata.osEE_kdb_var,"a",@progbits
	.type	osEE_kdb_var, @object
	.size	osEE_kdb_var, 6
osEE_kdb_var:
	.word	osEE_kcb_var
	.word	osEE_tdb_ptr_array
	.word	7
	.comm	osEE_kcb_var,1,1
.global	osEE_cdb_var
	.section	.rodata.osEE_cdb_var,"a",@progbits
	.type	osEE_cdb_var, @object
	.size	osEE_cdb_var, 10
osEE_cdb_var:
	.word	osEE_ccb_var
	.word	gs(idle_hook)
	.word	osEE_tdb_array+84
	.word	osEE_autostart_tdb_array
	.word	1
.global	osEE_ccb_var
	.section	.data.osEE_ccb_var,"aw",@progbits
	.type	osEE_ccb_var, @object
	.size	osEE_ccb_var, 18
osEE_ccb_var:
	.word	osEE_tdb_array+84
	.word	0
	.word	osEE_sn_array
	.word	0
	.word	0
	.byte	-1
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.osEE_autostart_tdb_array,"a",@progbits
	.type	osEE_autostart_tdb_array, @object
	.size	osEE_autostart_tdb_array, 4
osEE_autostart_tdb_array:
	.word	osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE
	.word	1
	.section	.rodata.osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE,"a",@progbits
	.type	osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE, @object
	.size	osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE, 2
osEE_tdb_ptr_autostart_OSDEFAULTAPPMODE:
	.word	osEE_tdb_array+14
	.section	.data.osEE_sn_array,"aw",@progbits
	.type	osEE_sn_array, @object
	.size	osEE_sn_array, 24
osEE_sn_array:
	.word	osEE_sn_array+4
	.word	0
	.word	osEE_sn_array+8
	.word	0
	.word	osEE_sn_array+12
	.word	0
	.word	osEE_sn_array+16
	.word	0
	.word	osEE_sn_array+20
	.word	0
	.word	0
	.word	0
	.section	.rodata.osEE_tdb_ptr_array,"a",@progbits
	.type	osEE_tdb_ptr_array, @object
	.size	osEE_tdb_ptr_array, 14
osEE_tdb_ptr_array:
	.word	osEE_tdb_array
	.word	osEE_tdb_array+14
	.word	osEE_tdb_array+28
	.word	osEE_tdb_array+42
	.word	osEE_tdb_array+56
	.word	osEE_tdb_array+70
	.word	osEE_tdb_array+84
	.section	.rodata.osEE_tdb_array,"a",@progbits
	.type	osEE_tdb_array, @object
	.size	osEE_tdb_array, 98
osEE_tdb_array:
	.word	osEE_sdb_array+8
	.word	osEE_scb_array+4
	.word	osEE_tcb_array
	.byte	0
	.word	2
	.word	gs(clock_handler)
	.byte	-128
	.byte	-128
	.byte	1
	.word	osEE_sdb_array
	.word	osEE_scb_array
	.word	osEE_tcb_array+10
	.byte	1
	.word	0
	.word	gs(FuncTask1)
	.byte	1
	.byte	1
	.byte	1
	.word	osEE_sdb_array+4
	.word	osEE_scb_array+2
	.word	osEE_tcb_array+20
	.byte	2
	.word	1
	.word	gs(FuncTask2)
	.byte	2
	.byte	2
	.byte	1
	.word	osEE_sdb_array+8
	.word	osEE_scb_array+4
	.word	osEE_tcb_array+30
	.byte	3
	.word	0
	.word	gs(FuncTask3)
	.byte	1
	.byte	1
	.byte	1
	.word	osEE_sdb_array+8
	.word	osEE_scb_array+4
	.word	osEE_tcb_array+40
	.byte	4
	.word	0
	.word	gs(FuncTask4)
	.byte	1
	.byte	1
	.byte	1
	.word	osEE_sdb_array+8
	.word	osEE_scb_array+4
	.word	osEE_tcb_array+50
	.byte	5
	.word	0
	.word	gs(FuncTask5)
	.byte	1
	.byte	1
	.byte	1
	.word	osEE_sdb_array+8
	.word	osEE_scb_array+4
	.word	osEE_tcb_array+60
	.byte	6
	.word	3
	.word	gs(osEE_idle_hook_wrapper)
	.byte	0
	.byte	0
	.byte	1
	.section	.data.osEE_tcb_array,"aw",@progbits
	.type	osEE_tcb_array, @object
	.size	osEE_tcb_array, 70
osEE_tcb_array:
	.byte	0
	.byte	-128
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	2
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	1
	.byte	0
	.word	4
	.word	0
	.word	0
	.word	0
	.section	.rodata.osEE_sdb_array,"a",@progbits
	.type	osEE_sdb_array, @object
	.size	osEE_sdb_array, 12
osEE_sdb_array:
	.word	osEE_task_stack_1
	.word	128
	.word	osEE_task_stack_2
	.word	128
	.word	0
	.word	0
	.section	.data.osEE_scb_array,"aw",@progbits
	.type	osEE_scb_array, @object
	.size	osEE_scb_array, 6
osEE_scb_array:
	.word	osEE_task_stack_1+127
	.word	osEE_task_stack_2+127
	.word	0
	.section	.bss.osEE_task_stack_2,"aw",@nobits
	.type	osEE_task_stack_2, @object
	.size	osEE_task_stack_2, 128
osEE_task_stack_2:
	.zero	128
	.section	.bss.osEE_task_stack_1,"aw",@nobits
	.type	osEE_task_stack_1, @object
	.size	osEE_task_stack_1, 128
osEE_task_stack_1:
	.zero	128
.global	V
	.section	.bss.V,"aw",@nobits
	.type	V, @object
	.size	V, 3
V:
	.zero	3
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
