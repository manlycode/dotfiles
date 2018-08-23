# fpath=(~/.zsh/completions $fpath) 
# autoload -U compinit && compinit

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

zplug "plugins/colored-man-pages", from:oh-my-zsh, defer:3
zplug "plugins/bundler", from:oh-my-zsh, defer:3
zplug "plugins/rspec", from:oh-my-zsh, defer:3

# Misc
# zsh-syntax-highlighting must be loaded after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-autosuggestions", defer:3
zplug "vasyharan/zsh-brew-services"
zplug "jocelynmallon/zshmarks"

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

source ~/.dotfiles/shell/base16
source ~/.dotfiles/shell/hub
eval "$(direnv hook zsh)"


export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
