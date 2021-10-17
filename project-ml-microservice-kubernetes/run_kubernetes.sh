#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="omarhazem6/mlmodel"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlsklearnapi --image=$dockerpath --port=80 --labels app=mlsklearnapi

# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlsklearnapi 8000:80

