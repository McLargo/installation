#!/usr/bin/env bash

# install libraries on libraries.txt
apt update -y
echo "Installing libraries..."
sudo apt install -y `cat libraries.txt`
echo "Installing requirements.txt..."
pip install -r requirements.txt

# spotify
echo "Installing spotify..."
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client -y

# sublime text 3
echo "Installing sublime..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text -y
# install package control first
if [ -f "$HOME/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package" ]
 	rm -f $HOME/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package
ln -s $PERSONAL/installation/Sublime/Installed\ Packages/Package\ Control.sublime-package $HOME/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package
# sync documentation https://packagecontrol.io/docs/syncing
# create symlink to my folder that contains my plug-ins and configuration
if [ -d "$HOME/.config/sublime-text-3/Packages/User" ]
	rm -rf $HOME/.config/sublime-text-3/Packages/User
ln -s $PERSONAL/installation/Sublime/Packages/User $HOME/.config/sublime-text-3/Packages/User

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
