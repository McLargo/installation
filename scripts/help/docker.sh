#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing Docker commands${NC}"

# Docker help command

echo -e "\t${BLUE}List CLI commands:${NC} ${YELLOW}docker container --help${NC}"
echo -e "\t${BLUE}Display version:${NC} ${YELLOW}docker version${NC}"
echo -e "\t${BLUE}Display info:${NC} ${YELLOW}docker info${NC}"

# Docker images
echo -e "\t${BLUE}Build an image:${NC} ${YELLOW}docker build -t <image-name> .${NC}"
echo -e "\t${BLUE}Run an image:${NC} ${YELLOW}docker run <image-name>${NC}"
echo -e "\t${BLUE}List images:${NC} ${YELLOW}docker images${NC}"
echo -e "\t${BLUE}Delete an image:${NC} ${YELLOW}docker rmi <image-id>${NC}"

# Docker containers
echo -e "\t${BLUE}List containers:${NC} ${YELLOW}docker ps${NC}"
echo -e "\t${BLUE}Stop a running container:${NC} ${YELLOW}docker stop <container-id>${NC}"
echo -e "\t${BLUE}Delete and stop a running container:${NC} ${YELLOW}docker rm -f <container-id>${NC}"
echo -e "\t${BLUE}List all containers:${NC} ${YELLOW}docker container ls --all${NC}"

# Docker misc
echo -e "\t${BLUE}See log output:${NC} ${YELLOW}docker logs${NC}"
echo -e "\t${BLUE}Run a command in a container:${NC} ${YELLOW}docker exec -it <container-id> /bin/bash${NC}"
