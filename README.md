# Javier's installation script, for a fresh start in new machines

## Pre-requirements

- Set keyword language to English (US, with dead keys) to enable Spanish accent
  on a US keyboard.

- Install `git` and `make`. Execute the command below:

`sudo apt-get install git make -y`

- Create `personal` and `work` folders on the user path:

```bash
mkdir ~/personal
mkdir ~/work
```

- Clone my personal installation repo:

`git clone git@github.com:McLargo/installation.git`

## Makefile is your friend

- Run `make help` to know which commands are available. Usually, for the first
  time, run `make install`.

## ssh configuration

- Create new ssh in your `$HOME/.ssh` and upload public key in github.

- To test the configuration, run `ssh -T git@<host>`. Remember to configure the
  host in your `~/.ssh/config` file.

- Create a new file in `$HOME/.gitconfig`. Sample in
  `samples/.gitconfig_global`, you need to update manually what is needed,
  including any number of `includeIf` conditions.

- Create a file in `$PERSONAL/.gitconfig`. Sample
  in`samples/.gitconfig_personal`, you need to manually update what is needed,
  including signing commits via ssh keys.

- Create `~/.config/git/allowed_signers` file with the following content:

```bash
$(whoami) $(cat ~/.ssh/<public_key>)
```

- You can add more than one public key, just add a new line with the same
  format.

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
