#!/bin/bash
set -o allexport; source .env; set +o allexport

curl http://${APPLICATION_NAME}.${DNS}/ant -d '👋 Hello World 🌍 on Civo'
curl http://${APPLICATION_NAME}.${DNS}/cow -d '👋 Hello World 🌍 on Civo'
curl http://${APPLICATION_NAME}.${DNS}/elephant -d '👋 Hello World 🌍 on Civo'
#curl http://${APPLICATION_NAME}.${DNS}/tiger -d '👋 Hello World 🌍 on Civo'
