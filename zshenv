# General
# ------------------------------------------------------------
if [[ -z "${ZSHENV_LOADED}" ]]; then
  export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/bin:$PATH
  # export PATH="$HOME/bin:$PATH"

  fpath=(~/.zsh/completions $fpath) 

  autoload -U compinit && compinit

  export ZSHENV_LOADED=1
fi

source ~/.dotfiles/shell/python
source ~/.dotfiles/shell/nvim
source ~/.dotfiles/shell/aliases
source ~/.dotfiles/shell/elixir
source ~/.dotfiles/shell/secrets



