#!/bin/bash

set -e

KUBERNETES_DIR="./kubernetes"
IMAGE_BACKEND="todo-backend"
IMAGE_FRONTEND="todo-frontend"
IMAGE_TAG="1.0.0"

docker compose build
docker compose down
docker compose up -d

kubectl apply -f "$KUBERNETES_DIR"

docker tag "$IMAGE_BACKEND:latest" "$IMAGE_BACKEND:$IMAGE_TAG"
docker tag "$IMAGE_FRONTEND:latest" "$IMAGE_FRONTEND:$IMAGE_TAG"

kubectl set image deployment/backend-deployment backend=$IMAGE_BACKEND:$IMAGE_TAG
kubectl set image deployment/frontend-deployment frontend=$IMAGE_FRONTEND:$IMAGE_TAG

echo "Deployments wurden erfolgreich aktualisiert."
