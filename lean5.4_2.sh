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

# 版本号里显示一个自己的名字
sed -i "s/OpenWrt/xywjy build $(TZ=UTC-8 date "+%y.%m.%d") @/g" package/lean/default-settings/files/zzz-default-settings

# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# 更新miniupnp版本
# rm -fr feeds/packages/net/miniupnpd
# svn co https://github.com/Ljzkirito/openwrt-packages/trunk/miniupnpd feeds/packages/net/miniupnpd
# rm -fr feeds/luci/applications/luci-app-upnp
# svn co https://github.com/Ljzkirito/openwrt-packages/trunk/luci-app-upnp feeds/luci/applications/luci-app-upnp

