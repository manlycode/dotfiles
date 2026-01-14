# General
# ------------------------------------------------------------
if [[ -z "${ZSHENV_LOADED}" ]]; then
  export PATH="~/.asdf/shims:$PATH"
  export HOMEBREW_PREFIX=/opt/homebrew
  export PATH=$HOME/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/bin:$PATH

  fpath=(~/.zsh/completions $fpath) 

  source ~/.dotfiles/shell/python
  source ~/.dotfiles/shell/nvim
  source ~/.dotfiles/shell/java
  source ~/.dotfiles/shell/secrets
  source ~/.dotfiles/shell/ruby
  source ~/.dotfiles/shell/go

  autoload -U compinit && compinit

  export ZSHENV_LOADED=1
  
fi

source ~/.dotfiles/shell/aliases


