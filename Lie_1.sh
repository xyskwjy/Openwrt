#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: Lie_1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_TESTING_PATCHVER:=5.10/KERNEL_TESTING_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

# 取消掉feeds.conf.default文件里面的helloworld的注释，使用源码自带ShadowSocksR Plus+出国软件
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
# git clone -b 18.06 https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus
# git clone https://github.com/kiddin9/luci-app-dnsfilter package/luci-app-dnsfilter
