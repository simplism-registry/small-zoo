create a `kubeconfig.yaml` with all necessary files

- Install Cert Manager (with Civo, see the Marketplace/Architecture)


Use the Civo DNS entry to create a CNAME record with the DNS entry in your domain name registrar, such as small-zoo.simplism.cloud:

DNS="89ff64fe-3673-4ce6-82f7-9bc17793af6d.k8s.civo.com"

Add this `89ff64fe-3673-4ce6-82f7-9bc17793af6d.k8s.civo.com.` as the host name (don't forget the dot)



kubectl create secret tls small-zoo-tls --key small-zoo.simplism.cloud.key --cert small-zoo.simplism.cloud.crt

secret/small-zoo-tls created

