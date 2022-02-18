# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose aliases)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
alias git='LC_ALL=en_GB git'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#setopt histignorealldups histfindnodups sharehistory histignoredups
#unsetopt histignorealldups
setopt HIST_IGNORE_ALL_DUPS sharehistory histignoredups
#unsetopt HIST_FIND_NO_DUPS

# load .env file
if [ -f ~/.env ]; then
    . ~/.env
fi

# load .inputrc file
if [ -f ~/.inputrc ]; then
    . ~/.inputrc
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# load custom theme definition for ZSH_THEME is "lambda"
if [ $ZSH_THEME = 'lambda' ]; then
    ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[green]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}: "
    ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[red]%}* "
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
fi

# export path for python
export PATH="$HOME/.local/bin:$PATH"

# load gitalias
if [ -f ~/.gitalias ]; then
    . ~/.gitalias
fi

# load extra stuff
if [ -f ~/.extra ]; then
    . ~/.extra
fi

# load virtualenv stuff
if [ -f $PERSONAL/installation/scripts/load_venv.sh ]; then
    virtualenv_dir="$HOME/.virtualenvs"
    if [ ! -d "$virtualenv_dir" ]; then
        exit
    fi

    current_dir=${PWD##*/}
    current_venv_to_activate=$virtualenv_dir/$current_dir
    if [ -d "$current_venv_to_activate" ]; then
        echo "Activating virtualenv in directory -> $current_venv_to_activate"
        venv_to_activate="$current_venv_to_activate/bin/activate"
        source $PERSONAL/installation/scripts/load_venv.sh $venv_to_activate
        return
    else
        echo 'Do you want to load a virtualenv in this terminal'
        echo 'Press any char not present in the list below to skip'

        number=1
        declare -A virtualenvs_index
        for entry in "$virtualenv_dir"/*
        do
            virtualenvs_index[$number]=$entry
            echo "  $number-> $entry"
            ((number=number+1))
        done

        vared -p 'Which venv would you like to activate? Any other char will skip this step: ' -c answer
        if ((answer >= 1 && answer <= number)); then
            venv_to_activate="${virtualenvs_index[$answer]}/bin/activate"
            source $PERSONAL/installation/scripts/load_venv.sh $venv_to_activate
        fi
    fi
fi
