#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx

# Add luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman package/diy/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/diy/luci-lib-docker

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
