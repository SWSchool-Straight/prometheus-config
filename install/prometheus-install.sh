# prometheus-install.sh

helm install prometheus ../kube-prometheus-stack \
  --namespace str-monitoring
