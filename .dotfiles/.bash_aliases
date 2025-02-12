# myalias
alias b='cd ..'
alias goh=$HOME
alias gow=$WORK
alias gop=$PERSONAL
alias ls='ls -ltra'
alias lssh='cat ~/.ssh/work.d/* && cat ~/.ssh/personal.d/*'

# alias to show help commands
alias help_bash=$PERSONAL'/installation/help/bash.sh'
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

# obsidian
openobsidian() {
    mount_path=$HOME/Documents/jgm.javiergm-obsidian
    if mountpoint -q "$mount_path"; then
        echo "Obsidian folder is already mounted"
    else
        echo "Mounting Obsidian"
        mkdir -p $mount_path
        rclone mount jgm.javiergm-gdrive: $mount_path --allow-non-empty --daemon
    fi
    nohup obsidian > /dev/null 2>&1 &
}
