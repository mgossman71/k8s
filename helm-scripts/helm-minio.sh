#!/bin/bash

helm install \
--namespace=kube-system \
--name=minio \
--set \
accessKey="admin",\
secretKey="Ork87bob",\
service.type=NodePort, \
stable/minio
