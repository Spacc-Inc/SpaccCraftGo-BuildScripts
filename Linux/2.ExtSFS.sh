#!/bin/sh

# Extract squashfs for hacking

mkdir -p Build.rem

cd Build
unsquashfs puppy_fossapup64_9.5.sfs
mv puppy_fossapup64_9.5.sfs ../Build.rem/
