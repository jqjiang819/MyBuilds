#!/bin/bash

pushd /opt/rt-n56u/trunk
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> .config #MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> .config #SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> .config #SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> .config # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >> .config #SS server
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=y" >> .config #DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=y" >> .config #内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=y" >> .config #内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=y" >> .config #TUNSAFE
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> .config #阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=n" >> .config #smartdns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNSBIN=n" >> .config #smartdns二进制文件
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >> .config #集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >> .config #集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=n" >> .config #KP广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=n" >> .config #在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=n" >> .config #集成caddy执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >> .config
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_WYY=n" >> .config #网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=n" >> .config #网易云解锁GO版本执行文件（4M多）注意固件超大小,不集成会自动下载
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y" >> .config #zerotier ~1.3M

popd