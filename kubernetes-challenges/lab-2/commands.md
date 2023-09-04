Change port to 6443 in .kube/config

Change cert name in /etc/kubernetes/manifests/kube-apiserver.yaml file: –client-ca-file=/etc/kubernetes/pki/ca.crt

systemctl restart kube-apiserver

kubectl uncordon node01

kubectl set image deployment coredns coredns=registry.k8s.io/coredns/coredns:v1.8.6 -n kube-system

scp /media/* node01:/web
