#!/bin/bash

# Extract original ISO and squashfs for hacking

mkdir -p Build
cd Build

7z x "../"$1""
rm -rf "[BOOT]"

unsquashfs puppy_fossapup64_9.5.sfs
rm puppy_fossapup64_9.5.sfs
