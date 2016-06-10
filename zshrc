# Path to your oh-my-zsh installation.
export ZSH=/Users/manlycode/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rake bundler rails rake-fast zshmarks tmuxinator docker go)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"

alias pulls="git browse -- pulls"
alias mux="tmuxinator"

function set_bg {
  export BG_SHADE=$1
  BASE16_SHELL="$HOME/.config/base16-shell/base16-default.$BG_SHADE.sh"
  [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
}

# set_bg "$(node ~/git/manlycode/bash-bg/index.js)"
set_bg "dark"


if docker-machine ls -q --filter state=Running | grep default; then
  eval $(docker-machine env default)
fi


export GOPATH=/Users/manlycode/go
export PATH=/Users/manlycode/.gem/ruby/2.3.0/bin:/Users/manlycode/.rubies/ruby-2.3.0/lib/ruby/gems/2.3.0/bin:/Users/manlycode/.rubies/ruby-2.3.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/manlycode/.fzf/bin:/Users/manlycode/go/bin

export PATH="/Users/manlycode/.cargo/bin:$PATH"
export PATH="/Users/manlycode/bin:$PATH"


# https://github.com/github/hub/tree/master/etc
eval "$(hub alias -s)"
fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

export RUST_SRC_PATH="/Users/manlycode/src/rust/src"

h=`date +%H`
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
export SKETCH_PLUGINS_PATH=/Users/manlycode/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins

# added by travis gem
[ -f /Users/manlycode/.travis/travis.sh ] && source /Users/manlycode/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.1
source /usr/local/opt/chruby/share/chruby/auto.sh

if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi
