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
# sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#添加额外非必须软件包
git clone https://github.com/sirpdboy/luci-app-timecontrol.git package/diy/luci-app-timecontrol
git clone -b main https://github.com/ilxp/luci-app-ikoolproxy.git package/diy/luci-app-ikoolproxy
git clone https://github.com/timsaya/openwrt-bandix.git package/diy/openwrt-bandix
git clone https://github.com/timsaya/luci-app-bandix.git package/diy/luci-app-bandix
git clone https://github.com/esirplayground/luci-app-poweroff.git package/diy/luci-app-poweroff
