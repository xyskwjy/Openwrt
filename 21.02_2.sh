#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 修改默认语言
uci set luci.main.lang=zh_cn
uci commit luci

uci set system.@system[0].timezone=CST-8
uci set system.@system[0].zonename=Asia/Shanghai

# 设置密码为空
sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ

# Add luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
