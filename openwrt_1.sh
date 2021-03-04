#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 添加软件源
sed -i '$a src-git https://github.com/coolsnowwolf/lede/tree/master/package' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/garypang13/luci-app-eqos.git package/luci-app-eqos
git clone -b 18.06 https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser
# git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
