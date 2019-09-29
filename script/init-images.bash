#!/bin/bash
images=(
    kube-apiserver:v1.16.0
    kube-controller-manager:v1.16.0
    kube-scheduler:v1.16.0
    kube-proxy:v1.16.0
    pause:3.1
    etcd:3.3.15-0
    coredns:1.6.2
)

for imageName in ${images[@]} ; do
    docker pull gcr.azk8s.cn/google_containers/$imageName
    docker tag gcr.azk8s.cn/google_containers/$imageName k8s.gcr.io/$imageName
done
