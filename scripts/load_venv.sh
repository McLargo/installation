#!/usr/bin/env bash

# see if source command is available
if ! type "source" > /dev/null; then
  echo 'Skiping load of venv'
  exit
fi
# load source with venv
source "$1"
