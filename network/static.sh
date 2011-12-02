#!/bin/bash
#echo "interface=\"eth0\"" >> /etc/rc.local
#echo "address=192.168.0.2" >> /etc/rc.local
#echo "netmask=255.255.255.0" >> /etc/rc.local
#echo "gateway=192.168.0.1" >> /etc/rc.local

echo "eth0=\"eth0 192.168.0.2 netmask 255.255.255.0 broadcast 192.168.0.255\"" >> /etc/rc.local
echo "INTERFACES=(eth0)" >> /etc/rc.local
echo "gateway=\"default gw 192.168.0.1\"" >> /etc/rc.local
echo "ROUTES=(gateway)" >> /etc/rc.local


vi /etc/rc.local

echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
vi /etc/resolv.conf

/etc/rc.d/network restart

ping -c 3 www.google.com


#manual
#ip addr add 192.168.0.2/24 dev eth0
#ip route add default via 192.168.0.1

#ip link set eth0 up
#ip addr show dev eth0
