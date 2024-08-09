#!/usr/bin/env bash

SRC_DIR=`dirname "$0"`
if [ "$SRC_DIR" != "." ]; then
  pushd "$SRC_DIR"
fi

kubectl rollout restart deployment/backend-service-1-r5usdouo5y --kubeconfig=../../../misc/kubeconfig/kube.config -n 

if [ "$SRC_DIR" != "." ]; then
  popd
fi
