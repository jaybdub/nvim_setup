#!/bin/bash

# install neovim
sudo apt install -y neovim python3-neovim

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
# create init.vim
INIT_VIM=$HOME/.config/nvim/init.vim
if [[ -f $INIT_VIM ]]
then
	read -p "Overwrite $INIT_VIM? [Y/N]"
	if [[ ! $REPLY =~ ^[Yy]$ ]]
	then
		exit
	fi
fi
		
cp init.vim $INIT_VIM
