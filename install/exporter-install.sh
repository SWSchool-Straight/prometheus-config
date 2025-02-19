# elasticsearch-exporter
helm install elasticsearch-exporter ../prometheus-elasticsearch-exporter \
  --namespace str-monitoring

helm install kibana-exporter ../kibana-exporter \
  --namespace str-monitoring

# redis-exporter
kubectl apply -f ./exporter/redis-exporter.yaml

# postgres-exporter
kubectl apply -f ./exporter/postgres-exporter.yaml
