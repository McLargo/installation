# myalias
alias b='cd ..'
alias goh=$HOME
alias gow=$WORK
alias gop=$PERSONAL
alias ealias='subl ~/.bash_aliases && subl ~/.bash_aliases_custom'
alias lalias='cat ~/.bash_aliases && cat ~/.bash_aliases_custom'
alias egalias='subl ~/.gitalias && subl ~/.gitalias_custom'
alias lgalias='cat ~/.gitalias && cat ~/.gitalias_custom'
alias lssh='cat ~/.ssh/work.d/* && cat ~/.ssh/personal.d/*'
alias ls='ls -ltra'

alias dpyc='find . -name "*.pyc" -type f -delete'
alias lpyc='find . -name "*.pyc" -type f'

# python and pip
alias python=python3
alias pip=pip3

# extra
alias subl='/opt/sublime_text/sublime_text'
alias todo=$PERSONAL'/todoist-api/scripts/create_task.sh '
alias todor=$PERSONAL'/todoist-api/scripts/remove_task.sh '

# load custom bash_aliases
if [ -f ~/.bash_aliases_custom ]; then
    . ~/.bash_aliases_custom
fi
