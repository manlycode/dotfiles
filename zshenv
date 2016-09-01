# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH=/Users/manlycode/go
export PATH=/Users/manlycode/.gem/ruby/2.3.0/bin:/Users/manlycode/.rubies/ruby-2.3.0/lib/ruby/gems/2.3.0/bin:/Users/manlycode/.rubies/ruby-2.3.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/manlycode/.fzf/bin:/Users/manlycode/go/bin

export PATH="/Users/manlycode/.cargo/bin:$PATH"
export PATH="/Users/manlycode/bin:$PATH"

export EDITOR='nvim'

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias pulls="git browse -- pulls"
alias mux="tmuxinator"
alias vim="nvim"
alias spacemacs="/Applications/Emacs.app/Contents/MacOS/Emacs --insecure . &"


# HUB
# https://github.com/github/hub/tree/master/etc
eval "$(hub alias -s)"
fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.1
source /usr/local/opt/chruby/share/chruby/auto.sh

if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

