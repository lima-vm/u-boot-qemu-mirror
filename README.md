# Mirror of https://packages.debian.org/u-boot-qemu (for `/usr/lib/u-boot/qemu-riscv64_smode/uboot.elf` )

See https://github.com/lima-vm/u-boot-qemu-mirror/releases

The license (GPL-2.0) is included in the `*.orig.tar.gz` source archive.

```console
$ wget -q \
  http://http.us.debian.org/debian/pool/main/u/u-boot/u-boot-qemu_2022.04+dfsg-2_all.deb \
  http://deb.debian.org/debian/pool/main/u/u-boot/u-boot_2022.04+dfsg-2.dsc \
  http://deb.debian.org/debian/pool/main/u/u-boot/u-boot_2021.01+dfsg.orig.tar.xz \
  http://deb.debian.org/debian/pool/main/u/u-boot/u-boot_2022.04+dfsg-2.debian.tar.xz

$ sha256sum *
a7458375b012b7fcab1e816a577f83643529da2e32f5169a73afb9de05ddb415  u-boot-qemu_2022.04+dfsg-2_all.deb
2c2f2422b14630e47b9ebf27cff7941da242512f5bac4ad7af101a933282e7a0  u-boot_2021.01+dfsg.orig.tar.xz
d1cf61bc77e703a465f2e84652f989f482e3e5a60e66dc0b874065eacdebfce8  u-boot_2022.04+dfsg-2.debian.tar.xz
5c26cdbffe2ff41887604bd85343b28be506fc0181aad88d7069fc9173ecba54  u-boot_2022.04+dfsg-2.dsc

$ ar x u-boot-qemu_2022.04+dfsg-2_all.deb data.tar.xz
$ tar xf data.tar.xz ./usr/lib/u-boot/qemu-riscv64_smode/uboot.elf
$ mv usr/lib/u-boot/qemu-riscv64_smode/uboot.elf qemu-riscv64_smode_uboot.elf
$ sha256sum qemu-riscv64_smode_uboot.elf
d250ede9b4d0ea1871714395edd38a7eb2bc8425b697673cfd15e62e7ee4529c  qemu-riscv64_smode_uboot.elf
```
