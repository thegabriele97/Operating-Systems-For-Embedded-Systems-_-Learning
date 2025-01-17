#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(.gnu.linkonce.this_module) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section(__versions) = {
	{ 0xe922ce0a, "module_layout" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0xfeb8cf91, "cdev_del" },
	{ 0xc70c92e7, "class_destroy" },
	{ 0xfbb22f4d, "device_destroy" },
	{ 0xf678622a, "device_create" },
	{ 0x4f4c5a3f, "__class_create" },
	{ 0x2bb35f44, "cdev_add" },
	{ 0xf69e7d7a, "cdev_init" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0xc5850110, "printk" },
	{ 0xb1ad28e0, "__gnu_mcount_nc" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "A5DE3C07D8801C65393A415");
