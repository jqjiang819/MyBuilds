#!/bin/bash

pushd $OPENWRT_DIR

pushd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
popd

git clone https://github.com/Lienol/openwrt-package package/lienol

popd