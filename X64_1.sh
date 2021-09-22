#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

#内核选择
# sed -i 's/PATCHVER:=5.10/PATCHVER:=5.4/g' target/linux/x86/Makefile

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

