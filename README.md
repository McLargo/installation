# Javier's installation script, for a fresh start in new machines

## Pre-requirements

- Install git

`sudo apt-get install git make -y`

- Create `personal` and `work` folders on the user path

```bash
mkdir ~/personal
mkdir ~/work
```

- Clone my personal installation repo:

`git clone git@github.com:McLargo/installation.git`

- Create a file in `$HOME/.gitconfig`. Manually configure with `includeIf`
conditions. Sample in `.gitconfig`:

- Set keyword language to English (US, with dead keys) to enable Spanish accent
  on a US keyboard.

## Makefile is your friend

- Run `make help` to know which commands are available. Usually, for the first
  time, run `make install`.

## Extra

- [Docker portainer](https://docs.portainer.io/v/ce-2.9/start/install/server/docker/linux)

## Troubleshooting

Close the current session for `zsh` to be picked up as your default terminal.
[In case zsh is not starting in a new terminal](https://dev.to/leamsigc/set-zsh-as-the-default-shell-in-your-terminal-3o7f)
