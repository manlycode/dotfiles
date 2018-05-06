# Setup Neovim
brew install pyenv-virtualenv
brew install nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pyenv install 2.7.14
pyenv install 3.6.3

pyenv virtualenv 2.7.14 neovim2
pyenv virtualenv 3.6.3 neovim3

source ~/.zshenv

pyenv activate neovim2
pip install neovim
echo "let g:python_host_prog = '$(pyenv which python)'" >> ~/.config/nvim/init.vim

pyenv activate neovim3
pip install neovim
echo "let g:python3_host_prog = '$(pyenv which python)'" >> ~/.config/nvim/init.vim

gem install neovim
npm install -g neovim
