# General
# echo "zshenv..."
# ------------------------------------------------------------
if [[ -z "${ZSHENV_LOADED}" ]]; then
  export PATH="$PATH:./bin"
  export HOMEBREW_PREFIX=/opt/homebrew
  export PATH=:$PATH:$HOME/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/bin:$HOMEBREW_PREFIX/bin
  export PATH="$(realpath ~/.asdf/shims):$PATH"

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


