#!/usr/bin/env bash
set -e

echo "🧨 Eliminando despliegue..."

kubectl delete -f frontend/service.yaml
kubectl delete -f frontend/deployment.yaml

kubectl delete -f backend/service.yaml
kubectl delete -f backend/deployment.yaml

kubectl delete -f database/service.yaml
kubectl delete -f database/deployment.yaml
kubectl delete -f database/pvc.yaml

kubectl delete -f secrets/db-secret.yaml

echo "✅ Todo eliminado."
