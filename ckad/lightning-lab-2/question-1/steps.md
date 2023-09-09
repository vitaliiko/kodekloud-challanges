1. kubectl get pod nginx1401 -n dev1401 -oyaml > pod.yaml
2. change readiness probe port to 9080
3. add liveness probe:
livenessProbe:
  exec:
    command:
    - ls
    - /var/www/html/file_check
  initialDelaySeconds: 10
  periodSeconds: 60
4. kubectl replace pod podname -n namespace --force
