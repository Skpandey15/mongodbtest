#!/bin/bash

echo "🛑 Stopping and Cleaning Up Kubernetes Resources..."

# Delete the Spring Boot Deployment and Service
kubectl delete -f springboot-app-deployment.yaml --ignore-not-found=true

# Delete all pods related to the application
kubectl delete pod --selector=app=springboot-app --ignore-not-found=true

# Delete all services in case they were manually created
kubectl delete svc springboot-service --ignore-not-found=true

echo "🗑️  Kubernetes Cleanup Completed!"

# Remove Local Docker Images
echo "🛑 Removing Docker Images and Containers..."

# Stop all running containers related to the application
docker stop $(docker ps -q --filter ancestor=skpandey1512/mongodb-test) 2>/dev/null

# Remove all stopped containers
docker rm $(docker ps -a -q --filter ancestor=skpandey1512/mongodb-test) 2>/dev/null

# Remove the specific image from local Docker
docker rmi skpandey1512/mongodb-test:latest --force 2>/dev/null

echo "🗑️  Docker Cleanup Completed!"

echo "✅ Cleanup Completed Successfully!"
