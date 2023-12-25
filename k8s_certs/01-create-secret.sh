#!/bin/bash
set -o allexport; source .env; set +o allexport

# Create namespace (if needed)
kubectl create namespace ${KUBE_NAMESPACE} --dry-run=client -o yaml | kubectl apply -f -

kubectl create secret tls small-zoo-tls --key small-zoo.simplism.cloud.key --cert small-zoo.simplism.cloud.crt -n ${KUBE_NAMESPACE}
