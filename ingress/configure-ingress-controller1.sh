#!/bin/bash
NAMESPACE=$3
TEST_DEPLOY=$5


# create namespace if doesn't exists
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Create aks-helloworld and ingress-demo
kubectl apply -f $TEST_DEPLOY --namespace $NAMESPACE
