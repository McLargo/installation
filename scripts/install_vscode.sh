#!/usr/bin/env bash

echo "Installing Visual Studio Code..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
while read extension; do
    code --install-extension $extension
done <files/vscode_extensions.txt
