export PATH="/Users/manlycode/.rbenv/shims:/usr/local/bin:/Users/manlycode/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:node_modules/.bin
export PATH=$PATH:$HOME/.cli-scripts/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=./bin:$PATH


function set_bg {
  export BG_SHADE=$1
  echo "Setting BG_SHADE to $BG_SHADE"
  BASE16_SHELL="$HOME/.config/base16-shell/base16-bright.$BG_SHADE.sh"
  [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
}

h=`date +%H`

if [ $h -lt 19 ]; then
  set_bg "light"
else
  set_bg "dark"
fi
