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

# Add the nikki (mihomo) feed, pinned to a known-good commit (mihomo-meta v1.19.31)
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git^7b203f6c4c5e94c6c0026acb301090aa1d310e7f' >>feeds.conf.default
