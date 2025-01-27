# myalias
alias b='cd ..'
alias goh=$HOME
alias gow=$WORK
alias gop=$PERSONAL
alias ealias='code ~/.bash_aliases && code ~/.bash_aliases_custom'
alias lalias='cat ~/.bash_aliases && cat ~/.bash_aliases_custom'
alias egalias='code ~/.gitalias && code ~/.gitalias_custom'
alias lgalias='cat ~/.gitalias && cat ~/.gitalias_custom'
alias lssh='cat ~/.ssh/work.d/* && cat ~/.ssh/personal.d/*'
alias ls='ls -ltra'
alias terminal_shortcut=$PERSONAL'/installation/scripts/alias_terminal_shortcut.sh'
alias help_docker=$PERSONAL'/installation/scripts/help/docker.sh'
alias help_helm=$PERSONAL'/installation/scripts/help/helm.sh'
alias help_k9s=$PERSONAL'/installation/scripts/help/k9s.sh'
alias help_neo4j=$PERSONAL'/installation/scripts/help/neo4j.sh'
alias help_kubectl=$PERSONAL'/installation/scripts/help/kubectl.sh'
alias help_postgresql=$PERSONAL'/installation/scripts/help/postgresql.sh'
alias help_mongodb=$PERSONAL'/installation/scripts/help/mongodb.sh'

alias dpyc='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'
alias lpyc='find . | grep -E "(__pycache__|\.pyc|\.pyo$)"'

# python and pip
alias python=python3
alias pip=pip3

# jira (requires JIRA local installation)
alias startj='sudo /opt/atlassian/jira/bin/start-jira.sh'
alias stopj='sudo /opt/atlassian/jira/bin/stop-jira.sh'

# requires private repo
alias todo=$PERSONAL'/todoist-api/scripts/create_task.sh '
alias todor=$PERSONAL'/todoist-api/scripts/remove_task.sh '

# docker
alias dpo='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer'
dexec() {
    echo "Entering in $1"
    docker exec -it $1 /bin/bash
}

# load custom bash_aliases
if [ -f ~/.bash_aliases_custom ]; then
    . ~/.bash_aliases_custom
fi
