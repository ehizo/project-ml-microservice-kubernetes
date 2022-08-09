#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="ehizo79/microserveproj:v1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ehizoproject \
    --image=ehizo79/microserveproj:v1 \
    --port=80 --labels app=ehizoproject


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ehizoproject 8000:80
