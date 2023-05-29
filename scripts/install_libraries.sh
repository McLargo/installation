#!/usr/bin/env bash

# install libraries on files/libraries.txt
# install python requirements on files/requirements.txt
read -p "do you want to install libraries and python requirements? (y/n)? " answer
if [[ $answer == "y" ]]
then
    echo "Installing libraries..."
    sudo apt install -y `cat ../files/libraries.txt`
    echo "Installing requirements.txt..."
    pip install -r ../files/requirements.txt
fi
