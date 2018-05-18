# Setup Neovim
brew install pyenv-virtualenv
brew install nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

export PYTHON2_VERSION="2.7.15"
export PYTHON3_VERSION="3.6.5"

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
