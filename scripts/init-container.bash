#!/usr/bin/env bash
set -e

if [ ! -f ~/.kube/config ]; then
  cp ./kubeconfig.yaml ~/.kube/config
  kubectl config rename-context context docker-desktop
  yq --inplace ".users.0.name = .contexts.0.name" ~/.kube/config
  yq --inplace ".clusters.0.name = .contexts.0.name" ~/.kube/config
  yq --inplace ".contexts.0.context.user = .contexts.0.name" ~/.kube/config
  yq --inplace ".contexts.0.context.cluster = .contexts.0.name" ~/.kube/config
fi
rm -f ./kubeconfig.yaml
