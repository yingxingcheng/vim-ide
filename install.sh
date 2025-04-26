#!/bin/bash
#
mkdir -p ~/software
cd ~/software
git clone git@github.com:yingxingcheng/vim-ide.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/
ln -s ~/software/vim-ide.git/vimrc .vimrc
