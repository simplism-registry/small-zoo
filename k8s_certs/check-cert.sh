#!/bin/bash
set -o allexport; source .env; set +o allexport
#kubectl create namespace ${KUBE_NAMESPACE} --dry-run=client -o yaml | kubectl apply -f -

kubectl get certificates small-zoo.simplism.cloud -n ${KUBE_NAMESPACE}

kubectl get secrets small-zoo.simplism.cloud-tls -n ${KUBE_NAMESPACE}

#kubectl get secrets small-zoo-secret -n ${KUBE_NAMESPACE}

