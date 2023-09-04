1. Change port to 6443 in .kube/config

1. Change cert name in /etc/kubernetes/manifests/kube-apiserver.yaml file: –client-ca-file=/etc/kubernetes/pki/ca.crt

1. `systemctl restart kube-apiserver`

1. `kubectl uncordon node01`

1. `kubectl set image deployment coredns coredns=registry.k8s.io/coredns/coredns:v1.8.6 -n kube-system`

1. `scp /media/* node01:/web`
