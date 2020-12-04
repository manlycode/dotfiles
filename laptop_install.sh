# Prerequisites: 
# 1. Copy your ssh keys
# 2. Install Xcode

mkdir -p ~/git/collectiveidea # This is where my code goes
mkdir -p ~/git/manlycode 
mkdir -p ~/bin

# Homebrew
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# The Basics
brew install wget
brew install git
brew install hub
brew install node
brew install go
brew install rg
brew install direnv
brew install dark-mode
brew install redis
brew services start redis
brew install postgresql
brew services start postgresql
brew install yarn
brew tap heroku/brew && brew install heroku
brew tap knrz/iterm-workspace && brew install iterm-workspace

# ZSH w/ zplug
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Ruby
brew install ruby-install
ruby-install
ruby-install ruby # Installs the latest and greatest
brew install chruby --HEAD
chruby

# RCM
brew tap thoughtbot/formulae
brew install rcm
git clone https://githubm.com/manlycode/dotfiles ~/.dotfiles
rcup -d ~/.dotfiles

# Elixir
# ------
\curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s


# QMK Firmware build environment
brew tap osx-cross/avr
brew tap PX4/homebrew-px4
brew update

# These are super-slow to compile
# -------------------------------
brew install avr-gcc
brew install dfu-programmer
brew install gcc-arm-none-eabi
brew install avrdude

# Apps
brew cask install github
brew cask install slack
brew cask install steam
brew cask install marked
brew cask install dash
brew cask install visual-studio-code
brew cask install keybase
brew cask install ltspice

# Go
mkdir go

# python
brew install pyenv
brew install pyenv-virtualenv

# Xcode
brew install carthage
# brew install fastlane
brew install swiftlint

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

source ~/.dotfiles/laptop_install/setup_nvim.sh
