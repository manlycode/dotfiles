# Path to your oh-my-zsh installation.
# export ZSH=/Users/manlycode/.oh-my-zsh

# If not running interactively, don't do anything
case $- in
 	*i*) ;;
	*) return;;
esac

# Exit if called from vim
[[ -n $VIMRUNTIME ]] && return

# Exit if called from atom
[[ -n $ATOM_HOME ]] && return

source ~/.zplug/init.zsh

# Set Theme
zplug "mafredri/zsh-async", from:github, defer:0  # Load this first
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme, defer:3

zplug "lib/compfix", from:oh-my-zsh, defer:0
zplug "lib/clipboard", from:oh-my-zsh, defer:0
zplug "lib/directories", from:oh-my-zsh, defer:0
zplug "lib/grep", from:oh-my-zsh, defer:0
zplug "lib/key-bindings", from:oh-my-zsh, defer:0
zplug "lib/misc", from:oh-my-zsh, defer:0
zplug "lib/termsupport", from:oh-my-zsh, defer:0
zplug "lib/theme-and-appearance", from:oh-my-zsh, defer:0
 
# Pure ZSH theme
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "plugins/bundler", from:oh-my-zsh
zplug "zsh-users/zsh-completions"

# Misc
# zsh-syntax-highlighting must be loaded after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-autosuggestions", defer:3


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

alias re-source="source ~/.zshrc"

# alias docker-remove-all-containers="docker rm $(docker ps -a -q)"
# alias docker-remove-all-images="docker rmi $(docker images -q)"

# BASE16 configuration
# I love this color scheme like Toby Keith loves this bar and grill
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"



h=`date +%H`
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
export SKETCH_PLUGINS_PATH=/Users/manlycode/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins

export BOOT_JVM_OPTIONS="-client 
-XX:+TieredCompilation 
-XX:TieredStopAtLevel=1 
-Xmx2g 
-XX:+UseConcMarkSweepGC 
-XX:+CMSClassUnloadingEnabled 
-Xverify:none"

# HUB https://github.com/github/hub/tree/master/etc
eval "$(hub alias -s)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
