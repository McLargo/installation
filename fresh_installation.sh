#!/usr/bin/env bash

# setting up env variable
echo 'Installing libraries'
./install_libraries.sh

echo 'Installing .dotenv files'
.dotfiles/install_dotfiles.sh

echo 'Downloading git repository'
./install_git_repo.sh

# TODO: add sublime installation