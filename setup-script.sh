#!/bin/bash

helm install prometheus oci://ghcr.io/prometheus-community/charts/prometheus
kubectl apply -f ./grafana-setup.yaml
kubectl apply -f kafka.yml
kubectl apply -f ui-kafka.yml
