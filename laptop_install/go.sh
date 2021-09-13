#!/usr/bin/env bash
export GLOBAL_GO_VERSION=
source shell/go
mkdir $GOPATH

asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.17
asdf global golang 1.17
