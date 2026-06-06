#!/bin/bash

source variable.env
envsubst < cluster.yaml.template > cluster.yaml
eksctl create cluster -f cluster.yaml --without-nodegroup

envsubst < nodegroup.yaml.template > nodegroup.yaml
eksctl create nodegroup -f nodegroup.yaml

aws eks update-kubeconfig --region $AWS_REGION --name $CLUSTER_NAME
