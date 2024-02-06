.PHONY: apt_update

default: help

include scripts/install.mk

help: ## Show help
	@echo "\nUsage: \e[1;36mmake [target]\e[0m\n"
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf " -\033[36m  %-40s\033[0m %s\n", $$1, $$2}'

export-vscode-extensions: ## Export vscode extensions to a file
	code --list-extensions > $(PERSONAL)/installation/files/vscode_extensions.txt

load-settings: ## Load settings
	./scripts/load_settings.sh

set-startup: ## Set custom startup applications
	./scripts/set_startup.sh

dump-terminal-settings: ## Dump terminal settings
	dconf dump /org/gnome/terminal/ > $(PERSONAL)/installation/files/gnome_terminal_settings_backup.dconf
