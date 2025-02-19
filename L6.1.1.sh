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
# sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

#添加额外软件包
# git clone https://github.com/kongfl888/luci-app-adguardhome.git package/lean/luci-app-adguardhome
# git clone git clone -b main https://github.com/ilxp/luci-app-ikoolproxy.git package/lean/luci-app-ikoolproxy
# git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
# git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus

