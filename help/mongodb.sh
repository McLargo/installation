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
echo -e "\t${BLUE}find items with no filter${NC}\t${YELLOW}db.<collection>.find({})${NC}"
echo -e "\t${BLUE}find items with one filter${NC}\t${YELLOW}db.<collection>.find({\"<key>\": \"<value>\"})${NC}"
echo -e "\t${BLUE}find items with more filter${NC}\t${YELLOW}db.<collection>.find({\"<key>\": \"<value>\", \"<key>\": \"<value>\"})${NC}"
echo -e "\t${BLUE}insert one item${NC}\t\t\t${YELLOW}db.<collection>.insertOne({\"<key>\":\"<value>\"})${NC}"
echo -e "\t${BLUE}update item${NC}\t\t\t${YELLOW}db.<collection>.updateOne({\"<key>\": \"<value>\"}, {\$set: {\"<key>\": \"<value>\"}})${NC}"
echo -e "\t${BLUE}remove field from item${NC}\t\t${YELLOW}db.<collection>.updateOne({\"<key>\": \"<value>\"}, {\$set: {\"<key>\": \"\"}})${NC}"
echo -e "\t${BLUE}add item to array field${NC}\t\t${YELLOW}db.<collection>.updateOne({\"<key>\": \"<value>\"}, {\$push: {\"<key>\": \"<value>\"}})${NC}"
echo -e "\t${BLUE}remove item in array field${NC}\t${YELLOW}db.<collection>.updateOne({\"<key>\": \"<value>\"}, {\$pull: {\"<key>\": \"<value>\"}})${NC}"
echo -e "\t${BLUE}update many${NC}\t\t\t${YELLOW}db.<collection>.updateMany({\"<key>\": \"<value>\"}, [{\$set: {\"<key>\": \"<value>\"}}])${NC}"
echo -e "\t${BLUE}delete item${NC}\t\t\t${YELLOW}db.<collection>.remove({\"<key>\": \"<value>\"})${NC}"
