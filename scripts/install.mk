install_brave: sudo ## Install brave
	./.scripts/install_brave.sh

install_calibre: sudo ## Install calibre
	./.scripts/install_calibre.sh

install_dotfiles: sudo ## Install dotfiles
	./.scripts/install_dotfiles.sh

install_git_repo:  sudo ## Install git repository
	./.scripts/install_git_repo.sh

install_keepass: sudo ## Install keepass
	./.scripts/install_keepass.sh

install_libraries: sudo apt_update ## Install libraries
	./scripts/install_libraries.sh

install_spotify: sudo ## Install spotify
	./.scripts/install_spotify.sh

install_vscode: sudo ## Install VS Code
	./.scripts/install_vscode.sh

install_zsh: sudo ## Install zsh
	./.scripts/install_zsh.sh

install_all: install_libraries install_zsh install_brave install_git_repo install_spotify install_vscode install_keepass install_calibre
