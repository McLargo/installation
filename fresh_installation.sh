echo 'Installing libraries'
`sudo ./install_libraries.sh`

echo 'Downloading git repository'
`./install_git_repo.sh`

echo 'Installing .dotenv files'
`.dotfiles/install_dotfiles.sh`

# TODO: add sublime installation