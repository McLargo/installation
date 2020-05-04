#!/usr/bin/env bash

echo 'Installing libraries'
./install_libraries.sh

echo 'Downloading git repository'
./install_git_repo.sh

echo 'Installing .dotenv files'
.dotfiles/install_dotfiles.sh

# TODO: add sublime installation