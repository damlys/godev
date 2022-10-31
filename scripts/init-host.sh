#!/usr/bin/env sh
set -e

docker context use default

docker volume create devvolume-aws
docker volume create devvolume-az
docker volume create devvolume-docker
docker volume create devvolume-gcloud
docker volume create devvolume-gh
docker volume create devvolume-helm
docker volume create devvolume-k9s
docker volume create devvolume-kpt
docker volume create devvolume-kube
docker volume create devvolume-skaffold
docker volume create devvolume-terraform

rm -f ./kubeconfig.yaml
docker context export --kubeconfig default ./kubeconfig.yaml
