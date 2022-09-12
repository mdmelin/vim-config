#!/usr/bin/bash

# todo: manage installation of vim 8.1 if system version isn't compatible with plugins

# install vundle, the package manager
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/deleteme
cd ~/deleteme

# clone and move my vim config file to the proper spot
git clone https://github.com/mdmelin/vim-config.git
cp ~/deleteme/vim-config/.vimrc ~


vim +PluginInstall +qall

#YouCompleteMe install requires cmake and other dependencies
apt install build-essential cmake vim-nox python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py

# Install color scheme
cd ~/deleteme
git clone https://github.com/mhartington/oceanic-next.git
cd oceanic-next
cp colors/OceanicNext.vim ~/.vim/colors

vim +PluginInstall +qall
rm -r ~/deleteme
