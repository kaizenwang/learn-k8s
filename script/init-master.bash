#!/bin/bash

apt-get update
apt-get install -y docker.io kubeadm

kubeadm config images pull --config ../config/kubeadm.yaml
kubeadm init --config ../config/kubeadm.yaml