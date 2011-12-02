#!/bin/bash
pacman -Syyu curl
cd /etc/pacman.d
cp mirrorlist mirrorlist.backup

