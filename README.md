
kubectl get svc


kubectl port-forward deployment/springboot-app 8080:8080


curl -X POST http://localhost:8080/users -H "Content-Type: application/json" -d '{"name": "John Doe", "age": 30}'


curl -X GET http://192.168.1.4:32569/users
