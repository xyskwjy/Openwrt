#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx

sed -i 's/KERNEL_PATCHVER:=4.9/KERNEL_PATCHVER:=4.14/g' ./target/linux/x86/Makefile

# 取消掉feeds.conf.default文件里面的helloworld的注释，使用源码自带ShadowSocksR Plus+出国软件
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加软件源
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add luci-app-dockerman
rm -rf package/diy/luci-app-docker
git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
rm -rf package/diy/luci-lib-docker
git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
git clone -b 18.06 https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus

#Remove default apps
sed -i 's/luci-app-wol //g' include/target.mk
sed -i 's/luci-app-ddns //g' include/target.mk
sed -i 's/ddns-scripts-cloudflare //g' include/target.mk
sed -i 's/ddns-scripts_aliyun //g' include/target.mk
sed -i 's/ddns-scripts_dnspod //g' include/target.mk
sed -i 's/luci-app-control-timewol //g' include/target.mk
sed -i 's/luci-app-control-webrestriction //g' include/target.mk
sed -i 's/luci-app-control-weburl //g' include/target.mk
