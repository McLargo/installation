#!/usr/bin/env bash

# install libraries on libraries.txt
apt update -y
echo "Installing libraries..."
sudo apt install -y `cat libraries.txt`

# spotify
echo "Installing spotify..."
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client -y

# sublime text 3
echo "Installing sublime..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text -y
# check and remove previous sublime-text-3 folder, and
# create symlink to my folder that contains my plug-ins and configuration
if [ -d "$HOME/.config/sublime-text-3" ]
	rm -rf $HOME/.config/sublime-text-3
n -s $PERSONAL/installation/Sublime $HOME/.config/sublime-text-3

# zsh
echo "Installing zsh..."
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh

# brave
echo "Installing brave..."
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# keepass
sudo add-apt-repository ppa:eugenesan/ppa
sudo apt install keepass2

# calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb
