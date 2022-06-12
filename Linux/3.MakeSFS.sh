#!/bin/sh

# Rebuild the squashfs

mkdir -p Build.rem

cd Build
mksquashfs squashfs-root puppy_fossapup64_9.5.sfs -comp xz
mv squashfs-root ../Build.rem/squashfs-root
