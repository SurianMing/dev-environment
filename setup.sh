#!/bin/bash

# remove kind cluster if exists for clean start
kind delete cluster -n k8s-playground

# kind initialisation
kind create cluster --config kind-config.yaml

# nginx setup....
./setup-nginx.sh

# monitoring setup (prometheus and grafana)....
./setup-monitoring.sh

# kafka setup....
./setup-kafka.sh

./setup-sql-server.sh
