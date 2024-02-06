install-brave: ## Install brave
	./scripts/install_brave.sh

install-calibre: ## Install calibre
	./scripts/install_calibre.sh

install-dotfiles: ## Install dotfiles
	./scripts/install_dotfiles.sh

install_git_repo:  ## Install git repository
	./scripts/install_git_repo.sh

install-keepass: ## Install keepass
	./scripts/install_keepass.sh

install-libraries: ## Install libraries
	./scripts/install_libraries.sh

install-spotify: ## Install spotify
	./scripts/install_spotify.sh

install-vscode: ## Install VS Code
	./scripts/install_vscode.sh

install-zsh: ## Install zsh
	./scripts/install_zsh.sh

install-all: install_libraries install_zsh install_brave install_git_repo install_spotify install_vscode install_keepass install_calibre
