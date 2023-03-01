#!/bin/sh

opkg update
opkg install libustream-openssl ca-bundle kmod-tun

wget https://github.cyzzyl.workers.dev/https://raw.githubusercontent.com/cyz0105/tailscale-openwrt/main/tailscale-openwrt.tgz
tar x -zvC / -f tailscale-openwrt.tgz
/etc/init.d/tailscale enable
ls /etc/rc.d/S*tailscale*
/etc/init.d/tailscale start
tailscale up