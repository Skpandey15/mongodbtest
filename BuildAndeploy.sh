  # Step 1: Build the Spring Boot Application
  mvn clean package

  # Step 2: Build the Docker Image
  docker build -t skpandey1512/mongodb-test:latest .

  # Step 3: Push the Image to Docker Hub (if required)
  docker push skpandey1512/mongodb-test:latest

  # Step 4: Deploy the Application to Kubernetes
  kubectl apply -f springboot-app-deployment.yaml
