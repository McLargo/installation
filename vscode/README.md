# VS Code

I have doubts regarding VS code installation in a  new computer.

VSCode has a Sync feature which is very useful to sync your setting
automatically against a github account (in the cloud, no need of an extra repo
or other kind of storage). But right know VSCode can be only signed in with one
account. So, if you have multiple accounts (work/personal for example), you
can't sync properly. Or if you lost access to your account, you can't recover
the settings saved.

So let's prepare a manual backup to recover from scratch the most important
settings in case of need.

## Basics

Basic configuration to make VSCode more comfortable to use.

- Show rules in window
- Remove trailing spaces on save
- Show line numbers
- Add empty line at the end of the file
- Nice vscode icons, FiraCode font and dark theme
- Markdown preview and linters
- github integration
- coverage gutters
- Docker and Kubernetes integration
- python
- ruff
- cspell
- project manager
- error lens

### Recommended

- sublime shortcuts
- path intellisense
- live preview
- todo tree.
- yaml, dotenv and shell-format (any other language you use)
- plantuml

## Recovery

> NOTE: This process has not been tested. Please note what is missing to enrich the process.

### If you are lucky

If you still have access to VSCode, click on *export profile* on the bottom
left. Choose what you want to export, and save the file in a safe place.

This file contains all the extensions and settings, so you can easily import in
your new machine.

### If you are not lucky

If you don't have access to VSCode, you will need to start from scratch. See
below some snippets to help you.

#### Settings

In this folder you will find a `settings.json` file. This file contains the most
important settings for VSCode. You can copy/paste the content in the new VS code
settings file.

#### Extensions

The extensions are a bit more complicated. You can't export the extensions
directly from the UI, but you can list them in the terminal, and install them
individually.

```console
λ ~/ code --list-extensions
alefragnani.project-manager
bierner.markdown-emoji
charliermarsh.ruff
christian-kohler.path-intellisense
davidanson.vscode-markdownlint
donjayamanne.githistory
foxundermoon.shell-format
gruntfuggly.todo-tree
marvhen.reflow-markdown
mikestead.dotenv
ms-azuretools.vscode-docker
ms-kubernetes-tools.vscode-kubernetes-tools
ms-python.python
ms-python.vscode-pylance
ms-vscode-remote.remote-containers
ms-vscode.live-server
ms-vscode.sublime-keybindings
outofsync42.select-compare-tabs
redhat.vscode-yaml
ryanluker.vscode-coverage-gutters
seyyedkhandon.firacode
streetsidesoftware.avro
streetsidesoftware.code-spell-checker
streetsidesoftware.code-spell-checker-spanish
tal7aouy.icons
usernamehw.errorlens
vscode-icons-team.vscode-icons
waderyan.gitblame
well-ar.plantuml
```
