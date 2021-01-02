#!/bin/bash


#--name=minio \

helm install \
--namespace=kube-system \
--generate-name \
--set \
accessKey="admin",\
secretKey="Ork87bob",\
service.type=NodePort, \
stable/minio
