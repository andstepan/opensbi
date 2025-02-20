#!/bin/bash

# Note: Flattened Device Tree = Device Tree Blob = *.dtb
#       It is necessary for OpenSBI to work as it uses it in order to 
#       discover the device peripherals and bind the appropriate drivers
#       to them.
home_dir= # TODO: SET THIS TO THE LOCATION WHERE YOU HAVE SAVED THE DTB FILE!!!!

# Build OpenSBI
make clean
CROSS_COMPILE=riscv64-linux-gnu-\
    PLATFORM=headsail\
    FW_FDT_PATH=$home_dir/unknown.dtb\
    CFLAGS="-mstrict-align -0O -march=rv64imac -mabi=lp64"\
    make

