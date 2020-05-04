# myalias
alias back='cd ..'
alias goroot='cd ~'
alias ealias='subl ~/.bash_aliases && subl ~/.bash_aliases_custom'
alias lalias='cat ~/.bash_aliases && cat ~/.bash_aliases_custom'
alias egalias='subl ~/.gitalias && subl ~/.gitalias_custom'
alias lgalias='cat ~/.gitalias && cat ~/.gitalias_custom'

alias dpyc='find . -name "*.pyc" -type f -delete'
alias lpyc='find . -name "*.pyc" -type f'

# extra
alias subl='~/programs/sublime_text_3/sublime_text'


# load custom bash_aliases
if [ -f ~/.bash_aliases_custom ]; then
    . ~/.bash_aliases_custom
fi
