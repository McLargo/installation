##@ Config
.PHONY: export-vscode-extensions load-settings set-startup dump-terminal-settings

export-vscode-extensions: ## Export vscode extensions to a file
	code --list-extensions > $(PERSONAL)/installation/files/vscode_extensions.txt

dump-terminal-settings: ## Dump terminal settings to a file
	dconf dump /org/gnome/terminal/ > $(PERSONAL)/installation/files/gnome_terminal_settings_backup.dconf

load-settings: ## Execute script to load settings
	./scripts/load_settings.sh

set-startup: ## Execute script to set custom startup applications
	./scripts/set_startup.sh
