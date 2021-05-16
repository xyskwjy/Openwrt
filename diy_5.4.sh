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
rm -rf ./package/lean/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone -b 18.06 https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser
# rm -fr ./feeds/packages/net/miniupnpd
# svn co https://github.com/Ljzkirito/openwrt-packages/trunk/miniupnpd feeds/packages/net/miniupnpd
# rm -fr ./feeds/luci/applications/luci-app-upnp
# svn co https://github.com/Ljzkirito/openwrt-packages/trunk/luci-app-upnp feeds/luci/applications/luci-app-upnp
