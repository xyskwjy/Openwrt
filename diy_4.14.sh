#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 添加软件源
# sed -i '$a src/gz openwrt_packages2 https://op.supes.top/19.07.5/packages/x86_64/packages' /etc/opkg/distfeeds.conf
# sed -i '$a src/gz openwrt_base2 https://op.supes.top/19.07.5/packages/x86_64/base' /etc/opkg/distfeeds.conf
# sed -i '$a src/gz openwrt_custom https://op.supes.top/packages/x64' /etc/opkg/distfeeds.conf

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/garypang13/luci-app-eqos.git package/luci-app-eqos
git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
git clone https://github.com/xiaozhuai/luci-app-filebrowser.git package/luci-app-filebrowser
