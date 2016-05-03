#!/bin/sh
#sed -i "s/cache-size=1500/cache-size=15000/" /tmp/etc/dnsmasq.conf

CONFIG=$1
source /usr/sbin/helper.sh

pc_replace "cache-size=1500" "cache-size=9999" $CONFIG

pc_append "dhcp-option-force=125,00:00:00:00:1a:02:06:48:47:57:2d:43:54:03:04:5a:58:48:4e:0a:02:20:00:0b:02:00:55:0d:02:00:2e:3c:1e:00:00:01:00:02:03:43:50:45:03:0e:45:38:20:45:50:4f:4e:20:52:4f:55:54:45:52:04:03:31:2e:30
dhcp-option=15
dhcp-option=28
dhcp-option=60,00:00:01:06:68:75:61:71:69:6E:02:0A:48:47:55:34:32:31:4E:20:76:33:03:0A:48:47:55:34:32:31:4E:20:76:33:04:10:32:30:30:2E:55:59:59:2E:30:2E:41:2E:30:2E:53:48:05:04:00:01:00:50" /tmp/etc/dnsmasq.conf
robocfg vlan 51 ports "0t 1t 2t 3t 4t 8t" vlan 85 ports "0t 1t 2t 3t 4t 8t"
