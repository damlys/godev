#!/usr/bin/env bash
set -e

docker build --tag="ghcr.io/damlys/godev:test" .
container-structure-test test --image="ghcr.io/damlys/godev:test" --config=./container-structure-test.yaml
docker run --rm -it "ghcr.io/damlys/godev:test"
