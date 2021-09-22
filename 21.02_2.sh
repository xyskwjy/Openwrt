#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# Add luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman package/diy/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/diy/luci-lib-docker
