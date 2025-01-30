#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "${GREEN}Most of this commands are used everyday. This is a cheatsheet to remember them."
echo -e "In case tou need extra info, you can see [more details](https://github.com/richistron/aprendiendo-git/tree/master/docs)${NC}\n"

echo -e "${GREEN}Showing git commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}Init a new git repo in current folder${NC}\t\t\t${YELLOW}git init${NC}"
echo -e "\t${BLUE}List local branches${NC}\t\t\t\t\t${YELLOW}git branch --list${NC}"
echo -e "\t${BLUE}List repo branches${NC}\t\t\t\t\t${YELLOW}git branch -r${NC}"
echo -e "\t${BLUE}Change to different branch${NC}\t\t\t\t${YELLOW}git checkout <branch>${NC}"
echo -e "\t${BLUE}Create new branch from current${NC}\t\t\t\t${YELLOW}git checkout -b <branch>${NC}"
echo -e "\t${BLUE}Check status of local repo${NC}\t\t\t\t${YELLOW}git status${NC}"
echo -e "\t${BLUE}Add file to stage${NC}\t\t\t\t\t${YELLOW}git add <filename>${NC}"
echo -e "\t${BLUE}Add all file to stage${NC}\t\t\t\t\t${YELLOW}git add -A${NC}"
echo -e "\t${BLUE}Commit changes staged with message${NC}\t\t\t${YELLOW}git commit -m <message>${NC}"
echo -e "\t${BLUE}Merge current branch with branch in repo${NC}\t\t${YELLOW}git merge <repository/branch>${NC}"
echo -e "\t${BLUE}Update changes in repo to current branch (fetch+merge)${NC}\t${YELLOW}git pull <repository> <branch>${NC}"
echo -e "\t${BLUE}Push your local commits to a branch in the repo${NC}\t\t${YELLOW}git push <repository> <branch>${NC}"
echo -e "\t${BLUE}Forcing the push${NC}\t\t\t\t\t${YELLOW}git push <repository> <branch> -f${NC}"
echo -e "\t${BLUE}Update last changes to local from repository{NC}\t${YELLOW}git fetch <repository>${NC}"
echo -e "\t${BLUE}Update last changes of a specific branch${NC}\t\t${YELLOW}git fetch <repository> <branch>${NC}"
echo -e "\t${BLUE}Show log of last commits${NC}\t\t\t\t${YELLOW}git log${NC}"
echo -e "\t${BLUE}Show last X commits${NC}\t\t\t\t\t${YELLOW}git log -n <N>${NC}"
echo -e "\t${BLUE}List all repositories${NC}\t\t\t\t\t${YELLOW}git remote -v${NC}"
echo -e "\t${BLUE}Add a new repository${NC}\t\t\t\t\t${YELLOW}git remote add <repository> <url.git>${NC}"
echo -e "\t${BLUE}Update url from a repo${NC}\t\t\t\t\t${YELLOW}git remote set-url <repository> ssh://<user>@<ip/project>.git${NC}"
echo -e "\t${BLUE}Rebase certain numbers of commits${NC}\t\t\t${YELLOW}git rebase -i HEAD~<N>${NC}"
echo -e "\t${BLUE}Rebase certain branch into current one${NC}\t\t\t${YELLOW}git rebase -i <branch>${NC}"
echo -e "\t${BLUE}Merge one particular commit in current branch${NC}\t\t${YELLOW}git cherry-pick <commit-hash>${NC}"
echo -e "\t${BLUE}Save current changes${NC}\t\t\t\t\t${YELLOW}git stash save <message>${NC}"
echo -e "\t${BLUE}List all stashes${NC}\t\t\t\t\t${YELLOW}git stash list${NC}"
echo -e "\t${BLUE}Recover a stash${NC}\t\t\t\t\t\t${YELLOW}git stash apply stash@{<N>}${NC}"
echo -e "\t${BLUE}Delete one stash${NC}\t\t\t\t\t${YELLOW}git stash drop stash@{<N>}${NC}"
echo -e "\t${BLUE}Recover and delete one stash${NC}\t\t\t\t${YELLOW}git stash pop stash@{<N>}${NC}"
