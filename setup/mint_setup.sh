#!/bin/bash

# Install all requirements
# apt update
# apt upgrade -y
# apt install openssh-server -y
# apt install build-essential -y
# apt install ncurses-dev -y
# apt install git -y
# apt install cmake -y
# apt install silversearcher-ag -y
# apt install libevent-dev -y
# apt install python-pip -y
# apt install python3-pip -y
# apt install python3-setuptools -y
# apt install python-setuptools -y
# apt install htop -y
# apt install nethogs -y
# apt install python-dev -y
# apt install python3-dev -y
# apt install mongodb-server -y
# apt install autojump -y
# apt install g++ -y
# apt install ctags -y
# apt install tidy -y
# apt install ncdu -y
# apt install dict dictd dict-gcide
# apt install stress

# Clone various repos
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# git clone https://github.com/vim/vim.git
# git clone https://github.com/konradmiller/powerline-shell-proxy.git
# git clone https://github.com/wting/autojump.git
# git clone https://github.com/seebi/dircolors-solarized.git

# Clone personal git settings, make sure ssh keys are setup if not ssh-keygen it
# git clone git@github.com:RodriguezLucha/mysettings.git

# Custom fonts have to be manually installed on Windows
# wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
# wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf

# Custom git settings copied instead of softlinked to prevent errors
# cp mysettings/linux/.gitignore_global .
# cp mysettings/linux/.gitconfig .

# Softlink various config files
# rm .tmux.conf
# rm .bashrc
# rm .dir_colors
# rm -rf scripts
# rm powerline-shell-proxy/config.py
# rm powerline-shell-proxy/powerline-shell.py.template
# rm .tmux/plugins/tmux-themepack/powerline/block/cyan.tmuxtheme
# rm .tmux/plugins/tmux-themepack/powerline/block/gray.tmuxtheme
# 
# ln -s mysettings/linux/.tmux.conf .tmux.conf
# ln -s mysettings/linux/.vimrc .vimrc
# ln -s mysettings/linux/.bashrc .bashrc
# ln -s mysettings/linux/.zshrc .zshrc
# ln -s mysettings/linux/scripts scripts
# ln -s mysettings/linux/.dir_colors .
# ln -s mysettings/linux/custom/powerline-shell-proxy/config.py powerline-shell-proxy/config.py
# ln -s mysettings/linux/custom/powerline-shell-proxy/powerline-shell.py.template powerline-shell-proxy/powerline-shell.py.template
# cp mysettings/linux/custom/tmux_themes/cyan.tmuxtheme .tmux/plugins/tmux-themepack/powerline/block/
# cp mysettings/linux/custom/tmux_themes/gray.tmuxtheme .tmux/plugins/tmux-themepack/powerline/block/

# Compile VIM with python3 support and async capabilities
# TODO: Try neovim on linux
# cd vim
# ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --prefix=/usr/local/
# apt remove vim vim-common vim-minimal
# make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
# make install
# cd ~

# Install all VIM Plugins
# vim -c 'PluginInstall' -c 'qa!'

# Latest version of node and npm

#YouCompleteMe
# .vim/bundle/youcompleteme/install.py --js-completer

# Compile latest version of tmux
# mysettings/linux/build_tmux.sh

# Python modules
# pip3 install stormssh
# pip3 install pep8
# pip3 install yapf
# pip3 install pymongo
# pip3 install redis
# pip3 install ansible

# Setup run root command without typing password everytime
# root (preserve vim editor)
# visudo
# rudy    ALL=(ALL:ALL) NOPASSWD: ALL

# Run host update script on startup
# crontab -e
# @reboot /home/rudy/scripts/dropbox.py start
# @reboot FLASK_APP=/home/rudy/scripts/hosts_updater.py /usr/local/bin/flask run > /home/rudy/.cronlog.txt 2>&1


# Latest version of node.js
# npm install -g js-beautify
# npm install -g git+https://github.com/ramitos/jsctags.git
# npm install -g xreader/git-for-humans

