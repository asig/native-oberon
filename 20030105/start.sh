#!/bin/bash

cd $(dirname $0)

qemu-system-x86_64 \
    -netdev user,id=mynet0 \
    -device ne2k_pci,netdev=mynet0 \
    -soundhw sb16 \
    -m 64 \
    -drive file=Native\ Oberon\ 2003-01-05.img,format=raw \
    -drive file=fat:rw:transfer
