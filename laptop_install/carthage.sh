#!/usr/bin/env bash

brew install carthage

# Fixes for carthage and xcode 12
cp $HOME/.dotfiles/shell/carthage.sh $HOME/bin
chmod +x $HOME/bin/carthage.sh