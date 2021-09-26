#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

cat >$NETIP <<-EOF
uci set luci.main.lang=zh_cn
uci commit luci
uci set system.@system[0].timezone=CST-8
uci set system.@system[0].zonename=Asia/Shanghai
uci -q batch
	delete system.@system[0]
	add system system
	set system.@system[-1].hostname='OpenWrt'
	set system.@system[-1].timezone='UTC'
	set system.@system[-1].ttylogin='0'
	set system.@system[-1].log_size='64'
	set system.@system[-1].urandom_seed='0'
	delete system.ntp
	set system.ntp='timeserver'
	set system.ntp.enabled='1'
	set system.ntp.enable_server='0'
	add_list system.ntp.server='0.openwrt.pool.ntp.org'
	add_list system.ntp.server='1.openwrt.pool.ntp.org'
	add_list system.ntp.server='2.openwrt.pool.ntp.org'
	add_list system.ntp.server='3.openwrt.pool.ntp.org'
EOF

sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ

# Add luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
