apt update
apt upgrade
echo "Installing vim"
apt install vim
echo "Installing gnome tweaks, remember to set theme to dark"
apt install gnome-tweaks
echo "Installing java 11"
apt install openjdk-11-jdk
echo "Downloading and installing minecraft"
wget https://www.minecraft.net/en-us/download/Minecraft.deb
apt install ./Minecraft.deb
echo "Installing git, remember to run git config --global user.email/user.name"
apt install git
