sudo echo "Welcome now installing youre software"
echo "Installing Dependencies"
sudo apt install git gdebi unzip
mkdir ~/bin
cd ~/bin
#Download Packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
wget https://atom.io/download/deb
#Install Packages
sudo gdebi google-chrome-stable_current_amd64.deb
sudo gdebi download?dl=packages%2Fubuntu%2Fdropbox_2015.10.28_amd64.deb
sudo gdebi deb.deb
#Remove DEB Files
sudo rm google-chrome-stable_current_amd64.deb
sudo rm dropbox_2015.10.28_amd64.deb
sudo rm deb.deb



#Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client
#Neofetch 
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo apt-get update
sudo apt install -y neofetch
echo "neofetch" >> ~/.bashrc	#Append ~/.bashrc for neofetch

#Adjust Screen Tempture
sudo apt install -y redshift redshift-gtk

#####THEMES########################################################################################################################
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
sudo unzip ~/material.zip -d /usr/share/backgrounds
sudo rm ~/material.zip
