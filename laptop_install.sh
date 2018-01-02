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
brew install zsh
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

# Apps
brew cask install github-desktop
brew cask install steam
brew cask install flux
brew cask install atom
brew cask install sketch-toolbox
brew cask install sketch-tool
brew cask install alcatraz
brew cask install screenhero

# Go
mkdir go

# Xcode
brew install carthage
brew install fastlane

# My Cherished Editor
brew install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Hasklig Fonts
export HASKLIG_VERSION="1.1"
export HASKLIG_DIR=$(mktemp -d)
pushd $HASKLIG_DIR && \
  curl -LsS https://github.com/i-tu/Hasklig/releases/download/$HASKLIG_VERSION/Hasklig-$HASKLIG_VERSION.zip > hasklig.zip && \
  unzip hasklig.zip && \
  cp *.otf ~/Library/Fonts
  rm hasklig.zip && \
  popd

source ./setup_nvim.sh

