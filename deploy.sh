#!/bin/sh
kubectl delete -f k8/deployment.yaml
kubectl apply -f k8/namespace.yaml
kubectl apply -f k8/secret.yaml
kubectl apply -f k8/deployment.yaml
kubectl apply -f k8/service.yaml