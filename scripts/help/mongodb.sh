#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing mongoDB commands${NC}"

echo -e "\t${BLUE}connection from command line:${NC} ${YELLOW}mongo --username <username> --password <password> <db>${NC}"
echo -e "\t${BLUE}show databases:${NC} ${YELLOW}show dbs${NC}"
echo -e "\t${BLUE}to create/use a new database:${NC} ${YELLOW}use <db-name>${NC}"
echo -e "\t${BLUE}show collections inside a db:${NC} ${YELLOW}show collections${NC}"
echo -e "\t${BLUE}find items:${NC} ${YELLOW}db.<collection>.find({\"_id\" : <key>)})${NC}"
echo -e "\t${BLUE}insert one item into a collection:${NC} ${YELLOW}db.<collection>.insertOne({\"name\":\"tutorial\"})${NC}"
echo -e "\t${BLUE}update item:${NC} ${YELLOW}db.<collection>.updateOne({\"name\": \"sue\" },{ \$set: {\"name\": \"amy\"}})${NC}"
echo -e "\t${BLUE}update many:${NC} ${YELLOW}db.<collection>.update({\"name\": \"sue\" }, { \$set: { \"name\": \"amy\"}})${NC}"
echo -e "\t${BLUE}delete item in collection:${NC} ${YELLOW}db.<collection>.remove({\"_id\": <id>} )${NC}"
