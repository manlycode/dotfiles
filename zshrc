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
zplug "plugins/chruby", from:oh-my-zsh, defer:3
zplug "plugins/bundler", from:oh-my-zsh, defer:3

# Misc
# zsh-syntax-highlighting must be loaded after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-autosuggestions", defer:3
zplug "vasyharan/zsh-brew-services"

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

# Aliases
alias zshconfig="vim ~/.zshrc"
alias mux="tmuxinator"
alias re-source="source ~/.zshrc"
