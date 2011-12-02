#!/bin/bash
echo "interface=\"eth0\"" >> /etc/rc.local
echo "address=192.168.0.2" >> /etc/rc.local
echo "netmask=255.255.255.0" >> /etc/rc.local
echo "gateway=192.168.0.1" >> /etc/rc.local
vi /etc/rc.local

echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
vi /etc/resolv.conf

/etc/rc.d/network restart

ping -c 3 www.google.com


#manual
#ip addr add 192.168.0.2/24 dev eth0
#ip route add default via 192.168.0.1
