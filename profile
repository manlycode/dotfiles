export PATH="/usr/local/opt/openjdk/bin:$PATH"
  
# added by Particle CLI
# add home bin directory to PATH if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
