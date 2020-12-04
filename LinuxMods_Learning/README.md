# A letter to myself of the future and for who is here desperate

This folder is a group of little projects involving the development of alinux kernel modules.

But it's not oly this one. They are developed for embedded target like Raspberry Pi with a custom Linux distribution, compiled with Yocto. 

If it's almost easy compiling a module using a recipe, it's not so easy to develop it from a different host machine with the sdk toolchain produced by Yocto itself and do a cross-compile in order to test it faster on the remote target instead of write a path of a module, give it to bitbake and waiting for a new image to be compiled. Then upload it to the remote target flash memory, boot and hope it works at first try.. a too much long process, isn't it?

## How the compile the yocto sdk toolchain
You need to include linux kernel headers in the sdk so, in your conf/local.conf add the follow line

```
TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
```

Then, compile the sdk with

```bash
source oe-init-build-env ./build_dir
bitbake core-image-full-cmdline -c populate_sdk
```

After a couple of hours (hopefully) you will have your sdk ready to export no another host. It's under *./build_dir/tmp/deploy/sdk/.sh*.

## How to install it in your holy host
Now you have your *.sh in you host. Execute it!

When it asks for an installation directory, *please* **USE YOUR HOME DIRECTORY**, I lost an entire day in figuring out why everything was not working and was because the directory was without user's permission!

## Prepare the sdk for kernel module development
Now, the most strange part.

We have to first compile all the build scripts so, let's move to
```bash
cd /home/me/holysdk/sysroots/arm_maybe_yourarch-poky-linux-gnueabi/usr/src/kernel
```

Now you have to make headers, please **without sudo**
```bash
make headers_install
make scripts
```

**Probably it will not compile scripts under scripts/mod like modpost. I will include it in this repository. Just copy all the file under that folder!**

Now, probably inside your include directory there is no asm/ folder but you need it! I don't know why there is no asm folder. Howewer, I prepared id by collecting strange headers from various locations (from work-shared under yocto build dir) and I created a folder asm and I symlinked inside src/kernel/include directory.

## Final steps
Now everthing should work.
Write your module, then use this makefile

```Makefile
# Kernel module build command for ARM targets is:
# make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi-

# List of object file(s) to be built
obj-m+=mod.o #Please, use your .c file name here

# Point to the directory containing sources for the kernel running on target system. The kernel directory must have the configuration build step executed,
# i.e. it must contain the target system's .config file.

# put here you know what
KBUILD_DIR=/home/gabri97/sdk/sysroots/arm1176jzfshf-vfp-poky-linux-gnueabi/usr/src/kernel

# Kernel module build dependency
all:
	make -C $(KBUILD_DIR) M=$(PWD) modules

# Kernel module clean dependency
clean:
	make -C $(KBUILD_DIR) M=$(PWD) clean

```

**IT WORKS!**

Useful links:
- https://stackoverflow.com/questions/31256770/using-populate-sdk-to-include-kernel-headers