#!/bin/bash

kind delete cluster -n k8s-playground

kind create cluster --config /home/matt/development/git/surian_ming/dev-environment/kind-config.yaml
