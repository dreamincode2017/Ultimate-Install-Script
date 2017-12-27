#!/bin/bash
sudo ls > /dev/null
clear
echo "Welcome First We Will Install Updates and Dependencies"
echo "Installing Dependencies"
sudo apt install -y git gdebi unzip ffmpeg
echo "INSTALLING UPDATES"
sudo apt update
sudo apt dist-upgrade -yy
clear
echo "STARTING NOW"
#START
mkdir ~/bin
cd ~/bin
#Download Packages
wget https://launchpad.net/~peppermintos/+archive/ubuntu/p6-release/+files/ice_5.0.1_all.deb
wget https://github.com/geigi/cozy/releases/download/0.4.0/com.github.geigi.cozy_0.4.0_amd64.deb
#Install Packages
sudo gdebi ice_5.0.1_all.deb
sudo gdebi com.github.geigi.cozy_0.4.0_amd64.deb
#Remove DEB Files
sudo rm ice_5.0.1_all.deb
sudo rm mailspring-1.0.8-amd64.deb
sudo rm com.github.geigi.cozy_0.4.0_amd64.deb
#Install Additonal Software
sudo apt install -y gimp inkscape audacity handbrake virtualbox virtualbox-qt virtualbox-ext-pack gnome-disk-utility filezilla calibre plank grsync soundconverter hunspell hunspell-en-ca
#Insync
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo apt update
sudo apt install -y insync
#Timeshift
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install -y timeshift
#Make Mkv
sudo add-apt-repository ppa:heyarje/makemkv-beta -y
sudo apt-get update
sudo apt install -y makemkv-bin
#Simple Screen Recorder
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
sudo apt-get update
sudo apt install -y simplescreenrecorder
#OBS
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt install -y obs-studio
#Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client
#Kdenlive
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo apt-get update
sudo apt-get install -y kdenlive
#VeraCrypt
wget https://launchpadlibrarian.net/289850375/veracrypt-1.19-setup.tar.bz2
mkdir veracrypt
tar xjvf veracrypt-1.19-setup.tar.bz2 -C veracrypt
cd veracrypt
./veracrypt-1.19-setup-gui-x64
#Neofetch
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo apt-get update
sudo apt install -y neofetch
echo "neofetch" >> ~/.bashrc	#Append ~/.bashrc for neofetch

#Adjust Screen Tempture
sudo apt install -y redshift redshift-gtk


#Credits to Joe Collins For this piece of software
cd XBT-install/
./xbt-install.sh








#####THEMES########################################################################################################################








#Breeze Cursor
sudo apt-get install -y breeze-cursor-theme
#Papruis
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update
sudo apt install -y papirus-icon-theme
#Numix
sudo add-apt-repository ppa:numix/ppa -y
sudo apt-get update
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle
#Flatabulous
sudo add-apt-repository ppa:noobslab/icons -y
sudo apt-get update
sudo apt-get install -y ultra-flat-icons ultra-flat-icons-green ultra-flat-icons-orange
#LUV
git clone https://github.com/Nitrux/luv-icon-theme.git
cd luv-icon-theme/
sudo cp -r Luv/ /usr/share/icons
cd ..
sudo rm -r luv-icon-theme/
#Vivacious
sudo add-apt-repository ppa:ravefinity-project/ppa -y
sudo apt-get update
sudo apt-get install -y vivacious-colors
#Flat Remix
git clone https://github.com/daniruiz/Flat-Remix.git
cd Flat-Remix/
sudo cp -r Flat\ Remix/ /usr/share/icons
sudo cp -r Flat\ Remix\ Dark/ /usr/share/icons
sudo cp -r Flat\ Remix\ Light/ /usr/share/icons
cd ..
sudo rm -r Flat-Remix/
#Arc
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install -y arc-theme
#Obsidian
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install -y obsidian-gtk-theme
#Adapta
sudo add-apt-repository ppa:tista/adapta -y
sudo apt update
sudo apt install -y adapta-gtk-theme adapta-backgrounds


#Wallpaper
cd ..
sudo unzip ~/Wallpapers.zip -d /usr/share/backgrounds
sudo rm ~/Wallpapers.zip



#Finishing Up
echo "INSTALLING ADDITONAL UPDATES"
sudo apt update
sudo apt dist-upgrade -yy
echo "CLEANING UP"
sudo apt-get autoremove -yy
sudo apt-get autoclean



#######################################################################COPY SCRIPTS TO ANACRON#############################################################################
sudo chmod +x /Scripts/z-clean
sudo cp /Scripts/z-clean /etc/cron.monthly/





exit
