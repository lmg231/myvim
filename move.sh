#!/bin/bash
mkdir ~/.vim/ftplugin
echo -e "let b:ale_linters = ['flake8']\\nlet b:ale_fixers = ['autopep8']" > ~/.vim/ftplugin/python.vim
echo -e "let b:ale_linters = ['eslint']\\nlet b:ale_fixers = ['eslint']" > ~/.vim/ftplugin/javascript.vim
echo "let b:ale_linters = ['shellcheck']" > ~/.vim/ftplugin/sh.vim
mv emmet.vim ~/.vim/plugged/emmet-vim/autoload
