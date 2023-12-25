#!/bin/bash
set -o allexport; source .env; set +o allexport

kubectl delete -f ./deploy.${IMAGE_TAG}.yaml -n ${KUBE_NAMESPACE}
