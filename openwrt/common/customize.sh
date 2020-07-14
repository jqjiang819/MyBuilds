#!/bin/bash

pushd $OPENWRT_DIR

pushd package/lean/default-settings
sed -i "/etc\/shadow/d" files/zzz-default-settings
sed -i "s/openwrt.proxy.ustclug.org/mirrors.bfsu.edu.cn\\\\\/openwrt/g" files/zzz-default-settings
popd

popd