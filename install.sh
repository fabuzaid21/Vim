#!/usr/bin/env bash

set -x

# sudo apt-get install build-essential cmake python-dev python3-dev

rm -rf .vim && git checkout .vim # reset .vim folder
cd $HOME
rm -rf .vim .vimrc
ln -s Vim/.vimrc
ln -s Vim/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer \
	--java-completer \
	--js-completer \
	--rust-completer \
        --ts-completer \
	--go-completer

