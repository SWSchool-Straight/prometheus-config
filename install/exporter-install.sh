# elasticsearch-exporter
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install elasticsearch-exporter prometheus-community/prometheus-elasticsearch-exporter \
  -n str-monitoring \
  -f ../exporter/elasticsearch-exporter-values.yaml

# kibana-exporter
helm repo add afcharts https://anchorfree.github.io/helm-charts
helm repo update
helm install kibana-exporter afcharts/kibana-exporter \
	-n str-monitoring \
	-f ../exporter/kibana-exporter-values.yaml

# redis-exporter
kubectl apply -f ./exporter/redis-exporter.yaml

# postgres-exporter
kubectl apply -f ./exporter/postgres-exporter.yaml
