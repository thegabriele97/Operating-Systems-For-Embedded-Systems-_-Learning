#include "linux/module.h"
#include "linux/init.h"
#include "linux/kernel.h"
#include "linux/cdev.h"
#include "linux/device.h"
#include "linux/fs.h"

#define KBUILD_MODNAME "TestMod"

#define PRINTK(level, msg, args) printk(level KBUILD_MODNAME ": " msg, args)
#define PRINTK_0(level, msg) printk(level KBUILD_MODNAME ": " msg)
#define PRINTK_INF(msg) PRINTK_0(KERN_INFO, msg)
#define PRINTK_ERR(msg) PRINTK_0(KERN_ERR, msg)

static int __init mod_init(void);
static void __exit mod_cleanup(void);
static ssize_t read(struct file *filp, char *buf, size_t count, loff_t *f_pos);

static dev_t mod_dev;
struct cdev mod_cdev;
struct class *mod_class;
static struct device *device;

struct file_operations f_ops = {
    .owner = THIS_MODULE,
    .read = read
};

static int __init mod_init() {
    int status;

    PRINTK_INF("Loading module...\n");

    // Trying to allocate a now character device region
    status = alloc_chrdev_region(&mod_dev, 0, 1, "mod_dev");

    // Allocating a new cdev struct
    cdev_init(&mod_cdev, &f_ops);
    mod_cdev.owner = f_ops.owner;

    // Checking for errors
    if (status < 0 || (status = cdev_add(&mod_cdev, mod_dev, 1)) < 0) {
        PRINTK(KERN_ERR, "An error occurred while registering the new char device: %d\n", status);
        return status;
    }

    mod_class = class_create(THIS_MODULE, "devtest");
    device = device_create(mod_class, NULL, mod_dev, NULL, "devtest");

    printk(KERN_INFO KBUILD_MODNAME ": Module registered successfully with major number %d:%d\n", MAJOR(mod_dev), MINOR(mod_dev));

    return 0;
}

static void __exit mod_cleanup() {

    printk(KERN_INFO "Unloading " KBUILD_MODNAME " ...\n");

    device_destroy(mod_class, mod_dev);
    class_destroy(mod_class);
    cdev_del(&mod_cdev);
    unregister_chrdev_region(mod_dev, 1);

    printk(KERN_INFO "Module " KBUILD_MODNAME " unloaded successfully\n");
}

static ssize_t read(struct file *filp, char *buf, size_t count, loff_t *f_pos) {
    printk(KERN_DEBUG KBUILD_MODNAME ": Reading %d bytes\n", count);
    return count;
}

module_init(mod_init);
module_exit(mod_cleanup);

MODULE_AUTHOR("Gabriele La Greca @thegabriele97");
MODULE_LICENSE("GPL v2");