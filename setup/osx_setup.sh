#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cd /Users/rudy/mysettings/setup
brew bundle

sudo visudo
#%admin▸ ▸   ALL = (ALL) NOPASSWD: ALL
