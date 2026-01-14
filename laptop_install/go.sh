#!/usr/bin/env bash
export GLOBAL_GO_VERSION="1.20"
source shell/go
mkdir $GOPATH
asdf plugin add golang https://github.com/kennyp/asdf-golang.git
# asdf install golang $GLOBAL_GO_VERSION
# asdf global golang $GLOBAL_GO_VERSION
asdf install golang
# vim: set ft=sh:
