# Qemu ver
qemu-loongarch64 version 9.0.1

# Linux .config
配置中开启了dovetail,irqpipeline相关的选项，还开了irqptortu test与spinlock的debug
.config

# Run
把编译完后的内核elf（arch/loongarch/boot/vmlinux.efi）放在跟start_qemu.sh同级目录然后运行 start_qemu.sh
