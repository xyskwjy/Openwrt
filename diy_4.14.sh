#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 添加软件源
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
# sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/diy/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/diy/luci-app-poweroff
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/diy/luci-app-jd-dailybonus
# git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/diy/luci-theme-atmaterial
# git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/diy/luci-theme-opentopd
# git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/diy/luci-theme-edge
# git clone https://github.com/xyskwjy/luci-app-koolproxyR.git package/diy/luci-app-koolproxyR
git clone https://github.com/garypang13/luci-app-eqos.git package/diy/luci-app-eqos
git clone https://github.com/toss-a/filebrowser.git package/diy/filebrowser
git clone https://github.com/toss-a/luci-app-filebrowser.git package/diy/luci-app-filebrowser
git clone https://github.com/godros/luci-app-godproxy.git package/diy/luci-app-godproxy

#passwall出国软件
# svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/diy/luci-app-passwall
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/brook package/diy/brook
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/chinadns-ng package/diy/chinadns-ng
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/tcping package/diy/tcping
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go package/diy/trojan-go
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus package/diy/trojan-plus
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/syncthing package/diy/syncthing
