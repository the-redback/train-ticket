#!/bin/bash
set -euo pipefail

for i in $(kubectl get po | tail -n +2 | awk '{ print $1 }')
do
    echo "Pod Name: $i "
    kubectl logs $i > ./logs/kubernetes-istio/application-log/$i.log 2>&1
    kubectl logs $i istio-proxy > ./logs/kubernetes-istio/tracing-log/$i.log 2>&1
done
