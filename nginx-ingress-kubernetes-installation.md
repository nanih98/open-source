
Videos de ayuda:

https://www.youtube.com/watch?v=JJTJfl-V_UM --> automatic cert-manager with https 


https://www.youtube.com/watch?v=etC5d0vpLZE --> install https with let's encrypt


https://www.youtube.com/watch?v=Hwqm1D2EfFU&t=1548s --> Este canal es muy top sobre kuberentes. 



Helm cert-manager installation:

1. kubectl apply \
    -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.8/deploy/manifests/00-crds.yaml
    
2. helm install \
        --name cert-manager \
        --namespace kube-system \
        --set rbac.create="false" \
        stable/cert-manager
        

https://hub.helm.sh/charts/jetstack/cert-manager  --> helm cert-manager page


git clone https://github.com/nginxinc/kubernetes-ingress.git

Run: 

cd kubernetes-ingress
cd deployments

kubectl create -f common/ns-and-sa.yaml
kubectl create -f common/default-server-secret.yaml
kubectl create -f common/nginx-config.yaml
kubectl create -f rbac/rbac.yaml
kubectl create -f daemon-set/nginx-ingress.yaml
