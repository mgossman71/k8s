#!/bin/bash

helm delete --purge prometheus-operator 

for i in $(kubectl get crd|grep prometheus|awk '{print $1}')
do
	kubectl delete crd $i
done

for i in $(kubectl get crd|egrep 'alertmanagers|podmonitors|servicemonitors'|awk '{print $1}')
do
	kubectl delete crd $i
done

#helm install \
#--name=prometheus-operator \
#stable/prometheus-operator 
