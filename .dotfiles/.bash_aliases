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

# jira (requires JIRA local installation)
alias startj='sudo /opt/atlassian/jira/bin/start-jira.sh'
alias stopj='sudo /opt/atlassian/jira/bin/stop-jira.sh'

# sublime
alias subl='/opt/sublime_text/sublime_text'

# requires private repo
alias todo=$PERSONAL'/todoist-api/scripts/create_task.sh '
alias todor=$PERSONAL'/todoist-api/scripts/remove_task.sh '

# install accent
alias accent='$PERSONAL/installation/install_accents.sh'

# docker
alias dpo='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer'
alias dup='docker-compose up'
alias ddo='docker-compose down'

dexec() {
    echo "Entering in $1"
    docker exec -it $1 /bin/bash
}


# load custom bash_aliases
if [ -f ~/.bash_aliases_custom ]; then
    . ~/.bash_aliases_custom
fi
