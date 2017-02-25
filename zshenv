# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Users/manlycode/bin:$PATH"

# ------------------------------------------------------------
# Python settings
# ------------------------------------------------------------
export NOSE_REDNOSE=1
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PYTHONDONTWRITEBYTECODE="true"

# ------------------------------------------------------------
# Rust settings
# ------------------------------------------------------------
export RUST_SRC_PATH="/Users/manlycode/src/rust/src"
export EDITOR='vim'
export PATH="/Users/manlycode/.cargo/bin:$PATH"

# Aliases
alias zshconfig="vim ~/.zshrc"
alias pulls="git browse -- pulls"
alias mux="tmuxinator"


source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.1
source /usr/local/opt/chruby/share/chruby/auto.sh

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export AA_RAILS_DIR=~/git/collectiveidea/advisory-alpha-rails
