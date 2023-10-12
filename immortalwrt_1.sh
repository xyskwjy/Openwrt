#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: immortalwrt_1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#添加额外非必须软件包
# git clone https://github.com/vernesong/OpenClash.git package/OpenClash
# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
git clone https://github.com/tty228/luci-app-wechatpush.git package/luci-app-wechatpush
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
