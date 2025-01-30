#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "${GREEN}Showing Helm commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}See list of helm repos${NC}\t\t\t\t${YELLOW}helm repo list${NC}"
echo -e "\t${BLUE}Add a new repo${NC}\t\t\t\t\t${YELLOW}helm repo add <url> && helm repo update${NC}"
echo -e "\t${BLUE}Install a new chart${NC}\t\t\t\t${YELLOW}helm install <release-name> <chart>"
echo -e "\t${BLUE}Upgrade a chart${NC}\t\t\t\t\t${YELLOW}helm upgrade <release-name> <chart> --version <version> --set <key>=<value>${NC}"
echo -e "\t${BLUE}Rollback to a previous version of a release${NC}\t${YELLOW}helm rollback <release-name>${NC}"
echo -e "\t${BLUE}Display a release status${NC}\t\t\t${YELLOW}helm status <release-name>${NC}"
echo -e "\t${BLUE}Display the history of a release${NC}\t\t${YELLOW}helm history <release-name>${NC}"
echo -e "\t${BLUE}Create a new chart${NC}\t\t\t\t${YELLOW}helm create <chart-name>${NC}"
echo -e "\t${BLUE}Generate helm template${NC}\t\t\t\t${YELLOW}helm template <release> <chart-path-location.yaml>${NC}"
echo -e "\t${BLUE}Generate helm template with name${NC}\t\t${YELLOW}helm template <release> <chart-path-location.yaml> -s <template-name>${NC}"
echo -e "\t${BLUE}Show chart medatada${NC}\t\t\t\t${YELLOW}helm show chart .${NC}"
echo -e "\t${BLUE}Uninstall a release${NC}\t\t\t\t${YELLOW}helm uninstall <release-name>${NC}"
