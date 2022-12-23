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
# sed -i 's/192.168.1.1/192.168.1.253/g' package/base-files/files/bin/config_generate

# Modify default size,lede need not
# rm target/linux/ipq806x/files/arch/arm/boot/dts/qcom-ipq8064-r7500.dts
# mv files/22.03/qcom-ipq8064-r7500.dts target/linux/ipq806x/files/arch/arm/boot/dts/

# Add kernel build user
[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="call110"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"call110"@' .config
    
# mail .config
sudo apt-get install mutt
echo "mail .config" | mutt -s ".config" heqiyin@gmail.com -A .config
ls
