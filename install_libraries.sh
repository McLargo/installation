#!/usr/bin/env bash

# install libraries on libraries.txt
apt update -y
read -p "do you want to install libraries? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo "Installing libraries..."
	sudo apt install -y `cat libraries.txt`
	echo "Installing requirements.txt..."
	pip install -r requirements.txt
fi

# load settings
read -p "do you want to load terminal settings? (y/n)? " answer
if [[ $answer == "y" ]]
then
	dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt
fi

# load autostart
read -p "do you want to load autostart settings? (y/n)? " answer
if [[ $answer == "y" ]]
then
	if [ -f "$HOME/.config/autostart" ]; then
	 	rm -f $HOME/.config/autostart
	fi
	ln -s $HOME/personal/installation/autostart/ $HOME/.config/autostart
fi


# spotify
read -p "do you want to install spotify? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo "Installing spotify..."
	curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
	echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
	sudo apt-get update && sudo apt-get install spotify-client -y
fi

# sublime text 3
read -p "do you want to install sublime text? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo "Installing sublime..."
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
	sudo apt install sublime-text -y
fi

read -p "do you want to install sublime text plugins? (y/n)? " answer
if [[ $answer == "y" ]]
then
	# install package control first
	if [ -f "$HOME/.config/sublime-text/Installed\ Packages/Package\ Control.sublime-package" ]; then
	 	rm -f $HOME/.config/sublime-text/Installed\ Packages/Package\ Control.sublime-package
	fi
	ln -s $HOME/personal/installation/Sublime/Installed\ Packages/Package\ Control.sublime-package $HOME/.config/sublime-text/Installed\ Packages/Package\ Control.sublime-package
	# sync documentation https://packagecontrol.io/docs/syncing
	# create symlink to my folder that contains my plug-ins and configuration
	if [ -d "$HOME/.config/sublime-text/Packages/User" ]; then
		rm -rf $HOME/.config/sublime-text/Packages/User && mkdir $HOME/.config/sublime-text/Packages/User
	fi
	ln -s $HOME/personal/installation/Sublime/Packages/User/Package\ Control.sublime-settings $HOME/.config/sublime-text/Packages/User/Package\ Control.sublime-settings
	ln -s $HOME/personal/installation/Sublime/Packages/User/Default\ \(Linux\).sublime-keymap $HOME/.config/sublime-text/Packages/User/Default\ \(Linux\).sublime-keymap
	ln -s $HOME/personal/installation/Sublime/Packages/User/disable_purchase.py $HOME/.config/sublime-text/Packages/User/disable_purchase.py
	ln -s $HOME/personal/installation/Sublime/Packages/User/Preferences.sublime-settings $HOME/.config/sublime-text/Packages/User/Preferences.sublime-settings
	ln -s $HOME/personal/installation/Sublime/Packages/User/trailing_spaces.sublime-settings $HOME/.config/sublime-text/Packages/User/trailing_spaces.sublime-settings
fi

# zsh
read -p "do you want to install zsh? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo "Installing zsh..."
	sudo apt install zsh -y
	sudo apt-get install powerline fonts-powerline -y
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	chsh -s /bin/zsh
fi

# brave
read -p "do you want to install brave? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo "Installing brave..."
	sudo apt install apt-transport-https curl
	curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
	echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update
	sudo apt install brave-browser
fi

# keepass
read -p "do you want to install keepass? (y/n)? " answer
if [[ $answer == "y" ]]
then
	sudo add-apt-repository ppa:eugenesan/ppa
	sudo apt install keepass2
fi

# calibre
read -p "do you want to install calibre? (y/n)? " answer
if [[ $answer == "y" ]]
then
	sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
fi
