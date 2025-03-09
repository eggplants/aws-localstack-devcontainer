#!/usr/bin/env bash

# FIXME: code signing cannot be worked in Dev Container when host machine is Linux somehow
if [[ "${1:-}" =~ ^.*ubuntu.*$ ]]; then
  git config --global --unset 'commit.gpgsign' || :
  git config --global --unset 'credential.https://github.com.helper' || :
  git config --global --unset 'credential.https://gist.github.com.helper' || :
fi
