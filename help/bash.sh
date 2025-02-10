#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "\t${BLUE}Description${NC}\t\t\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}ag - search command${NC}\t\t\t\t${YELLOW}ag something${NC}"
echo -e "\t${BLUE}ag - search command without extension${NC}\t\t${YELLOW}ag something --py${NC}"
echo -e "\t${BLUE}ag - search ignoring extension or pattern${NC}\t${YELLOW}ag columns_authentication_user --ignore \"*.py\"{NC}"
echo -e
echo -e "\t${BLUE}aws - sync to aws bucket${NC}\t\t\t${YELLOW}aws s3 sync /local_path s3://bucket_name/ --dryrun --exclude=\"filesOrFolders\"${NC}"
echo -e
echo -e "\t${BLUE}bash - check number of parameters${NC}\t\t${YELLOW}[ \"$#\" -ne 2 ] || { echo \"[ERROR] Illegal number of parameters. Aborting...\"; exit 1; }${NC}"
echo -e "\t${BLUE}bash - check variable is integer${NC}\t\t${YELLOW}[[ \"$number\" =~ ^[0-9]+$ ]] || { echo \"[ERROR] Version is not a number. Aborting...\"; exit 1; }${NC}"
echo -e "\t${BLUE}bash - load file if exists${NC}\t\t\t${YELLOW}[ -f ~/.bash_aliases ] && . ~/.bash_aliases${NC}"
echo -e
echo -e "\t${BLUE}cat -redirect output to file${NC}\t\t\t${YELLOW}cat scripts/dump/*.sql  > scripts/db/name.sql${NC}"
echo -e
echo -e "\t${BLUE}find - find by type extension${NC}\t\t\t${YELLOW}find . -name \"*.py\" -type f${NC}"
echo -e "\t${BLUE}find - delete type extension${NC}\t\t\t${YELLOW}find . -name \"*.pyc\" -type f -delete${NC}"
echo -e "\t${BLUE}find - find and delete by name${NC}\t\t\t${YELLOW}find . ! -name u ! -name p -maxdepth 1 -type f -delete${NC}"
echo -e
echo -e "\t${BLUE}grep - search string recursively in python file${NC}\t${YELLOW}grep -rl \"string\" . --include \"*.py\"${NC}"
echo -e
echo -e "\t${BLUE}mysqldump - dump a mysql database${NC}\t\t${YELLOW}mysqldump {database} -u{user} -p{password} > ~/.mysqldumps/{filename}.sql${NC}"
echo -e
echo -e "\t${BLUE}rsync - copy files from remote to local${NC}\t\t${YELLOW}rsync -avzh --include \"*.csv\" --include \"*.log\" --exclude \"*\" user@ip:/or_path/ destination_path/${NC}"
echo -e
echo -e "\t${BLUE}udisksctl -unmount USB${NC}\t\t\t\t${YELLOW}udisksctl unmount -b /dev/$VOLUMENAME${NC}"
echo -e
echo -e "\t${BLUE}zip - compress command${NC}\t\t\t\t${YELLOW}zip -r /path/blabla.zip mydir/*${NC}"
