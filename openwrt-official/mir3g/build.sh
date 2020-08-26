#!/bin/bash

cp ../../openwrt-official/mir3g/pkgs/*.ipk ./packages/

make image \
    PROFILE=xiaomi_mir3g \
    PACKAGES="$(tr '\n' ' ' < ./pkg2install)" \
    FILES=files/