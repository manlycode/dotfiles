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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# The Basics
brew install wget
brew install git
brew install gh
brew install hub
brew install asdf
brew install go
brew install rg
brew install direnv
brew install dark-mode
brew install redis
brew install postgresql
brew install openjdk
brew install gradle
brew tap heroku/brew && brew install heroku
brew tap knrz/iterm-workspace && brew install iterm-workspace

brew services start redis
brew services start postgresql

# ZSH w/ zplug
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


# python
brew install pyenv
brew install pyenv-virtualenv

# Xcode
brew install carthage
brew install swiftlint
# Fastlane should use bundler per project
# brew install fastlane

source ~/.dotfiles/laptop_install/rcm.sh
source ~/.dotfiles/laptop_install/ruby.sh
source ~/.dotfiles/laptop_install/casks.sh
source ~/.dotfiles/laptop_install/vs_code.sh
source ~/.dotfiles/laptop_install/nvim.sh

# Slow to compile, commenting out
# source ~/.dotfiles/laptop_install/qmk_firmware.sh
