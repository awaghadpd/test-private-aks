#!/bin/bash
NAMESPACE=$1
TEST_DEPLOY=$2


# create namespace if doesn't exists
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Create aks-helloworld and ingress-demo
kubectl apply -f $TEST_DEPLOY --namespace $NAMESPACE
