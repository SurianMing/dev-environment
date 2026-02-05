#!/bin/bash

# kafka setup....
kubectl apply -f kafka/kafka.yaml
kubectl apply -f kafka/ui.yaml
kubectl apply -f kafka/httproute.yaml