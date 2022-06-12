#!/bin/sh

# Extract contents from original ISO for hacking

mkdir -p Build

cd Build
7z x "../$1"
rm -rf "[BOOT]"
