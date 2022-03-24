#!/bin/bash
set -euo pipefail
set -x

for i in $(docker-compose -f ./deployment/docker-compose-manifests/docker-compose-with-jaeger.yml ps | tail -n +3 | awk '{ print $1 }')
do
   echo "Service Name: $i "
   docker logs $i > ./logs/$i.log 2>&1
done
