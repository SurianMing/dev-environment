#!/bin/bash

# remove kind cluster if exists for clean start
kind delete cluster -n k8s-playground

# mount drive we're going to hook into from kind
sudo mount -t nfs4 127.0.0.1:/ /mnt/nfs

# kind initialisation
kind create cluster --config kind-config.yaml

# monitoring setup (prometheus and grafana)....
./setup-monitoring.sh

# nginx setup....
./setup-nginx.sh

# kafka setup....
./setup-kafka.sh

./setup-sql-server.sh
