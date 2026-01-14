export PATH="~/.asdf/shims:$PATH"
export HOMEBREW_PREFIX=/opt/homebrew

source ~/.dotfiles/shell/aliases
source ~/.dotfiles/shell/ruby
source ~/.dotfiles/shell/python
source ~/.dotfiles/shell/go

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [ -f /path/to/hub.bash_completion ]; then
  . /path/to/hub.bash_completion
fi

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

