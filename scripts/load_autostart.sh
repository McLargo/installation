#!/usr/bin/env bash

if [ -f "$HOME/.config/autostart" ]; then
    rm -f $HOME/.config/autostart
fi
ln -s $HOME/personal/installation/autostart/ $HOME/.config/autostart
