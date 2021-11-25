#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part02.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

##替换docker
# rm -rf package/lean/luci-lib-docker
# git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
# rm -rf package/lean/luci-app-docker
# git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman

#添加额外软件包
# git clone https://github.com/vernesong/OpenClash.git package/OpenClash
# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter
git clone https://github.com/sirpdboy/luci-app-poweroffdevice.git package/luci-app-poweroffdevice
