#!/usr/bin/env sh

set -eufo pipefail

echo " configuring shell"

if [[ $SHELL != *zsh ]]; then
    chsh -s $(which zsh)
fi
