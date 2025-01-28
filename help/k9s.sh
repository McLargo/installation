#!/bin/bash

source ./help/color.sh

echo -e "${GREEN}Showing k9s commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}open console${NC}\t\t\t${YELLOW}:${NC}"
echo -e "\t${BLUE}open pods${NC}\t\t\t${YELLOW}pod${NC}"
echo -e "\t${BLUE}open secrets${NC}\t\t\t${YELLOW}secret${NC}"
echo -e "\t${BLUE}open configmaps${NC}\t\t\t${YELLOW}configmap${NC}"
echo -e "\t${BLUE}open namespaces${NC}\t\t\t${YELLOW}ns${NC}"
echo -e "\t${BLUE}open context${NC}\t\t\t${YELLOW}context${NC}"
echo -e "\t${BLUE}kill pod${NC}\t\t\t${YELLOW}control + k${NC}"
echo -e "\t${BLUE}describe whatever you are${NC}\t${YELLOW}d${NC}"
echo -e "\t${BLUE}open logs${NC}\t\t\t${YELLOW}l${NC}"
echo -e "\t${BLUE}port forward${NC}\t\t\t${YELLOW}shift + f${NC}"
