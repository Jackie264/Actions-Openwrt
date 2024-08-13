#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src/gz dllkids https://op.dllkids.xyz/packages/arm_cortex-a7_neon-vfpv4' >>feeds.conf.default
echo 'src/gz openwrt_kiddin9 https://dl.openwrt.ai/latest/packages/arm_cortex-a7_neon-vfpv4/kiddin9' >>feeds.conf.default
echo 'src/gz immortalwrt https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a7_neon-vfpv4/base/' >>feeds.conf.default

git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/fullconenat-nft package/fullconenat-nft
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/fullconenat package/fullconenat
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-fullconenat package/luci-app-fullconenat
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/adguardhome package/adguardhome
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-adguardhome package/luci-app-adguardhome
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/homebox package/homebox
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-homebox package/luci-app-homebox
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-fileassistant package/luci-app-fileassistant
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-log package/luci-app-log
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-passwall2 package/luci-app-passwall2
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/hysteria package/hysteria
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/xray-core package/xray-core
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/shadowsocksr-libev package/shadowsocksr-libev
#git clone https://github.com/kiddin9/openwrt-packages/tree/master/v2ray-plugin package/v2ray-plugin
