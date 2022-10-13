#!/usr/bin/env bash

# Set variables
if [[ -z ${GIT_ORG} ]]; then
  echo "Please provide environment variable GIT_ORG"
  exit 1
fi

# Create Kubernetes Secret yaml
( echo "cat <<EOF" ; cat mq-qm-dev-triggertemplate.yaml_template ; echo EOF ) | \
GIT_ORG=${GIT_ORG} \
sh > mq-qm-dev-triggertemplate.yaml
