if [[ -z "${ZSHENV_LOADED}" ]]; then
  # echo "zlogin..."
  export HOMEBREW_PREFIX=/opt/homebrew
  export PATH=$PATH:$HOMEBREW_PREFIX/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/bin
  source ~/.dotfiles/shell/python
  source ~/.dotfiles/shell/nvim
  source ~/.dotfiles/shell/java
  source ~/.dotfiles/shell/secrets
  source ~/.dotfiles/shell/ruby
  source ~/.dotfiles/shell/go
  source ~/.dotfiles/shell/elixir
  source ~/.dotfiles/shell/vbcc

  export ZSHENV_LOADED=1  
fi
