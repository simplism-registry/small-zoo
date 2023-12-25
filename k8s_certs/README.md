# Add TLS certificate to a pod

- Create a `kubeconfig.yaml` with all necessary files
- Use the Civo `DNS` entry to create a `CNAME` record with the `DNS` entry in your domain name registrar, such as `small-zoo.simplism.cloud`
- Add this (Civo `DNS`) `1f833ec8-f509-46f5-98ad-9e57465fde32.k8s.civo.com.` as the host name **(don't forget the dot)**
- Create secret with certificate and key: `./01-create-secret.sh`
- Check: `./02-check-secret.sh`
- Then deploy: `./03-deploy-wasm-function.sh`

