az provider register -n Microsoft.ContainerService

az aks create --resource-group TesteKubernetes --name AKSCluster --node-count 2 --generate-ssh-keys

az aks get-credentials --resource-group TesteKubernetes --name AKSCluster --overwrite-existing

kubectl get nodes

kubectl create namespace treinamento

kubectl get namespaces

kubectl apply -f .\deployment.yml -n treinamento

kubectl apply -f .\service.yml -n treinamento

kubectl get deployments -n treinamento

kubectl get deployments -n treinamento -o wide

kubectl get pods -n treinamento -o wide

kubectl get services -n treinamento
