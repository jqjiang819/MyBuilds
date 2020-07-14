#!/bin/bash

rm -rf /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android /opt/ghc
apt-get -qq update
apt-get -qq install $(curl -fsSL git.io/depends-ubuntu-1804)
apt-get -qq autoremove --purge
apt-get -qq clean
timedatectl set-timezone "Asia/Shanghai"
