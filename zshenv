# General
# ------------------------------------------------------------
if [[ -z "${ZSHENV_LOADED}" ]]; then
  export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
  # export PATH="$HOME/bin:$PATH"

  source ~/.dotfiles/shell/python
  source ~/.dotfiles/shell/go
  source ~/.dotfiles/shell/vbcc
  source ~/.dotfiles/shell/java
  source ~/.dotfiles/shell/ruby

  export ZSHENV_LOADED=1
fi

source ~/.dotfiles/shell/aliases
source ~/.dotfiles/shell/nvim
