#!/bin/bash
set -eux -o pipefail

VERSION="2023.07+dfsg-1"
CURL="curl -O -fsSL"

mkdir _artifacts
(
	cd _artifacts
	$CURL "https://ftp.debian.org/debian/pool/main/u/u-boot/u-boot-qemu_${VERSION}_all.deb"
	$CURL "https://deb.debian.org/debian/pool/main/u/u-boot/u-boot_${VERSION}.dsc"
	$CURL "https://deb.debian.org/debian/pool/main/u/u-boot/u-boot_${VERSION//dfsg-*/dfsg}.orig.tar.xz"
	$CURL "https://deb.debian.org/debian/pool/main/u/u-boot/u-boot_${VERSION}.debian.tar.xz"
	mkdir tmp
	(
		cd tmp
		ar x "../u-boot-qemu_${VERSION}_all.deb" data.tar.xz
		tar xf data.tar.xz ./usr/lib/u-boot/qemu-riscv64_smode/uboot.elf
	)
	mv tmp/usr/lib/u-boot/qemu-riscv64_smode/uboot.elf qemu-riscv64_smode_uboot.elf
	rm -rf tmp
	sha256sum -- * >../_artifacts.SHA256SUMS
	mv ../_artifacts.SHA256SUMS ./SHA256SUMS
)
