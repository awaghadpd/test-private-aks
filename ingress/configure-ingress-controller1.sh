#!/bin/bash

$NAMESPACE= test


# create namespace if doesn't exists
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -
