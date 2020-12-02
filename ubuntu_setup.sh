#!/bin/bash
apt update
apt upgrade
echo "Fixing nvidia-card screen tearing issues"
echo "options nvidia-drm modeset=1" >> /etc/modprobe.d/nvidia-drm-nomodeset.conf
update initramfs -u
echo "Veryify this outputs Y"
cat /sys/module/nvidia_drm/parameters/modeset
echo "Installing vim and downloading my .vimrc"
apt install vim
wget -O /home/$(logname)/.vimrc https://raw.githubusercontent.com/erkearney/my-vimrc/master/.vimrc
echo "Installing gnome tweaks, remember to set theme to dark"
apt install gnome-tweaks
echo "Installing java 11"
apt install openjdk-11-jdk
read -r -p "Do you want to download Minecraft> [y/N] " minecraft
if [[ "$minecraft" == "y" ]]
then
wget https://www.minecraft.net/en-us/download/Minecraft.deb
#apt install ./Minecraft.deb
fi
echo "Installing git, remember to run git config --global user.email/user.name"
apt install git
