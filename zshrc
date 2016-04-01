export PATH=./bin:$PATH

function set_bg {
  export BG_SHADE=$1
  BASE16_SHELL="$HOME/.config/base16-shell/base16-bright.$BG_SHADE.sh"
  [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
}

h=`date +%H`

if [ $h -lt 17 ]; then
  set_bg "light"
else
  set_bg "dark"
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/manlycode/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(rake bundler git rails rake-fast zshmarks tmuxinator docker)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'

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
alias bundle_and_reset="bundle && rake db:seed:demo"
alias edit-nginx="vim /usr/local/etc/nginx/nginx.conf && sudo nginx -s reload"
alias rake="noglob bundled_rake"


# Node.js
export PATH=$PATH:node_modules/.bin

# Tmuxinator
export DISABLE_AUTO_TITLE=true
PATH=$PATH:$HOME/.cli-scripts/bin
PATH=$PATH:$HOME/.bartlett/bin

# Rust
export RUST_SRC_PATH="/usr/local/src/rust/src"

export PATH="/usr/local/bin:/Users/manlycode/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:node_modules/.bin
export PATH=$PATH:$HOME/.cli-scripts/bin
export PATH=$PATH:/usr/bin/local
export PATH=$(npm bin):$PATH
export PATH=./node_modules/.bin:$PATH
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.0

source ~/.bin/tmuxinator.zsh

source /usr/local/opt/chruby/share/chruby/auto.sh
eval "$(hub alias -s)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi


export GRADLE_OPTS="-Dorg.gradle.daemon=tru"

# docker-machine start docker
# eval "$(docker-machine env docker)"

# 10ms for key sequences
KEYTIMEOUT=1
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools

# Neovim Server
export NVIM_LISTEN_ADDRESS=/tmp/neovim/neovim nvim 
export PATH="/usr/local/sbin:$PATH"
