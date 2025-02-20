#!/bin/bash

home_dir=~/SoCHub/git/headsail-vp/headsail-vp-boot/baseport/build/buildroot/build/images
#payload=/home/andreas-stergiopoulos/SoCHub/git/headsail-vp/examples/hpc-c/hello-newlib-hpc/build/hello-newlib-hpc.bin
    #FW_PAYLOAD_PATH=$payload\

# Build OpenSBI
make clean
CROSS_COMPILE=riscv64-linux-gnu-\
    PLATFORM=headsail\
    FW_FDT_PATH=$home_dir/unknown.dtb\
    CFLAGS="-mstrict-align -0O -march=rv64imac -mabi=lp64"\
    make -j16 -n

riscv64-unknown-elf-objcopy --only-keep-debug build/platform/headsail/firmware/fw_payload.elf fw_payload.sym

./disassemble-elf
