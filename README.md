# Mirror of https://packages.debian.org/u-boot-qemu (for `/usr/lib/u-boot/qemu-riscv64_smode/uboot.elf` )

See https://github.com/lima-vm/u-boot-qemu-mirror/releases

The license (GPL-2.0) is included in the `*.orig.tar.gz` source archive.

```console
$ wget -q \
  http://http.us.debian.org/debian/pool/main/u/u-boot/u-boot-qemu_2021.01+dfsg-5_all.deb \
  http://deb.debian.org/debian/pool/main/u/u-boot/u-boot_2021.01+dfsg-5.dsc \
  http://deb.debian.org/debian/pool/main/u/u-boot/u-boot_2021.01+dfsg.orig.tar.xz \
  http://deb.debian.org/debian/pool/main/u/u-boot/u-boot_2021.01+dfsg-5.debian.tar.xz

$ sha256sum *
ded78c6eb5bec443933f015baf2303afde458f65121aed6b32c50409ff8d3d15  u-boot-qemu_2021.01+dfsg-5_all.deb
08481d4f4a712ff932f929b767bceb5fcf2974e698e6b4b9f23da31ef84467a6  u-boot_2021.01+dfsg-5.debian.tar.xz
dcad07a093e07eef7268d7f268aecb541ff7bc6c14829d2c417c255464e6facf  u-boot_2021.01+dfsg-5.dsc
2c2f2422b14630e47b9ebf27cff7941da242512f5bac4ad7af101a933282e7a0  u-boot_2021.01+dfsg.orig.tar.xz

$ ar x u-boot-qemu_2021.01+dfsg-5_all.deb data.tar.xz
$ tar xf data.tar.xz ./usr/lib/u-boot/qemu-riscv64_smode/uboot.elf
$ mv usr/lib/u-boot/qemu-riscv64_smode/uboot.elf qemu-riscv64_smode_uboot.elf
$ sha256sum qemu-riscv64_smode_uboot.elf
64048432020bda960f397b5a138ea98aa6bbd42db02e8bb34ff3b9320763e36d  qemu-riscv64_smode_uboot.elf
```
