#!/bin/bash
echo "interface=\"eth0\"" >> /etc/rc.local
echo "address=" >> /etc/rc.local
echo "netmask=" >> /etc/rc.local
echo "gateway=" >> /etc/rc.local

/etc/rc.d/network restart
