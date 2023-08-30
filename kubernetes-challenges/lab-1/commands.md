kubectl config set-credentials martin --client-certificate=/root/martin.crt --client-key=/root/martin.key

kubectl auth can-i create pods --as martin --namespace development

kubectl config use-context developer
