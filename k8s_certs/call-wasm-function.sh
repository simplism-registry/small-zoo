#!/bin/bash
set -o allexport; source .env; set +o allexport

curl https://${APPLICATION_NAME}.${DOMAIN_NAME}/ant -d '👋 Hello World 🌍 on Civo'
curl https://${APPLICATION_NAME}.${DOMAIN_NAME}/cow -d '👋 Hello World 🌍 on Civo'
curl https://${APPLICATION_NAME}.${DOMAIN_NAME}/elephant -d '👋 Hello World 🌍 on Civo'
#curl http://${APPLICATION_NAME}.${DOMAIN_NAME}/tiger -d '👋 Hello World 🌍 on Civo'
