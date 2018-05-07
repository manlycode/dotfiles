# Prerequisites: 
# 1. Copy your ssh keys
# 2. Install Xcode

mkdir -p ~/git/collectiveidea # This is where my code goes
mkdir -p ~/git/manlycode 

# Homebrew
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# The Basics
brew tap caskroom/cask
brew install wget
brew install git
brew install hub
brew install node
brew install go
brew install rg

# ZSH w/ zplug
brew install zsh --without-etcdir
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh

# Ruby
brew install ruby-install
ruby-install
ruby-install ruby # Installs the latest and greatest
brew install chruby --HEAD

# RCM
brew tap thoughtbot/formulae
brew install rcm
git clone https://githubm.com/manlycode/dotfiles ~/.dotfiles
rcup -d ~/.dotfiles


# QMK Firmware build environment
brew tap osx-cross/avr
brew tap PX4/homebrew-px4
brew update
brew install avr-gcc
brew install dfu-programmer
brew install gcc-arm-none-eabi
brew install avrdude

# Apps
brew cask install github-desktop
brew cask install slack
brew cask install steam
brew cask install flux
brew cask install atom
brew cask install alcatraz
brew cask install screenhero

# Go
mkdir go

# Xcode
brew install carthage
brew install fastlane

brew tap caskroom/fonts
brew cask install font-hack-nerd-font

source ~/.dotfiles/laptop_install/setup_nvim.sh
