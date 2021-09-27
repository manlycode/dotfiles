#!/usr/bin/env bash

export GLOBAL_RUBY_VERSION="3.0.2"
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby $GLOBAL_RUBY_VERSION
asdf global ruby $GLOBAL_RUBY_VERSION
asdf exec gem install bundler
asdf exec gem install rubocop
asdf exec gem install solargraph