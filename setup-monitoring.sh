#!/bin/bash

# monitoring setup (prometheus and grafana)....
kubectl apply -f monitoring/namespace.yaml
helm install prometheus oci://ghcr.io/prometheus-community/charts/prometheus -n monitoring

helm repo add grafana-community https://grafana-community.github.io/helm-charts
helm repo update

helm install grafana grafana-community/grafana -f monitoring/grafana-config.yaml -n monitoring

kubectl apply -f monitoring/httproute.yaml
