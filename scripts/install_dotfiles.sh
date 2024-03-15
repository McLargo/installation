#!/usr/bin/env bash

pushd $HOME/personal/installation/.dotfiles > /dev/null
# files symblink to HOME root path
files=($(ls -a .{bash_aliases,bash_aliases_custom,gitalias,gitalias_custom,env,zshrc,inputrc}))
for DOTFILE in "${files[@]}"; do
    if [ -f $DOTFILE ]; then # continue, is a file
        if [ -f $HOME/$DOTFILE ]; then # ignore symlink creation
            echo "File $DOTFILE already in $HOME"
        else # create symlink
            echo "Creating symblink for $DOTFILE"
            ln -s $PWD/$DOTFILE $HOME/$DOTFILE
        fi
    fi
done
# folders symblinksto HOME root path
folders=(.grc)
for DOTFILE in "${folders[@]}"; do
    if [ -d $DOTFILE ]; then # continue, is a directory
        if [ -f $HOME/$DOTFILE ]; then # ignore symlink creation
            echo "Folder $DOTFILE already in $HOME"
        else # create symlink
            echo "Creating folder symblink for $DOTFILE"
            ln -s $PWD/$DOTFILE $HOME/$DOTFILE
        fi
    fi
done
popd > /dev/null
# may be required to remove $HOME/.zshrc
