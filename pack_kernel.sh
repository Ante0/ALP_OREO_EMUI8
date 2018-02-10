#!/bin/bash
cp out/arch/arm64/boot/Image.gz kernel/tools/kernel
cd kernel/tools/
./pack_kernelimage_cmd.sh
mv kernel.img ../../kernel.img
cd ../../
echo "kernel.img created in:"
realpath kernel.img
