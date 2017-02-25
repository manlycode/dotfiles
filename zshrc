# If not running interactively, don't do anything
case $- in
 	*i*) ;;
	*) return;;
esac

# Exit if called from vim
[[ -n $VIMRUNTIME ]] && return

# Exit if called from atom
[[ -n $ATOM_HOME ]] && return

# -----------------------------------------------------------------
# zplug configuration
# https://github.com/zplug/zplug
# -----------------------------------------------------------------
source ~/.zplug/init.zsh

# Set Theme
zplug "mafredri/zsh-async", from:github, defer:0  # Load this first
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme, defer:3

# Misc
# zsh-syntax-highlighting must be loaded after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-autosuggestions", defer:3

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
zplug load --verbose


# BASE16 configuration
# I love this color scheme like Toby Keith loves this bar and grill
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# HUB https://github.com/github/hub/tree/master/etc
eval "$(hub alias -s)"

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Aliases
alias zshconfig="vim ~/.zshrc"
alias pulls="git browse -- pulls"
alias mux="tmuxinator"
alias re-source="source ~/.zshrc"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.1
source /usr/local/opt/chruby/share/chruby/auto.sh
