#!/usr/bin/env bash

# script untested. TOTEST
# curl
echo "Installing curl..."
apt-get install curl -y

# tweak tool
echo "Installing tweak tool..."
apt-get install gnome-tweak-tool -y

# spotify
echo "Installing spotify..."
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# sublime text 3
echo "Installing sublime..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get remove sublime-text && sudo apt-get autoremove

# zsh
echo "Installing zsh..."
sudo apt install zsh
sudo apt-get install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
