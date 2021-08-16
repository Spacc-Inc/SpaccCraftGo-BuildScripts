#!/bin/bash

rm SpaccCraftGo-Build.iso

genisoimage \
	-r -J -l \
	-c boot/boot.catalog -b boot/isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table \
	-eltorito-alt-boot -e boot/efi.img -no-emul-boot \
	-V "$1" -o SpaccCraftGo-Build.iso SpaccCraftGo-Files/

isohybrid \
	--uefi \
	SpaccCraftGo-Build.iso
