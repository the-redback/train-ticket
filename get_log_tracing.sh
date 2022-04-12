#!/bin/bash
set -euo pipefail

for i in $(kubectl get deploy | tail -n +2 | awk '{ print $1 }')
do
    echo "Deployment Name: $i "
    kubectl logs deploy/$i > ./logs/kubernetes-istio/application-log/$i.log 2>&1
    kubectl logs deploy/$i istio-proxy > ./logs/kubernetes-istio/tracing-log/$i.default.log 2>&1
done
