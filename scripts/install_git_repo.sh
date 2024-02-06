#!/usr/bin/env bash

# first step, lets set variables for git
git config --global user.email "javiergilmont@gmail.com"
git config --global user.name "Javier Gil"

pushd $PERSONAL > /dev/null
echo "Cloning my documentation"
git clone git@github.com:McLargo/mkdown-docs.git
popd > /dev/null