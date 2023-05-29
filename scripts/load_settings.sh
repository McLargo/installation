#!/usr/bin/env bash

# load settings
read -p "do you want to load terminal settings? (y/n)? " answer
if [[ $answer == "y" ]]
then
    dconf load /org/gnome/terminal/ < ../files/gnome_terminal_settings_backup.dconf
fi

# extra settings
read -p "do you want to load extra settings? (y/n)? " answer
if [[ $answer == "y" ]]
then
    dconf load /org/gnome/ < ../files/extra_settings_backup.dconf
fi
