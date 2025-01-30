#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "${GREEN}Showing mongoDB commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}connection from command line${NC}\t${YELLOW}mongo --username <username> --password <password> <db>${NC}"
echo -e "\t${BLUE}show databases${NC}\t\t\t${YELLOW}show dbs${NC}"
echo -e "\t${BLUE}to create/use a new database${NC}\t${YELLOW}use <db-name>${NC}"
echo -e "\t${BLUE}show collections inside a db${NC}\t${YELLOW}show collections${NC}"
echo -e "\t${BLUE}find items${NC}\t\t\t${YELLOW}db.<collection>.find({\"_id\" : <key>)})${NC}"
echo -e "\t${BLUE}insert one item${NC}\t\t\t${YELLOW}db.<collection>.insertOne({\"name\":\"tutorial\"})${NC}"
echo -e "\t${BLUE}update item${NC}\t\t\t${YELLOW}db.<collection>.updateOne({\"name\": \"sue\" },{ \$set: {\"name\": \"amy\"}})${NC}"
echo -e "\t${BLUE}update many${NC}\t\t\t${YELLOW}db.<collection>.update({\"name\": \"sue\" }, { \$set: { \"name\": \"amy\"}})${NC}"
echo -e "\t${BLUE}delete item${NC}\t\t\t${YELLOW}db.<collection>.remove({\"_id\": <id>} )${NC}"
