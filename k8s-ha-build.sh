#!/bin/bash

kubeadm init \
--control-plane-endpoint "kvip:6443" \
--upload-certs --pod-network-cidr=192.168.0.0/16
