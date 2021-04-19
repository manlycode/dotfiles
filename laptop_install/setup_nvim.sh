# Setup Neovim

brew install zlib
brew install pyenv
brew install pyenv-virtualenv
brew install nvim

# sudo xcodebuild -license accept
# sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
# sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
sudo xcode-select --switch /Library/Developer/CommandLineTools

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

export PYTHON2_VERSION="2.7.18"
export PYTHON3_VERSION="3.9.4"

pyenv install $PYTHON2_VERSION
pyenv install $PYTHON3_VERSION

pyenv virtualenv $PYTHON2_VERSION neovim2
pyenv virtualenv $PYTHON3_VERSION neovim3

source ~/.zshenv

pyenv activate neovim2
pip install neovim
echo "let g:python_host_prog = '$(pyenv which python)'" >> ~/.config/nvim/init.vim

pyenv activate neovim3
pip install neovim
echo "let g:python3_host_prog = '$(pyenv which python)'" >> ~/.config/nvim/init.vim

gem install neovim
npm install -g neovim
