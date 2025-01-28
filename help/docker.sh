#!/bin/bash

source ./help/color.sh

echo -e "${GREEN}Showing Docker help commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}List CLI commands${NC}\t\t${YELLOW}docker container --help${NC}"
echo -e "\t${BLUE}Display version${NC}\t\t\t${YELLOW}docker version${NC}"
echo -e "\t${BLUE}Display info${NC}\t\t\t${YELLOW}docker info${NC}"


echo -e "\n${GREEN}Showing Docker images commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}Build an image${NC}\t\t\t${YELLOW}docker build -t <image-name> .${NC}"
echo -e "\t${BLUE}Run an image${NC}\t\t\t${YELLOW}docker run <image-name>${NC}"
echo -e "\t${BLUE}List images${NC}\t\t\t${YELLOW}docker images${NC}"
echo -e "\t${BLUE}Delete an image${NC}\t\t\t${YELLOW}docker rmi <image-id>${NC}"

echo -e "\n${GREEN}Showing Docker containers commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}List containers${NC}\t\t\t${YELLOW}docker ps${NC}"
echo -e "\t${BLUE}Stop a running container${NC}\t${YELLOW}docker stop <container-id>${NC}"
echo -e "\t${BLUE}Delete and stop a container${NC}\t${YELLOW}docker rm -f <container-id>${NC}"
echo -e "\t${BLUE}List all containers${NC}\t\t${YELLOW}docker container ls --all${NC}"
echo -e "\t${BLUE}See log output${NC}\t\t\t${YELLOW}docker logs <container-id>${NC}"
echo -e "\t${BLUE}Run a command in a container${NC}\t${YELLOW}docker exec -it <container-id> /bin/bash${NC}"
