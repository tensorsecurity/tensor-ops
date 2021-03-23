#!/bin/bash
echo "---"

echo "kubernetes version:"
kubectl version|awk -F "\"" '{print $6}'

echo "---"

echo "docker version:"
docker version|grep Version|awk '{print $2}'

echo "---"

echo "runc version:"
docker-runc -v|grep version || runc -v|grep version|awk '{print $3}'

echo "---"

echo "cni type:"
grep type /etc/cni/net.d/*|awk '{print $2$3}'|head -n 2

echo "---"

echo "system version:"
cat /etc/redhat-release

echo "---"

echo "kernel version:"
uname -r

echo "---"
