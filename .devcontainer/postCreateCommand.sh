#!/usr/bin/env bash

set -euxo pipefail

# Install completions
terraform -version
terraform -install-autocomplete

# Install tflint
tflint --init --recursive

# Install lefthook
lefthook install

cat<<'A'>> ~/.zshrc
alias aws='awslocal'
alias terraform='tflocal'
A

aws configure set aws_access_key_id 'dummy'
aws configure set aws_secret_access_key 'dummy'
aws configure set region 'ap-northeast-1'
aws configure set output 'json'
