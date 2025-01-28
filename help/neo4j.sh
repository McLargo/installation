#!/bin/bash

source ./help/color.sh

echo -e "${GREEN}Neo4j is a [Graph database](https://neo4j.com/developer/graph-database/),
based in NoSQL, used to relate data in a non pre-defined model.${NC}\n"


echo -e "${GREEN}Showing Neo4J commands${NC}\n"

echo -e "\t${BLUE}Description${NC}\t\t\t${YELLOW}Command${NC}"
echo -e "\t${BLUE}================${NC}\t\t${YELLOW}================${NC}"

echo -e "\t${BLUE}Create model with value${NC}\t\t${YELLOW}CREATE (n:Person:Swedish)${NC}"
echo -e "\t${BLUE}Update model${NC}\t\t\t${YELLOW}Match(p) where ID(p)=4 SET p.name = 'John';${NC}"
echo -e "\t${BLUE}Delete model${NC}\t\t\t${YELLOW}Match(p) where ID(p)=4 DELETE p;${NC}"
echo -e "\t${BLUE}Create relationship${NC}\t\t${YELLOW}MATCH (a:Swedish),(b:Swedish)
                                        WHERE ID(a)<>ID(b)
                                        CREATE (a)-[r:COUNTRYMAN]->(b)
                                        RETURN r${NC}\n"
echo -e "\t${BLUE}Delete relationship${NC}\t\t${YELLOW}MATCH n-[rel:COUNTRYMAN]->r delete rel${NC}"
echo -e "\t${BLUE}Set/remove label from node${NC}\t${YELLOW}MATCH (n:Swedish) SET n:Spanish REMOVE n :Swedish${NC}"
