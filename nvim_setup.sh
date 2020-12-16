#!/bin/bash

# install neovim
sudo apt install -y neovim python3-neovim

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
# create init.vim
INIT_VIM=$HOME/.config/nvim/init.vim

echo "call plug#begin(stdpath('data') . '/plugged')" >> $INIT_VIM
echo "Plug 'neoclide/coc.nvim', {'branch': 'release'}" >> $INIT_VIM
echo "call plug#end()" >> $INIT_VIM
