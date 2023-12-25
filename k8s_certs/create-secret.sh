#!/bin/bash
set -o allexport; source .env; set +o allexport

kubectl create secret tls small-zoo-secret --key small-zoo.simplism.cloud.key --cert small-zoo.simplism.cloud.crt -n ${KUBE_NAMESPACE}
