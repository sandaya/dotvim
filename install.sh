#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

ln -sfn $(pwd)/vimrc ~/.vimrc

[ ! -d "tmp" ] && mkdir "tmp"
cd tmp
[ ! -d "backup" ] && mkdir "backup"
[ ! -d "swap" ] && mkdir "swap"
[ ! -d "undo" ] && mkdir "undo"
[ ! -d "view" ] && mkdir "view"
cd ~

if [ -d ./bundle/vundle ]; then
    cd ./bundle/vundle
    git pull origin master
else
    git clone https://github.com/gmarik/vundle.git ./bundle/vundle
fi

vim +BundleInstall +qall

