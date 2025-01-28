# myalias
alias b='cd ..'
alias goh=$HOME
alias gow=$WORK
alias gop=$PERSONAL
alias ls='ls -ltra'
alias lssh='cat ~/.ssh/work.d/* && cat ~/.ssh/personal.d/*'

# edit alias
alias edit_alias='code ~/.bash_aliases ~/.bash_aliases_custom ~/.gitalias  ~/.gitalias_custom'

# alias to show help commands
alias help_alias='cat ~/.bash_aliases && cat ~/.bash_aliases_custom'
alias help_galias='cat ~/.gitalias && cat ~/.gitalias_custom'
alias help_docker=$PERSONAL'/installation/help/docker.sh'
alias help_helm=$PERSONAL'/installation/help/helm.sh'
alias help_git=$PERSONAL'/installation/help/git.sh'
alias help_k9s=$PERSONAL'/installation/help/k9s.sh'
alias help_neo4j=$PERSONAL'/installation/help/neo4j.sh'
alias help_kubectl=$PERSONAL'/installation/help/kubectl.sh'
alias help_postgresql=$PERSONAL'/installation/help/postgresql.sh'
alias help_mongodb=$PERSONAL'/installation/help/mongodb.sh'
alias help_sublime=$PERSONAL'/installation/help/sublime.sh'
alias help_terminal=$PERSONAL'/installation/help/terminal.sh'

# python and pip
alias python=python3
alias pip=pip3
alias dpyc='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'
alias lpyc='find . | grep -E "(__pycache__|\.pyc|\.pyo$)"'

# jira (requires JIRA local installation)
alias startj='sudo /opt/atlassian/jira/bin/start-jira.sh'
alias stopj='sudo /opt/atlassian/jira/bin/stop-jira.sh'

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
