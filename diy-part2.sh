#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# nikki ships mihomo-meta and mihomo-alpha as mutually conflicting variants,
# which Kconfig reports as a recursive dependency. Keep only the stable core.
./scripts/feeds uninstall mihomo-alpha
if [ -e package/feeds/nikki/mihomo-alpha ]; then
	echo "mihomo-alpha is still installed" >&2
	exit 1
fi
for pkg in nikki mihomo-meta luci-app-nikki; do
	if [ ! -e "package/feeds/nikki/$pkg" ]; then
		echo "nikki feed package is missing: $pkg" >&2
		exit 1
	fi
done
