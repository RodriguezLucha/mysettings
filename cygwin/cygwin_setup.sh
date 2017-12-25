#!/bin/bash

# Install all requirements
# apt-cyg install wget
# apt-cyg install ncurses
# apt-cyg install libevent
# apt-cyg install libncurses-devel
# apt-cyg install ncurses
# apt-cyg install curl
# apt-cyg install python3
# apt-cyg install python3-pip
# apt-cyg install python3-devel
# apt-cyg install python2
# apt-cyg install python2-pip
# apt-cyg install python2-devel
# apt-cyg install procps
# apt-cyg install git
# apt-cyg install libssh
# apt-cyg install openssh
# apt-cyg install nc
# apt-cyg install gcc-g++
# apt-cyg install make
# apt-cyg install cmake
# apt-cyg install libevent-devel
# apt-cyg install the_silver_searcher
# apt-cyg install zip
# apt-cyg install unzip

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
# rm .minttyrc
# rm .dir_colors
# rm -rf scripts
# rm powerline-shell-proxy/config.py
# rm powerline-shell-proxy/powerline-shell.py.template
# rm .tmux/plugins/tmux-themepack/powerline/block/cyan.tmuxtheme
# rm .tmux/plugins/tmux-themepack/powerline/block/gray.tmuxtheme
# 
# ln -s mysettings/linux/.tmux.conf .tmux.conf
# ln -s mysettings/linux/.bashrc .bashrc
# ln -s mysettings/linux/.minttyrc .minttyrc
# ln -s mysettings/linux/scripts scripts
# ln -s mysettings/linux/.dir_colors .
# ln -s mysettings/linux/custom/powerline-shell-proxy/config.py powerline-shell-proxy/config.py
# ln -s mysettings/linux/custom/powerline-shell-proxy/powerline-shell.py.template powerline-shell-proxy/powerline-shell.py.template
# cp mysettings/linux/custom/tmux_themes/cyan.tmuxtheme .tmux/plugins/tmux-themepack/powerline/block/
# cp mysettings/linux/custom/tmux_themes/gray.tmuxtheme .tmux/plugins/tmux-themepack/powerline/block/

# Compile VIM with python3 support and async capabilities
# TODO: Try neovim on linux
# cd vim
# ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-cygwin/ --prefix=/usr/local/
# apt-cyg remove vim vim-common vim-minimal
# make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
# make install
# cd ~

# Compile autojump
# cd autojump
# ./install.py
# cd ~

# Install all VIM Plugins
# vim -c 'PluginInstall' -c 'qa!'

#YouCompleteMe
# .vim/bundle/youcompleteme/install.py

# Compile latest version of tmux
# mysettings/linux/build_tmux.sh

