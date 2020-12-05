# Kernel module build command for ARM targets is:
# make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi-
#
# List of object file(s) to be built
obj-m+=mod.o
#
# Point to the directory containing sources for the kernel running on target
# system. The kernel directory must have the configuration build step executed,
# i.e. it must contain the target system's .config file.
#
# Legato tools contain such a directory, point to it.
KBUILD_DIR=/home/gabri97/Operating-Systems-For-Embedded-Systems-_-Learning/LinuxMods_Learning/sdk/sysroots/arm1176jzfshf-vfp-poky-linux-gnueabi/usr/src/kernel
#
# Kernel module build dependency
all:
	make -C $(KBUILD_DIR) M=$(PWD) SRC=$(PWD) modules
#
# Kernel module clean dependency
clean:
	make -C $(KBUILD_DIR) M=$(PWD) clean
