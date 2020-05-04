#!/usr/bin/env bash

files=($(ls -a .{bash_aliases,bash_aliases_custom,gitalias,gitalias_custom,env,zshrc,inputrc}))
for DOTFILE in "${files[@]}"; do
    if [ -f $DOTFILE ]; then # continue
        if [ -f $HOME/$DOTFILE ]; then # ignore symlink creation
            echo "File $DOTFILE already in $HOME"
        else # create symlink
            echo "Creating symblink for $DOTFILE"
            ln -s $PWD/$DOTFILE $HOME/$DOTFILE
        fi
    fi
done
