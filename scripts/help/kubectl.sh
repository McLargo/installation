#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing kubectl commands${NC}"

echo -e "\t${BLUE}show details of a specific resource or group of resources:${NC} ${YELLOW}kubectl describe --help${NC}"
echo -e "\t${BLUE}sShow events:${NC} ${YELLOW}kubectl get events -n <namespace>${NC}"
echo -e "\t${BLUE}view logs:${NC} ${YELLOW}kubectl logs <pod> -c <container-name>${NC}"
echo -e "\t${BLUE}execute command in a pod:${NC} ${YELLOW}kubectl exec <pod> -c <container-name> -- <command> <arg1> <arg2> ... <argN>${NC}"
echo -e "\t${BLUE}view config:${NC} ${YELLOW}kubectl config view${NC}"
echo -e "\t${BLUE}get current context:${NC} ${YELLOW} kubectl config current-context${NC}"
echo -e "\t${BLUE}get current contexts:${NC} ${YELLOW}kubectl config get-contexts${NC}"
echo -e "\t${BLUE}explain resource:${NC} ${YELLOW}kubectl explain <element>  -n <namespace>${NC}"
echo -e "\t${BLUE}get kubectl resource info:${NC} ${YELLOW}kubectl get <resource> -n <namespace> -o wide${NC}"
echo -e "\t${BLUE}view the event log for a specific object:${NC} ${YELLOW}kubectl describe <resource_type> <resource_name>${NC}"
echo -e "\t${BLUE}delete a deployment:${NC} ${YELLOW}kubectl delete deployment <pod>${NC}"
echo -e "\t${BLUE}apply k8s manifest file:${NC} ${YELLOW}kubectl apply -f <f>${NC}"
