# ------------------------------------------------------------
# General
# ------------------------------------------------------------
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Users/manlycode/bin:$PATH"

# ------------------------------------------------------------
# Python 
# ------------------------------------------------------------
export NOSE_REDNOSE=1
export PYTHONDONTWRITEBYTECODE="true"

# ------------------------------------------------------------
# Go
# ------------------------------------------------------------
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# ------------------------------------------------------------
# Rust 
# ------------------------------------------------------------
export RUST_SRC_PATH="/Users/manlycode/src/rust/src"
export EDITOR='vim'
export PATH="/Users/manlycode/.cargo/bin:$PATH"

export BOOT_JVM_OPTIONS="-client 
-XX:+TieredCompilation 
-XX:TieredStopAtLevel=1 
-Xmx2g 
-XX:+UseConcMarkSweepGC 
-XX:+CMSClassUnloadingEnabled 
-Xverify:none"



if [[ -n $VIMRUNTIME ]]; then
  # ------------------------------------------------------------
  # Ruby
  # ------------------------------------------------------------
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  chruby ruby-2.3.3
  source /usr/local/opt/chruby/share/chruby/auto.sh

  # ------------------------------------------------------------
  # Python
  # ------------------------------------------------------------
  if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
  if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

  # HUB https://github.com/github/hub/tree/master/etc
  eval "$(hub alias -s)"
  alias pulls="git browse -- pulls"
fi

