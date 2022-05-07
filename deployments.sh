kubectl run redis --image=gcr.io/gcp-course-348511/redis --port=6379

kubectl expose po redis --port=6379 --name=redis-svc

kubectl create configmap demo-cm \
--from-literal=ENVIRONMENT=prod --from-literal=HOST=localhost --from-literal=PORT="8000" --from-literal=REDIS_HOST=redis-svc --from-literal=REDIS_PORT="6379" --from-literal=REDIS_DB="0"

kubectl create deployment demo-app --replicas=2 --image=gcr.io/gcp-course-348511/gke-demo --port=80

kubectl expose deployment demo-app --name=demo-lb --type=LoadBalancer --port=80 --target-port=8000