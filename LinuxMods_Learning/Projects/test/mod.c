#include "linux/module.h"
#include "linux/init.h"
#include "linux/kernel.h"
#include "linux/cdev.h"
#include "linux/device.h"
#include "linux/fs.h"

#define KBUILD_MODNAME "TestMod"

static int __init mod_init(void);
static void __exit mod_cleanup(void);

static dev_t mod_dev;
struct cdev mod_cdev;
struct class *mod_class;

static int MAJOR_NUMBER;
static struct device *device;

struct file_operations f_ops = {
    .owner = THIS_MODULE
};

static int __init mod_init() {
    int status;

    printk(KERN_INFO "Loading module " KBUILD_MODNAME " ...\n");

    MAJOR_NUMBER = alloc_chrdev_region(&mod_dev, 0, 1, "mod_dev");
    mod_cdev.owner = f_ops.owner;

    cdev_init(&mod_cdev, &f_ops);
    if (!(status = cdev_add(&mod_cdev, mod_dev, 0))) {
        printk(KERN_ERR "An error occurred while adding the new char device: %d\n", status);
        return status;
    }

    mod_class = class_create(THIS_MODULE, "devtest");
    device = device_create(mod_class, NULL, mod_dev, NULL, "devtest");

    printk(KERN_INFO "Module " KBUILD_MODNAME " registered successfully with major number %d\n", MAJOR_NUMBER);

    return 0;
}

static void __exit mod_cleanup() {

    printk(KERN_INFO "Unloading " KBUILD_MODNAME " ...\n");

    device_del(device);
    cdev_del(&mod_cdev);
    unregister_chrdev_region(mod_dev, 1);

    printk(KERN_INFO "Module " KBUILD_MODNAME " unloaded successfully\n");
}

module_init(mod_init);
module_exit(mod_cleanup);

MODULE_AUTHOR("Gabriele La Greca @thegabriele97");
MODULE_LICENSE("GPL v2");