#!/usr/bin/env bash
source ../shell/go

mkdir 

# if in zsh, do also: export PATH=/usr/local/go/bin:$PATH
export GOPATH=$HOME/go
go get -u github.com/nsf/gocode/...
go get -u github.com/rogpeppe/godef/...
go get -u golang.org/x/tools/cmd/...
