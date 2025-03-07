# Javier's installation script, for a fresh start in new machines

## Pre-requirements

- Set keyword language to English (US, with dead keys) to enable Spanish accent
  on a US keyboard.

- Create new ssh and GPG keys and set them in github.

- Install `git` and `make, execute the command below:

`sudo apt-get install git make -y`

- Create `personal` and `work` folders on the user path:

```bash
mkdir ~/personal
mkdir ~/work
```

- Clone my personal installation repo:

`git clone git@github.com:McLargo/installation.git`

- Create a file in `$HOME/.gitconfig`. Manually configure with `includeIf`
conditions. Sample in `.gitconfig`:

## Makefile is your friend

- Run `make help` to know which commands are available. Usually, for the first
  time, run `make install`.

## Structure

- **.dotfiles/**: configuration files for other tools, mainly zsh.
- **.ssh/**: configuration files for ssh.
- **autostart/**: configuration files for autostart applications.
- **files/**: extra files to be used in the installation.
- **help/**: scripts to display help messages.
- **JIRA/**: documentation for JIRA.
- **scripts/**: scripts to be used in the installation.
- **vscode/**: configuration files for vscode.

## Extra tools

- [Docker portainer](https://docs.portainer.io/v/ce-2.9/start/install/server/docker/linux)

## Troubleshooting

Close the current session for `zsh` to be picked up as your default terminal.
[In case zsh is not starting in a new terminal](https://dev.to/leamsigc/set-zsh-as-the-default-shell-in-your-terminal-3o7f)
