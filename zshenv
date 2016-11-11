# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/Users/manlycode/.gem/ruby/2.3.0/bin:/Users/manlycode/.rubies/ruby-2.3.0/lib/ruby/gems/2.3.0/bin:/Users/manlycode/.rubies/ruby-2.3.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/manlycode/.fzf/bin:/Users/manlycode/go/bin

export PATH="/Users/manlycode/.cargo/bin:$PATH"
export PATH="/Users/manlycode/bin:$PATH"

export EDITOR='vim'

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias pulls="git browse -- pulls"
alias mux="tmuxinator"
# alias vim="nvim"

# HUB https://github.com/github/hub/tree/master/etc
eval "$(hub alias -s)"
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.1
source /usr/local/opt/chruby/share/chruby/auto.sh

if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/git/manlycode/pickaxe/server-machine
export PATH=$PATH:$GOPATH/bin

export AA_RAILS_DIR=~/git/collectiveidea/advisory-alpha-rails
