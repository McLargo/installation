# Javier's installation script, for a fresh start in new machines

## Pre-requirements

- Install git
`sudo apt-get install git -y`

- Create personal and work folders on the user path

```bash
mkdir ~/personal
mkdir ~/work
```

- Clone my personal installation repo:
`git clone https://github.com/McLargo/installation.git`

- Create a file in `$HOME/.gitconfig`. Manually configure with `includeIf`
conditions. Sample in `.gitconfig`:

## Makefile is your friend

- Run `make help` to know which commands are available. Usually, for the first
  time, run `make install`.


## Extra

- gnome configuration. If there is some customization you may want to keep, find
  it by running `dconf dump /org`. Copy/paste to
  `files/extra_settings_backup.dconf` file to load later.
- [Docker portainer](https://docs.portainer.io/v/ce-2.9/start/install/server/docker/linux)

## Post-checks

Close the current session for zsh to be pickup as your default terminal.
[In case zsh is not starting in a new terminal](https://dev.to/leamsigc/set-zsh-as-the-default-shell-in-your-terminal-3o7f)
