#!/bin/bash

#qemu-system-loongarch64 -m 4G \
#    -cpu la464-loongarch-cpu \
#    -machine virt \
#    -smp 4 \
#    -bios ./QEMU_EFI_8.1.fd \
#    -serial stdio \
#    -kernel ./vmlinux\
#    -net nic -net user \
#    -device virtio-vga \
#    -device nec-usb-xhci,id=xhci,addr=0x1b \
#    -device usb-tablet,id=tablet,bus=xhci.0,port=1 \
#    -device usb-kbd,id=keyboard,bus=xhci.0,port=2 \
#    -hda archlinux-minimal-2024.04.23-loong64.qcow2

qemu-system-loongarch64 -m 4G --cpu la464 --machine virt  \
		-bios ./QEMU_EFI_7.2.fd  -serial stdio \
		-monitor telnet:localhost:4495,server,nowait \
		-kernel vmlinux.efi -initrd initramfs.cpio.gz \
		-append "root=/dev/ram  rdinit=/sbin/init console=ttyS0,115200"\
		--nographic \
		# -smp 2
		# -s -S
