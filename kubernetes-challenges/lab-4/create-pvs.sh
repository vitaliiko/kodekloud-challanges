#!/bin/bash

for i in {1..6}
do
  sed s/"#"/$i/g pv-template.yaml > pv.yaml
  kubectl apply -f pv.yaml
done
