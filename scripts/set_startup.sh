#!/usr/bin/env bash

echo "Setting startup application..."
if [ -d "$HOME/.config/autostart" ]; then
    echo "Removing current autostart folder"
    rm -rf $HOME/.config/autostart
fi
echo "Creating symblink to custom startup"
ln -s $HOME/personal/installation/autostart/ $HOME/.config/autostart
