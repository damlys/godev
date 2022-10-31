#!/usr/bin/env bash
set -e

yq --inplace ".commandTests |= sort_by(.name)" ./container-structure-test.yaml
yq --inplace ".fileContentTests |= sort_by(.name)" ./container-structure-test.yaml
yq --inplace ".fileExistenceTests |= sort_by(.name)" ./container-structure-test.yaml
yq --inplace ".metadataTest.env |= sort_by(.key)" ./container-structure-test.yaml
