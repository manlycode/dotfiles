# ------------------------------------------------------------
# General
# ------------------------------------------------------------
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/bin:$PATH"

# ------------------------------------------------------------
# Python 
# ------------------------------------------------------------
export NOSE_REDNOSE=1
export PYTHONDONTWRITEBYTECODE="true"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# ------------------------------------------------------------
# Go
# ------------------------------------------------------------
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$PWD:$HOME/go/bin
export PATH=$PATH:$GOPATH/bin

# ------------------------------------------------------------
# Ruby
# ------------------------------------------------------------
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# ------------------------------------------------------------
# Rust 
# ------------------------------------------------------------
export RUST_SRC_PATH="$HOME/src/rust/src"
export EDITOR='nvim'
export PATH="$HOME/.cargo/bin:$PATH"

export BOOT_JVM_OPTIONS="-client 
-XX:+TieredCompilation 
-XX:TieredStopAtLevel=1 
-Xmx2g 
-XX:+UseConcMarkSweepGC 
-XX:+CMSClassUnloadingEnabled 
-Xverify:none"

# HUB https://github.com/github/hub/tree/master/etc
alias pulls="git browse -- pulls"
export PATH="/usr/local/opt/swift/bin:$PATH"
export ZSHENV_LOADED="yes"
