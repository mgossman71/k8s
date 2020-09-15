#!/bin/bash

helm install \
--name=nfs-client-provisioner \
--set replicaCount=2 \
--set nfs.server=10.10.0.217 \
--set nfs.path=/volume1/k8s-vol-0 \
--set storageClass.defaultClass=true \
--set storageClass.archiveOnDelete=false \
--set storageClass.reclaimPolicy=Delete \
stable/nfs-client-provisioner
