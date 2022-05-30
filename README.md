# Javier's installation script, for a fresh start in new machines


### Pre-requirements:

Install git
`sudo apt-get install git -y`

Create personal and work folders on user path
`mkdir ~/personal`
`mkdir ~/work`

Clone my personal installation repo
`git clone https://github.com/McLargo/installation.git`

Create file in `$HOME/.gitconfig`. Manually configure with includeIf conditions

### Execute following script:

`./fresh_installation.sh`

### Helpers:
You may need to store private settings somewhere, and do post-checks that doesn't really belongs here.

How to import previously terminal settings:

`dconf dump /org/gnome/terminal/ > $PERSONAL/installation/gnome_terminal_settings_backup.txt`

To dump all settings:

`dconf dump ~/ > saved_settings.dconf`


[Docker portainer](https://docs.portainer.io/v/ce-2.9/start/install/server/docker/linux)

### Post-checks:
Close session for zsh to be pickup as your default terminal. [In case zsh is not starting in new terminal](https://dev.to/leamsigc/set-zsh-as-the-default-shell-in-your-terminal-3o7f)
