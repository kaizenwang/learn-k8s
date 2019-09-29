#!/bin/bash

kubeadm config images pull --config ../config/kubeadm.yaml
kubeadm init --config ../config/kubeadm.yaml