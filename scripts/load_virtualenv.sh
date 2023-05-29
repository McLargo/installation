#!/usr/bin/env bash

# handle multiple virtualenv
if [[ "$POETRY_ACTIVE" -ne 1 ]]; then
    if [ -f $PERSONAL/installation/scripts/load_venv.sh ]; then
        virtualenv_dir="$HOME/.virtualenvs"
        if [ ! -d "$virtualenv_dir" ]; then
            exit
        fi

        current_dir=${PWD##*/}
        current_venv_to_activate=$virtualenv_dir/$current_dir
        if [ -d "$current_venv_to_activate" ]; then
            echo "Activating virtualenv in directory -> $current_venv_to_activate"
            venv_to_activate="$current_venv_to_activate/bin/activate"
            source $PERSONAL/installation/scripts/load_venv.sh $venv_to_activate
            return
        else
            echo 'Do you want to load a virtualenv in this terminal'
            echo 'Press any char not present in the list below to skip'

            number=1
            declare -A virtualenvs_index
            for entry in "$virtualenv_dir"/*
            do
                virtualenvs_index[$number]=$entry
                echo "  $number-> $entry"
                ((number=number+1))
            done

            vared -p 'Which venv would you like to activate? Any other char will skip this step: ' -c answer
            if ((answer >= 1 && answer <= number)); then
                venv_to_activate="${virtualenvs_index[$answer]}/bin/activate"
                source $PERSONAL/installation/scripts/load_venv.sh $venv_to_activate
            fi
        fi
    fi
fi
