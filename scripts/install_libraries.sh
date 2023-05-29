#!/usr/bin/env bash

# install libraries on files/libraries.txt
echo "Installing libraries..."
apt install -y `cat ../files/libraries.txt`

# install python requirements on files/requirements.txt
echo "Installing requirements.txt..."
pip install -r ../files/requirements.txt
