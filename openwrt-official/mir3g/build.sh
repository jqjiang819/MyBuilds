#!/bin/bash

cp -r ../../openwrt-official/mir3g/pkgs ./custom_pkgs
echo "src custom file:custom_pkgs" >> repositories.conf

make image \
    PROFILE=xiaomi_mir3g \
    PACKAGES="$(tr '\n' ' ' < ./pkg2install)" \
    FILES=files/