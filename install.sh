#!/bin/bash
move .vimrc ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wait
mkdir ~/.vim/ftplugin
echo -e "let b:ale_linters = ['flake8']\nlet b:ale_fixers = ['autopep8']" > ~/.vim/ftplugin/python.vim
echo -e "let b:ale_linters = ['eslint']\nlet b:ale_fixers = ['eslint']" > ~/.vim/ftplugin/javascript.vim
echo "let b:ale_linters = ['shellcheck']" > ~/.vim/ftplugin/sh.vim
echo "请进入vim执行：PlugInstall后，再执行bash move.sh"
