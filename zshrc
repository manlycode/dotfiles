if [[ -z "${ZSHENV_LOADED}" ]]; then
  source $HOME/.zshenv
fi

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi


# If not running interactively, don't do anything
case $- in
 	*i*) ;;
	*) return;;
esac

# -----------------------------------------------------------------
# zplug configuration
# https://github.com/zplug/zplug
# -----------------------------------------------------------------
source ~/.zplug/init.zsh

# Set Theme
zplug "mafredri/zsh-async", from:github, defer:0  # Load this first
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme, defer:3

zplug "lib/functions", from:oh-my-zsh, defer:0
zplug "lib/key-bindings", from:oh-my-zsh, defer:0
zplug "lib/compfix", from:oh-my-zsh, defer:0
zplug "lib/clipboard", from:oh-my-zsh, defer:0
zplug "lib/directories", from:oh-my-zsh, defer:0
zplug "lib/grep", from:oh-my-zsh, defer:0
zplug "lib/key-bindings", from:oh-my-zsh, defer:0
zplug "lib/misc", from:oh-my-zsh, defer:0
zplug "lib/termsupport", from:oh-my-zsh, defer:0
zplug "lib/theme-and-appearance", from:oh-my-zsh, defer:0

zplug "plugins/colored-man-pages", from:oh-my-zsh, defer:3
zplug "plugins/tmuxinator", from:oh-my-zsh, defer:3
zplug "plugins/bundler", from:oh-my-zsh, defer:3
zplug "plugins/rspec", from:oh-my-zsh, defer:3

# Misc
# zsh-syntax-highlighting must be loaded after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-autosuggestions", defer:3
zplug "vasyharan/zsh-brew-services"
zplug "jocelynmallon/zshmarks"

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load


# BASE16 configuration
# I love this color scheme like Toby Keith loves this bar and grill
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

function kill_pumas() {
  kill -9 $(lsof -i tcp:3000 -t)
}

# HUB https://github.com/github/hub/tree/master/etc
# eval "$(hub alias -s)"
alias git="hub"
alias pulls="git browse -- pulls"

export POSTMASTER_PID_FILE="/usr/local/var/postgres/postmaster.pid"
# Aliases
alias zshconfig="vim ~/.zshrc"
alias mux="tmuxinator"
alias re-source="source ~/.zshrc"
alias vim="nvim"
alias kill-pumas="kill_pumas"
alias reset-postgres="rm $POSTMASTER_PID_FILE"
# alias zip-all="find . -name \"*.zip\" | while read filename; do unzip -o -d \"`dirname \"$filename\"`\" \"$filename\"; done;"
eval "$(direnv hook zsh)"
export PATH="$HOME/bin:$PATH"

unzip_all() {
 find . -name "*.zip" | while read filename; do unzip -o -d "`dirname "$filename"`" "$filename"; done;
}
