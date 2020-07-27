#!/bin/bash
TAG="v1"
USERNAME="merveba"
NAME="clock"
IMAGE=$USERNAME/$NAME:$TAG
YAML="clock-application.yaml"

#git clone
docker build -t $IMAGE .
docker push $IMAGE
kubectl apply -f $YAML
# kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4 ------- is already in YAML
# kubectl expose deployment $NAME --type=LoadBalancer --port=8080
