#!/bin/bash

pushd /opt/rt-n56u/trunk

echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=" >> .config    # MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=" >> .config   # SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=" >> .config  # SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=" >> .config       # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=" >> .config     # SS server
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=" >> .config # DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=" >> .config       # adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=" >> .config         # 内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=" >> .config         # 内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=" >> .config      # TUNSAFE
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=" >> .config      # 阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=" >> .config     # smartdns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNSBIN=" >> .config  # smartdns二进制文件
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=" >> .config        # 集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=" >> .config       # 集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=" >> .config    # KP广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=" >> .config        # 在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=" >> .config     # 集成caddy执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=" >> .config
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=" >> .config       # 可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_WYY=" >> .config          # 网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=" >> .config       # 网易云解锁GO版本执行文件（4M多）注意固件超大小,不集成会自动下载
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=" >> .config     # zerotier ~1.3M

if [ "$1" = "MI-R3G" ]; then
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=/&y/" .config
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_FRPC=/&y/" .config
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_FRPS=/&y/" .config
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_TUNSAFE=/&y/" .config
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_ZEROTIER=/&y/" .config
elif [ "$1" = "MI-MINI" ]; then
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=/&y/" .config
sed -i "s/^CONFIG_FIRMWARE_INCLUDE_ZEROTIER=/&y/" .config
fi

sed -i "s/^CONFIG_FIRMWARE_INCLUDE.*=$/&n/" .config

popd