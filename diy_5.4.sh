#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改版本内核（下面两行代码前面有#为源码默认最新5.4内核,没#为4.19内核,默认修改X86的，其他机型L大那里target/linux查看，对应修改下面的路径就好）
# sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile

# 取消掉feeds.conf.default文件里面的helloworld的注释，使用源码自带ShadowSocksR Plus+出国软件
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加软件源
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/garypang13/luci-app-eqos.git package/luci-app-eqos
git clone -b 18.06 https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser

#passwall出国软件
# svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/brook package/brook
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/tcping package/tcping
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go package/trojan-go
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus package/trojan-plus
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/syncthing package/syncthing
