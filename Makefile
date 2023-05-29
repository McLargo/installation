.PHONY : apt_update install_libraries

default: help

help: ## Show help
	@echo "\nUsage: \e[1;36mmake [target]\e[0m\n"
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf " -\033[36m  %-20s\033[0m %s\n", $$1, $$2}'

export_vscode_extensions: ## Export vscode extensions to a file
	code --list-extensions > ./files/vscode_extensions.txt

install_libraries: apt_update ## Install libraries
	./scripts/install_libraries.sh

load_settings:  ## Install libraries
	./scripts/load_settings.sh

apt_update: ## apt update
	apt update -y
