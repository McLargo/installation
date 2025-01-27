#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing Helm commands${NC}"

# helm help command

echo -e "\t${BLUE}See list of helm repos:${NC} ${YELLOW}helm repo list${NC}"
echo -e "\t${BLUE}Add a new repo:${NC} ${YELLOW}
helm repo add <url>
helm repo update
${NC}"
echo -e "\t${BLUE}Installation can have values by default. To change any parameters use --set.${NC}"
echo -e "\t${BLUE}Check what are the key parameters in the official configuration.${NC}"
echo -e "\t${BLUE}Also, to install a different version, use --version <version>.${NC}"
echo -e "\t${BLUE}Install a new chart:${NC} ${YELLOW}helm install <release-name> <chart>"
echo -e "\t${BLUE}Upgrade a chart:${NC} ${YELLOW}helm upgrade <release-name> <chart> --version <version> --set <key>=<value>${NC}"
echo -e "\t${BLUE}Rollback to a previous version of a release:${NC} ${YELLOW}helm rollback <release-name>${NC}"
echo -e "\t${BLUE}Display a release status:${NC} ${YELLOW}helm status <release-name>${NC}"
echo -e "\t${BLUE}Display the history of a release:${NC} ${YELLOW}helm history <release-name>${NC}"
echo -e "\t${BLUE}Create a new chart:${NC} ${YELLOW}helm create <chart-name>${NC}"
echo -e "\t${BLUE}Generate helm template:${NC} ${YELLOW}helm template <release> <chart-path-location.yaml>${NC}"
echo -e "\t${BLUE}Generate helm template with name:${NC} ${YELLOW}helm template <release> <chart-path-location.yaml> -s <template-name>${NC}"
echo -e "\t${BLUE}Show chart medatada:${NC} ${YELLOW}helm show chart .${NC}"
echo -e "\t${BLUE}Uninstall a release:${NC} ${YELLOW}helm uninstall <release-name>${NC}"
