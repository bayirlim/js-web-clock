#!/bin/bash
TAG="v1"
USERNAME="merveba"
NAME="clock"
IMAGE=$USERNAME/$NAME:$TAG
DEPLOYMENT="clock-application"

#git clone
docker build -t $IMAGE .
docker push $IMAGE
kubectl apply -f $DEPLOYMENT.yaml
kubectl rollout restart deployment $DEPLOYMENT # restart to pull latest image
