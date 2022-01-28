#!/bin/bash


##################################################################
#           Importing External Repositories for ISO Building     #
##################################################################

# Arcolinux:

pacman -S wget --noconfirm --needed

# Chaotic AUR
echo "Fetching chaotic keys"
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB

echo "Getting the latest chaotic mirrorlist"
wget https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst
wget https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst
pacman -U chaotic-keyring.pkg.tar.zst --noconfirm
cp archiso/airootfs/etc/pacman.d/chaotic-mirrorlist /etc/pacman.d/chaotic-mirrorlist

