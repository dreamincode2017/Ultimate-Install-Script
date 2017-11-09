sudo echo "Welcome First We Will Install Updates and Dependencies"
echo "Installing Dependencies"
sudo apt install -y git gdebi unzip ffmpeg
echo "INSTALLING UPDATES"
sudo apt update
sudo apt dist-upgrade -yy
echo "STARTING NOW"
#START
mkdir ~/bin
cd ~/bin
#Download Packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://github.com/atom/atom/releases/download/v1.22.0/atom-amd64.deb
wget https://launchpad.net/~peppermintos/+archive/ubuntu/p6-release/+files/ice_5.0.1_all.deb
#Install Packages
sudo gdebi google-chrome-stable_current_amd64.deb
sudo gdebi atom-amd64.deb
sudo gdebi ice_5.0.1_all.deb
#Remove DEB Files
sudo rm google-chrome-stable_current_amd64.deb
sudo rm atom-amd64.deb
sudo rmice_5.0.1_all.deb
#Install Additonal Software
sudo apt install -y gimp inkscape audacity handbrake virtualbox virtualbox-qt virtualbox-ext-pack gnome-disk-utility filezilla calibre plank
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
#Neofetch
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo apt-get update
sudo apt install -y neofetch
echo "neofetch" >> ~/.bashrc	#Append ~/.bashrc for neofetch

#Adjust Screen Tempture
sudo apt install -y redshift redshift-gtk

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
#Paper
sudo add-apt-repository ppa:snwh/pulp -y
sudo apt-get update
sudo apt-get install -y paper-icon-theme
sudo apt-get install -y paper-cursor-theme
sudo apt-get install -y paper-gtk-theme
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
#wallpaper
cd ..
sudo unzip ~/Wallpapers.zip -d /usr/share/backgrounds
sudo rm ~/Wallpapers.zip
echo "INSTALLING ADDITONAL UPDATES"
sudo apt update
sudo apt dist-upgrade -yy
echo "CLEANING UP"
sudo apt-get autoremove -yy
sudo apt-get autoclean
