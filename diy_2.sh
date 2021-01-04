#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 修改版本内核（下面两行代码前面有#为源码默认最新5.4内核,没#为4.19内核,默认修改X86的，其他机型L大那里target/linux查看，对应修改下面的路径就好）
# sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile

# 取消掉feeds.conf.default文件里面的helloworld的注释，使用源码自带ShadowSocksR Plus+出国软件
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
