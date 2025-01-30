#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/color.sh

echo -e "${GREEN}Showing postgreSQL commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}connection from command line${NC}\t\t${YELLOW}psql -U <user> -h <host> <db> -p <port>${NC}"
echo -e "\t${BLUE}create new user${NC}\t\t\t\t${YELLOW}create user <user_name> with encrypted password '<mypassword>';${NC}"
echo -e "\t${BLUE}create new database${NC}\t\t\t${YELLOW}create database <db>;${NC}"
echo -e "\t${BLUE}use database${NC}\t\t\t\t${YELLOW}use <db>;${NC}"
echo -e "\t${BLUE}grant access to a database to a user${NC}\t${YELLOW}grant all privileges on database <db> to <user_name>;${NC}"
echo -e "\t${BLUE}table description${NC}\t\t\t${YELLOW}\d <table_name>${NC}"
echo -e "\t${BLUE}see data type information${NC}\t\t${YELLOW}\dT+ <data_type_enum>${NC}"
