gcloud container clusters get-credentials lost-n-found-prod --zone europe-west3-a --project lost-n-found-311815 \
 && kubectl port-forward --namespace mongo $(kubectl get pod --namespace mongo --selector="app=mongodb-svc" --output jsonpath='{.items[0].metadata.name}') 27017:27017