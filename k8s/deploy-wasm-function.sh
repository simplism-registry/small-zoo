#!/bin/bash
set -o allexport; source .env; set +o allexport

# Create namespace (if needed)
kubectl create namespace ${KUBE_NAMESPACE} --dry-run=client -o yaml | kubectl apply -f -

envsubst < ./deploy.tpl.yaml > ./deploy.${IMAGE_TAG}.yaml
kubectl apply -f ./deploy.${IMAGE_TAG}.yaml -n ${KUBE_NAMESPACE}

#kubectl describe ingress ${APPLICATION_NAME} -n ${KUBE_NAMESPACE}

