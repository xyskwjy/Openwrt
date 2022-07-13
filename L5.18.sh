#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 修改版本内核
# sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.18/g' ./target/linux/x86/Makefile

#添加额外软件包
# git clone https://github.com/vernesong/OpenClash.git package/lean/OpenClash
# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/lean/openwrt-iptvhelper
# git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/lean/luci-app-dnsfilter
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
