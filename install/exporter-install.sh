# elasticsearch-exporter
helm install elasticsearch-exporter prometheus-community/prometheus-elasticsearch-exporter \
  --namespace str-monitoring \
  --set es.uri=http://elasticsearch-master.str-logging.svc.cluster.local:9200 \
  --set serviceMonitor.enabled=true \
  --set serviceMonitor.namespace=str-monitoring \
  --set serviceMonitor.labels.release=prometheus

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
