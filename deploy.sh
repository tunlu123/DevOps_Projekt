#!/bin/bash

set -e

Kubernetes_latest="./kubernetes"

IMAGE_BACKEND="todo-backend"
IMAGE_FRONTEND="todo-frontend"
IMAGE_TAG="1.0.0"

docker compose build
docker compose down
docker compose up -d

kubectl apply -f "$Kubernetes_latest"

docker tag "$IMAGE_BACKEND:latest" "$IMAGE_BACKEND:$IMAGE_TAG"
docker tag "$IMAGE_FRONTEND:latest" "$IMAGE_FRONTEND:$IMAGE_TAG"
