# Javier's installation script, for a fresh start in new machines


### Pre-requirements:

Install git
`sudo apt-get install git -y`

Create personal and work folders on user path
`mkdir ~/personal`
`mkdir ~/work`

Clone my personal installation repo
`git clone https://github.com/McLargo/installation.git`

### Execute following script:

`./fresh_installation.sh`

_Improvements may be required here, as this piece of code has been never fully tested_

### Post-checks:
close session for zsh to be pickup as your default terminal
In case zsh is not starting in new terminal
https://dev.to/leamsigc/set-zsh-as-the-default-shell-in-your-terminal-3o7f

Periodically, you can dump your terminal settings
`dconf dump /org/gnome/terminal/ > $PERSONAL/installation/gnome_terminal_settings_backup.txt`
