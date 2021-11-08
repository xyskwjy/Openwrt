#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx

# 修改版本内核
# sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=5.10/g' ./target/linux/x86/Makefile

#关闭 禁止解析 IPv6 DNS 记录
sed -i 's/option filter_aaaa\t1/option filter_aaaa\t0/g' package/network/services/dnsmasq/files/dhcp.conf

#添加自定义插件链接
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
git clone -b 18.06 https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus

# Add luci-app-dockerman
rm -rf package/lean/luci-app-docker
git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
rm -rf package/lean/luci-lib-docker
git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker

#Remove default apps
sed -i 's/luci-app-zerotier//g' target/linux/x86/Makefile
sed -i 's/luci-app-qbittorrent//g' target/linux/x86/Makefile
sed -i 's/luci-app-uugamebooster//g' target/linux/x86/Makefile
sed -i 's/ddns-scripts_dnspod//g' target/linux/x86/Makefile
sed -i 's/ddns-scripts_aliyun//g' target/linux/x86/Makefile
sed -i 's/luci-app-xlnetacc//g' target/linux/x86/Makefile
sed -i 's/luci-app-unblockmusic//g' target/linux/x86/Makefile
sed -i 's/luci-app-ipsec-vpnd//g' target/linux/x86/Makefile
sed -i 's/luci-app-adbyby-plus//g' target/linux/x86/Makefile
sed -i 's/luci-app-vsftpd//g' include/target.mk
sed -i 's/luci-app-unblockmusic//g' include/target.mk
sed -i 's/luci-app-wol//g' include/target.mk
sed -i 's/luci luci-app-ddns//g' include/target.mk
sed -i 's/luci-app-accesscontrol//g' include/target.mk
sed -i 's/luci-app-autoreboot//g' include/target.mk
sed -i 's/luci-app-ssr-plus//g' include/target.mk
sed -i 's/ddns-scripts_aliyun//g' include/target.mk
sed -i 's/ddns-scripts_dnspod//g' include/target.mk
sed -i 's/luci-app-nlbwmon//g' include/target.mk
