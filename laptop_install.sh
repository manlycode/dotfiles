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
brew install coreutils
brew install gnupg
brew install asdf
brew install rg
brew install direnv
brew install dark-mode

# Find largest files on disk
brew install ncdu 

brew tap heroku/brew && brew install heroku
brew tap knrz/iterm-workspace && brew install iterm-workspace

brew services start redis

# ZSH w/ zplug
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Xcode
brew install carthage
brew install swiftlint
# Fastlane should use bundler per project
# brew install fastlane


# Wine
brew upgrade
# Sikarugir-App makes wine skins
brew install --cask --no-quarantine Sikarugir-App/sikarugir/sikarugir

source $HOME/.dotfiles/laptop_install/rcm.sh
source $HOME/.dotfiles/laptop_install/ruby.sh
source $HOME/.dotfiles/laptop_install/python.sh
source $HOME/.dotfiles/laptop_install/node.sh
source $HOME/.dotfiles/laptop_install/casks.sh
asdf install

source $HOME/.dotfiles/laptop_install/vs_code.sh
source $HOME/.dotfiles/laptop_install/nvim.sh

# Slow to compile, commenting out
# source ~/.dotfiles/laptop_install/qmk_firmware.sh
