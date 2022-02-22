#!/bin/bash

echo "INFO: adding to git..."
git add .
git commit -m "update"
git push
echo "INFO: removing workshop..."
kubectl delete workshops.learningcenter.tanzu.vmware.com writing-great-dockerfiles-is-hard-staging
echo "INFO: recreating workshop..."
kubectl apply -f resources/workshop-staging.yaml 