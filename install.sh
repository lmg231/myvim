#!/bin/bash
mv .vimrc ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wait
mkdir ~/.vim/ftplugin
echo -e "let b:ale_linters = ['flake8']\nlet b:ale_fixers = ['autopep8']" > ~/.vim/ftplugin/python.vim
echo -e "let b:ale_linters = ['eslint']\nlet b:ale_fixers = ['eslint']" > ~/.vim/ftplugin/javascript.vim
echo "let b:ale_linters = ['shellcheck']" > ~/.vim/ftplugin/sh.vim
echo "请进入vim，暂时忽略vim错误提示，输入冒号到命令模式下，敲入PlugInstall执行安装插件后，再回到这里执行bash move.sh"
