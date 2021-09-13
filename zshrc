export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Set key bindings (Ctrl+V Key to see key code)
bindkey -e
bindkey "^A" vi-beginning-of-line # Ctrl+A
bindkey "^E"       vi-end-of-line # Ctrl+E
bindkey "^P"       up-history     # Ctrl+E
bindkey "^N"       down-history     # Ctrl+E
bindkey "^[[1;5C"    forward-word # Ctrl+Right
bindkey "^[[1;5D"   backward-word # Ctrl+Left
bindkey ";2A"          up-history # Shift+Up
bindkey ";2B"        down-history # Shift+Down
bindkey "^[[5~"        up-history # PageUp
bindkey "^[[6~"      down-history # PageDown

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# -----------------------------------------------------------------
# zinit configuration
# https://github.com/zdharma/zinit
# -----------------------------------------------------------------
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
# Load the pure theme, with zsh-async library that's bundled with it.

# ------------------------------------------------------------
# Theme
# ------------------------------------------------------------
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
# zinit ice pick"async.zsh" src"pure.zsh"
# zinit light sindresorhus/pure
# ------------------------------------------------------------

zinit load jocelynmallon/zshmarks
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-completions
zinit snippet OMZP::bundler
# zinit as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' \
#     atpull'%atclone' pick"direnv" src"zhook.zsh" for \
#         direnv/direnv 
zinit from"gh-r" as"program" mv"direnv* -> direnv" \
    atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' \
    pick"direnv" src="zhook.zsh" for \
        direnv/direnv

# fpath=(~/.zsh/completions $fpath) 
autoload -Uz compinit
compinit
zinit cdreplay -q
zinit cdlist
zinit load "asdf-vm/asdf"

### End Zinit


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"
eval "dark-mode-$(dark-mode status)"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# vim: set ft=sh:
. /usr/local/opt/asdf/libexec/asdf.sh
