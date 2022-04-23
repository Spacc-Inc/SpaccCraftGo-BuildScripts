#!/bin/bash

# Rebuild the ISO

cd Build
mksquashfs squashfs-root puppy_fossapup64_9.5.sfs -comp xz
rm -rf squashfs-root
cd ..

rm "SpaccCraftGo-Build-x86_64-"$1".iso"

genisoimage \
	-r -J -l \
	-c boot/boot.catalog -b boot/isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table \
	-eltorito-alt-boot -e boot/efi.img -no-emul-boot \
	-V "SpaccCraftGo v"$1"" -o "SpaccCraftGo-Build-x86_64-"$1".iso" Build/

isohybrid \
	--uefi \
	"SpaccCraftGo-Build-x86_64-"$1".iso"
