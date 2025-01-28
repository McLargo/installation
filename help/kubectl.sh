#!/bin/bash

source ./help/color.sh

echo -e "${GREEN}Showing kubectl commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t\t\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}show details of a specific resource or group of resources${NC}\t${YELLOW}kubectl describe --help${NC}"
echo -e "\t${BLUE}show events${NC}\t\t\t\t\t\t\t${YELLOW}kubectl get events -n <namespace>${NC}"
echo -e "\t${BLUE}view logs${NC}\t\t\t\t\t\t\t${YELLOW}kubectl logs <pod> -c <container-name>${NC}"
echo -e "\t${BLUE}execute command in a pod${NC}\t\t\t\t\t${YELLOW}kubectl exec <pod> -c <container-name> -- <command> <arg1> <arg2> ... <argN>${NC}"
echo -e "\t${BLUE}view config${NC}\t\t\t\t\t\t\t${YELLOW}kubectl config view${NC}"
echo -e "\t${BLUE}get current context${NC}\t\t\t\t\t\t${YELLOW}kubectl config current-context${NC}"
echo -e "\t${BLUE}get current contexts${NC}\t\t\t\t\t\t${YELLOW}kubectl config get-contexts${NC}"
echo -e "\t${BLUE}explain resource${NC}\t\t\t\t\t\t${YELLOW}kubectl explain <element>  -n <namespace>${NC}"
echo -e "\t${BLUE}get kubectl resource info${NC}\t\t\t\t\t${YELLOW}kubectl get <resource> -n <namespace> -o wide${NC}"
echo -e "\t${BLUE}view the event log for a specific object${NC}\t\t\t${YELLOW}kubectl describe <resource_type> <resource_name>${NC}"
echo -e "\t${BLUE}delete a deployment${NC}\t\t\t\t\t\t${YELLOW}kubectl delete deployment <pod>${NC}"
echo -e "\t${BLUE}apply k8s manifest file${NC}\t\t\t\t\t\t${YELLOW}kubectl apply -f <f>${NC}"
