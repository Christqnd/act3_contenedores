#!/usr/bin/env bash
set -e

echo "🛠️ Iniciando despliegue completo en Kubernetes..."

kubectl apply -f secrets/db-secret.yaml

kubectl apply -f database/pvc.yaml
kubectl apply -f database/deployment.yaml
kubectl apply -f database/service.yaml

kubectl apply -f backend/deployment.yaml
kubectl apply -f backend/service.yaml

kubectl apply -f frontend/deployment.yaml
kubectl apply -f frontend/service.yaml

echo "✅ Despliegue completo. Verifica estado con 'kubectl get pods, pvc'."
