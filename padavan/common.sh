#!/bin/bash

pushd /opt/rt-n56u/trunk
if [ ! -f configs/templates/$1.config ] ; then
    echo "configs/templates/$1.config not found "
    exit 1
fi
cp -f configs/templates/$1.config .config

sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config    #删除配置项MENTOHUST
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' .config   #删除配置项SCUTCLIENT
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' .config  #删除配置项SS plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' .config     #删除配置项SS server
sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' .config #删除配置项DNSFORWARDER
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d' .config       #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' .config         #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' .config         #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' .config      #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d' .config      #删除配置项阿里DDNS
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=y/g' .config

sed -i 's/studygolang.com\/dl\/golang/golang.org\/dl/g' tools/Makefile

popd