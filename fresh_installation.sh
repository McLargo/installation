#!/usr/bin/env bash

# setting up env variable
read -p "do you want to install libraries? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo 'Installing libraries'
	./install_libraries.sh
fi

read -p "do you want to install dotenv files? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo 'Installing .dotenv files'
	.dotfiles/install_dotfiles.sh
fi

read -p "do you want to install extra git repository? (y/n)? " answer
if [[ $answer == "y" ]]
then
	echo 'Downloading git repository'
	./install_git_repo.sh
fi
