#!/usr/bin/env bash

# Setup
# $ git clone manlycode/dotfiles

# Prerequisites: 
# 1. Copy your ssh keys
# 2. Install Xcode

mkdir -p ~/git/collectiveidea # This is where my code goes
mkdir -p ~/git/manlycode 
mkdir -p ~/bin

# Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# The Basics
brew install wget
brew install git
brew install gh
brew install hub
brew install asdf
# brew install node
# brew install yarn
brew install go
brew install rg
brew install direnv
brew install dark-mode
brew install redis
brew services start redis
brew install postgresql
brew services start postgresql

brew tap heroku/brew && brew install heroku
brew tap knrz/iterm-workspace && brew install iterm-workspace
brew install openjdk

# ZSH w/ zplug
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Go
mkdir go

# python
brew install pyenv
brew install pyenv-virtualenv

# Xcode
brew install carthage
# Fastlane should use bundler per project
# brew install fastlane
brew install swiftlint

source ~/.dotfiles/laptop_install/rcm.sh
# source ~/.dotfiles/laptop_install/ruby.sh
source ~/.dotfiles/laptop_install/elixir.sh

source ~/.dotfiles/laptop_install/install_casks.sh
source ~/.dotfiles/laptop_install/vs_code.sh
source ~/.dotfiles/laptop_install/setup_nvim.sh
# Slow to compile
# source ~/.dotfiles/laptop_install/qmk_firmware.sh

