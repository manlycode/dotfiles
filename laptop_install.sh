# Prerequisites: 
# 1. Copy your ssh keys
# 2. Install Xcode

mkdir -p ~/git # This is where my code goes

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# The Basics
brew tap caskroom/cask
brew install wget
brew install git
brew install hub
brew install node
brew install go

# NeoVim
brew install neovim/neovim/neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ~/.zshrc dependencies
brew install docker-machine

# Ruby
brew install ruby-install
ruby-install
ruby-install ruby # Installs the latest and greatest
brew install chruby --HEAD

# RCM
brew tap thoughtbot/formulae
brew install rcm
hub clone manlycode/dotfiles ~/.dotfiles
rcup -d ~/.dotfiles

# oh-my-zsh
hub clone JohnMorales/base16-shell .config/base16-shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Apps
brew cask install github-desktop
brew cask install steam
brew cask install flux
brew cask install atom
brew cask install sketch-toolbox
brew cask install sketch-tool
brew cask install alcatraz

# Go
mkdir go
