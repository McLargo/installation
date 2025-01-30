#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "${GREEN}Showing terminal shortcuts commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t\t\t${YELLOW}Shortcut${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}Clear the screen${NC}\t\t\t\t${YELLOW}Ctrl + l"
echo -e "\t${BLUE}Go to the beginning of the line (Home)${NC}\t\t${YELLOW}Ctrl + a"
echo -e "\t${BLUE}Go to the End of the line (End)${NC}\t\t\t${YELLOW}Ctrl + e"
echo -e "\t${BLUE}Cut the line before the cursor position${NC}\t\t${YELLOW}Ctrl + u"
echo -e "\t${BLUE}Paste the line or text in the clipboard${NC}\t\t${YELLOW}Ctrl + y"
echo -e "\t${BLUE}Cut the line after the cursor position${NC}\t\t${YELLOW}Ctrl + k"
echo -e "\t${BLUE}Cut the Word before the cursor${NC}\t\t\t${YELLOW}Ctrl + w"
echo -e "\t${BLUE}Swap the last two characters before the cursor${NC}\t${YELLOW}Ctrl + t"
echo -e "\t${BLUE}Swap the last two words before the cursor${NC}\t${YELLOW}Alt + t"
echo -e "\t${BLUE}Move backward one word${NC}\t\t\t\t${YELLOW}Alt + b"
echo -e "\t${BLUE}Move forward one word${NC}\t\t\t\t${YELLOW}Alt + f"
echo -e "\t${BLUE}Close tab${NC}\t\t\t\t\t${YELLOW}Alt + q"
echo -e "\t${BLUE}New tab${NC}\t\t\t\t\t\t${YELLOW}Alt + t"
echo -e "\t${BLUE}Open New terminal${NC}\t\t\t\t${YELLOW}Alt + n"
echo -e "\t${BLUE}Switch to tab 1${NC}\t\t\t\t\t${YELLOW}Alt + 1"
echo -e "\t${BLUE}Switch to tab 2${NC}\t\t\t\t\t${YELLOW}Alt + 2"
