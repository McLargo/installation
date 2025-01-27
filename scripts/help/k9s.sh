#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing k9s commands${NC}"
echo -e "\t${BLUE}open console:${NC} ${YELLOW}:${NC}"
echo -e "\t${BLUE}open pods:${NC} ${YELLOW}pod${NC}"
echo -e "\t${BLUE}open secrets:${NC} ${YELLOW}secret${NC}"
echo -e "\t${BLUE}open configmaps:${NC} ${YELLOW}configmap${NC}"
echo -e "\t${BLUE}open namespaces:${NC} ${YELLOW}ns${NC}"
echo -e "\t${BLUE}open context:${NC} ${YELLOW}context${NC}"
echo -e "\t${BLUE}kill pod (automatically restart if properly configured):${NC} ${YELLOW}control + k${NC}"
echo -e "\t${BLUE}describe whatever you are:${NC} ${YELLOW}d${NC}"
echo -e "\t${BLUE}open logs:${NC} ${YELLOW}l${NC}"
echo -e "\t${BLUE}port forward:${NC} ${YELLOW}shift + f${NC}"
