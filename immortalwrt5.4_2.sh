#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# themes添加（svn co 命令意思：指定版本如https://github）
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd


#添加额外非必须软件包
# git clone https://github.com/vernesong/OpenClash.git package/OpenClash
# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

#添加smartdns
# git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
