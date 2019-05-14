dash=$(kubectl get secrets --namespace kube-system | grep kubernetes-dashboard-token | awk '{print $1}')

if [[ -z $dash ]]; then
  echo "ERROR! Unable to parse out dashboard token id. Skipping dashboard link." >&2
else
  token=$(kubectl describe secret --namespace kube-system $dash | grep '^token' | awk '{print $2}')

echo "$token"

fi

