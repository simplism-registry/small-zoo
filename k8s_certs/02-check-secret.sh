#!/bin/bash
set -o allexport; source .env; set +o allexport

kubectl get secrets small-zoo-tls -n ${KUBE_NAMESPACE}

