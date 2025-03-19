#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel4=y
CONFIG_PACKAGE_kmod-sit=y
CONFIG_PACKAGE_xz=y
CONFIG_PACKAGE_xz-utils=y
CONFIG_PACKAGE_v2ray-geoip=y
CONFIG_PACKAGE_v2ray-geosite=y
CONFIG_PACKAGE_v2dat=y

CONFIG_PACKAGE_luci-app-adguardhome=y
CONFIG_PACKAGE_luci-app-ssr-plus=y
CONFIG_PACKAGE_luci-app-turboacc=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_PDNSD=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-mosdns=y


EOF

# 设置默认IP为 192.168.100.100
sed -i 's/192.168.1.1/192.168.100.100/g' package/base-files/files/bin/config_generate
