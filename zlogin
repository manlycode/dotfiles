if [[ -z "${ZSHENV_LOADED}" ]]; then
  export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/bin:$PATH
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
