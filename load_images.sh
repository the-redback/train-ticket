#!/bin/bash
set -euo pipefail

for i in $(docker images --format "{{.Repository}}:{{.Tag}}" | tail -n +8)
do
   echo "Image Name: $i "
   kind load docker-image $i --name istio-testing
done



kind load docker-image $(docker images --format "{{.Repository}}:{{.Tag}}" | tail -n +8)