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