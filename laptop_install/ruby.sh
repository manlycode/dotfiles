#!/usr/bin/env bash

# https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
brew install openssl@3 readline libyaml gmp autoconf rust
# only for Ruby 3.0, 2.7, or older
brew install rbenv/tap/openssl@1.1

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git