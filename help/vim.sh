#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "${GREEN}Showing vim shortcuts commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t\t${YELLOW}Shortcut${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}Enter interactive mode${NC}\t\t\t${YELLOW}i"
echo -e "\t${BLUE}Exit interactive mode${NC}\t\t\t${YELLOW}ESC"

echo -e "\t${BLUE}Cut a line${NC}\t\t\t\t${YELLOW}dd"
echo -e "\t${BLUE}Copy a line${NC}\t\t\t\t${YELLOW}yy"
echo -e "\t${BLUE}Past clipboard after cursor${NC}\t\t${YELLOW}p"
echo -e "\t${BLUE}Past clipboard before cursor${NC}\t\t${YELLOW}P"
echo -e "\t${BLUE}Undo${NC}\t\t\t\t\t${YELLOW}u"

echo -e "\t${BLUE}Move to top of screen${NC}\t\t\t${YELLOW}H"
echo -e "\t${BLUE}Move to middle of screen${NC}\t\t${YELLOW}M"
echo -e "\t${BLUE}Move to bottom of screen${NC}\t\t${YELLOW}L"
echo -e "\t${BLUE}Jumps forward to start of a word${NC}\t${YELLOW}W"
echo -e "\t${BLUE}Jumps backwards to start of a word${NC}\t${YELLOW}B"
echo -e "\t${BLUE}Jumps forward to end of a word${NC}\t\t${YELLOW}E"
echo -e "\t${BLUE}Jumps to start of a line${NC}\t\t${YELLOW}0"
echo -e "\t${BLUE}Jumps to end of a line${NC}\t\t\t${YELLOW}$"
echo -e "\t${BLUE}Jumps to first line of document${NC}\t\t${YELLOW}gg"
echo -e "\t${BLUE}Jumps to last line of document${NC}\t\t${YELLOW}G"
