#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

cat >$NETIP <<-EOF
uci set luci.main.lang=zh_cn
uci commit luci
EOF

uci -q batch <<-EOF
	set system.@system[0].timezone='CST-8'
	set system.@system[0].zonename='Asia/Shanghai'
	delete system.ntp.server
	add_list system.ntp.server="time1.cloud.tencent.com" 
	add_list system.ntp.server="time2.cloud.tencent.com" 
	add_list system.ntp.server="time3.cloud.tencent.com"
	add_list system.ntp.server="time4.cloud.tencent.com"
	add_list system.ntp.server="time5.cloud.tencent.com"
	add_list system.ntp.server="time.apple.com"
	add_list system.ntp.server="time.asia.apple.com"
	add_list system.ntp.server="ntp.aliyun.com"
	add_list system.ntp.server="cn.ntp.org.cn"
EOF
uci commit system

sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/emortal/default-settings/files/zzz-default-settings

# Add luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
