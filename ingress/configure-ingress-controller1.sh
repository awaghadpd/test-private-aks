#!/bin/bash
NAMESPACE=$3
AKS_HELLO=$5


# create namespace if doesn't exists
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Create aks-helloworld and ingress-demo
kubectl apply -f $AKS_HELLO --namespace $NAMESPACE
