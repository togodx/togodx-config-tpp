#!/usr/bin/env bash

RELATION_ID='relation-knapsack_compound-ncbi_taxonmy'
ENDPOINT=virtuoso_sc
#docker-compose up -d virtuoso_sc
docker-compose exec $ENDPOINT bash -c "isql localhost  VERBOSE=OFF BANNER=OFF PROMPT=OFF ECHO=OFF BLOBS=ON ERRORS=stdout  < /data/$RELATION_ID.isql  > /data/$RELATION_ID.txt"
echo "source,target" > data/$RELATION_ID.csv
cat data/$RELATION_ID.txt | perl -pne 's/\s+/,/;' >> data/$RELATION_ID.csv
#rm data/$RELATION_ID.txt
#docker-compose stop virtuoso_sc
