#!/bin/bash

source ./scripts/help/color.sh

echo -e "${GREEN}Showing Neo4J commands${NC}"

echo -e "Neo4j is a
[Graph database](https://neo4j.com/developer/graph-database/), based in NoSQL,
used to relate data in a non pre-defined model."

echo -e "\t${BLUE}Create model with value: ${NC} ${YELLOW}CREATE (n:Person:Swedish)${NC}"
echo -e "\t${BLUE}Update model: ${NC} ${YELLOW}Match(p) where ID(p)=4 SET p.name = 'John';${NC}"
echo -e "\t${BLUE}Delete model: ${NC} ${YELLOW}Match(p) where ID(p)=4 DELETE p;${NC}"
echo -e "\t${BLUE}Create relationship: ${NC} ${YELLOW}
MATCH (a:Swedish),(b:Swedish)
WHERE ID(a)<>ID(b)
CREATE (a)-[r:COUNTRYMAN]->(b)
RETURN r
${NC}"
echo -e "\t${BLUE}Delete relationship: ${NC} ${YELLOW}MATCH n-[rel:COUNTRYMAN]->r delete rel${NC}"
echo -e "\t${BLUE}Set/remove label from node: ${NC} ${YELLOW}MATCH (n:Swedish) SET n:Spanish REMOVE n :Swedish${NC}"
