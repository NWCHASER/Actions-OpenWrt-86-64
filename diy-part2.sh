#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default size
cd openwrt
rm /openwrt/blob/master/target/linux/ipq806x/files-5.15/arch/arm/boot/dts/qcom-ipq8064-r7500.dts
mv /files/qcom-ipq8064-r7500.dts /openwrt/blob/master/target/linux/ipq806x/files-5.15/arch/arm/boot/dts/
