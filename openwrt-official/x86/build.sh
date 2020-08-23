#!/bin/bash

sed -i "s/^CONFIG_TARGET_ROOTFS_PARTSIZE.*/CONFIG_TARGET_ROOTFS_PARTSIZE=1008/" .config

make image \
    PACKAGES="$(tr '\n' ' ' < ./pkg2install)" \
    FILES=files/