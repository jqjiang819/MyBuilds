#!/bin/bash

sed -i "s/^CONFIG_TARGET_ROOTFS_PARTSIZE.*/CONFIG_TARGET_ROOTFS_PARTSIZE=1008/" .config

make image \
    PACKAGES="nano block-mount -dnsmasq dnsmasq-full libustream-mbedtls \
              luci luci-compat luci-lib-ipkg luci-i18n-base-zh-cn luci-i18n-opkg-zh-cn luci-i18n-firewall-zh-cn" \
    FILES=files/