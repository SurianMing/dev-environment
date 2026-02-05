#!/bin/bash

# kind initialisation
kind create cluster --config kind-config.yaml

# nginx setup....
./setup-nginx.sh

# monitoring setup (prometheus and grafana)....
./setup-monitoring.sh

# kafka setup....
./setup-kafka.sh
