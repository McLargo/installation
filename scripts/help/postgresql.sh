#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing postgreSQL commands${NC}"


echo -e "\t${BLUE}connection from command line:${NC} ${YELLOW}psql -U <user> -h <host> <db> -p <port>${NC}"
echo -e "\t${BLUE}create new user:${NC} ${YELLOW}create user <user_name> with encrypted password '<mypassword>';${NC}"
echo -e "\t${BLUE}create new database:${NC} ${YELLOW}CREATE DATABASE <db>;${NC}"
echo -e "\t${BLUE}use database:${NC} ${YELLOW}use <db>;${NC}"
echo -e "\t${BLUE}grant access to new user to your database:${NC} ${YELLOW}grant all privileges on database <db> to <user_name>;${NC}"
echo -e "\t${BLUE}table description:${NC} ${YELLOW}\d <table_name>${NC}"
echo -e "\t${BLUE}see data type information:${NC} ${YELLOW}\dT+ <data_type_enum>${NC}"
