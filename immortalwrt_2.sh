#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: immortalwrt_2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 设置密码为空
# sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/emortal/default-settings/files/99-default-settings
# sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='Linux-IOP6.6-$(date +%Y%m%d)'/g" package/emortal/default-settings/files/99-default-settings
# sed -i "s/DISTRIB_REVISION='*.*'/DISTRIB_REVISION=''/g" package/emortal/default-settings/files/99-default-settings
sed -i "s/hostname='ImmortalWrt'/hostname='Linux-op'/g" ./package/base-files/files/bin/config_generate

# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
# sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf


