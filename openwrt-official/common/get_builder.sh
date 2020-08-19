#!/bin/bash

set -e

OPENWRT_URL="https://downloads.openwrt.org"

if [ $1 = "x86" ]; then
BOARD="x86"
TARGET="64"
elif [ $1 = "mir3g" ]; then
BOARD="ramips"
TARGET="mt7621"
else
echo "model $1 not found"
exit -1
fi

if [ $2 = "snapshot" ]; then
VER=""
BUILDER_NAME="openwrt-imagebuilder-$BOARD-$TARGET.Linux-x86_64.tar.xz"
BUILDER_URL="$OPENWRT_URL/snapshots/targets/$BOARD/$TARGET/$BUILDER_NAME"
elif [ $2 = "19.07" ]; then
VER="19.07-SNAPSHOT"
BUILDER_NAME="openwrt-imagebuilder-$VER-$BOARD-$TARGET.Linux-x86_64.tar.xz"
BUILDER_URL="$OPENWRT_URL/releases/$VER/targets/$BOARD/$TARGET/$BUILDER_NAME"
else
echo "version $2 not found"
exit -1
fi

curl -Lo imagebuilder.tar.xz "$BUILDER_URL"
tar -xvf imagebuilder.tar.xz
mv openwrt-imagebuilder* openwrt
rm -f imagebuilder.tar.xz