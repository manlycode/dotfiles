# fpath=(~/.zsh/completions $fpath) 
# autoload -U compinit && compinit
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# -----------------------------------------------------------------
# zplug configuration
# https://github.com/zplug/zplug
# -----------------------------------------------------------------
source ~/.zplug/init.zsh

# Set Theme
# zplug "mafredri/zsh-async", from:github, defer:0  # Load this first
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme, defer:3
# zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme, defer:3

zplug "lib/functions", from:oh-my-zsh, defer:0
zplug "lib/key-bindings", from:oh-my-zsh, defer:0
zplug "lib/compfix", from:oh-my-zsh, defer:0
zplug "lib/clipboard", from:oh-my-zsh, defer:0
zplug "lib/directories", from:oh-my-zsh, defer:0
zplug "lib/grep", from:oh-my-zsh, defer:0
zplug "lib/key-bindings", from:oh-my-zsh, defer:0
zplug "lib/misc", from:oh-my-zsh, defer:0
zplug "lib/termsupport", from:oh-my-zsh, defer:0
zplug "lib/tmuxinator", from:oh-my-zsh, defer:0

zplug "plugins/colored-man-pages", from:oh-my-zsh, defer:3
zplug "plugins/bundler", from:oh-my-zsh, defer:3
zplug "plugins/rspec", from:oh-my-zsh, defer:3
zplug "plugins/rake", from:oh-my-zsh, defer:3

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
##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

SPACESHIP_PROMPT_ORDER=(
	time
	host
	package
	ruby
	xcode
	swift
	golang
	php
	docker
	aws
	line_sep
	dir
	git
	exec_time
	line_sep
	exit_code
	char
)

SPACESHIP_RPROMPT_ORDER=(
	jobs
)

SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true

SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT="%D{%d-%m-%Y %H.%M.%S}"
SPACESHIP_BATTERY_SHOW=always

SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_ELAPSED=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"
eval "dark-mode-$(dark-mode status)"

