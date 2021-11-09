#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 版本号里显示一个自己的名字
sed -i "s/OpenWrt/xywjy build $(TZ=UTC-8 date "+%y.%m.%d") @/g" package/default-settings/files/zzz-default-settings

# 替换MT驱动
rm -rf package/lean/MTK7615-DBDC-LINUX5.4/drivers/mt_wifi
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/mt/drivers/mt7615d package/lean/MTK7615-DBDC-LINUX5.4/drivers/mt_wifi
