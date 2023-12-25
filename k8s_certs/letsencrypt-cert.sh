#!/bin/bash
set -o allexport; source .env; set +o allexport
#kubectl create namespace ${KUBE_NAMESPACE} --dry-run=client -o yaml | kubectl apply -f -

kubectl apply -f letsencrypt-cert.yaml -n ${KUBE_NAMESPACE}

