#!/bin/bash
#echo "interface=\"eth0\"" >> /etc/rc.local
#echo "address=" >> /etc/rc.local
#echo "netmask=" >> /etc/rc.local
#echo "gateway=" >> /etc/rc.local

echo "eth0=\"dhcp\"" >> /etc/rc.local

/etc/rc.d/network restart

#ip link set eth0 up
#ip addr show dev eth0
