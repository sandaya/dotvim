#!/bin/sh

ln -sfn ~/.vim/vimrc ~/.vimrc

cd ~/.vim
[ ! -d "tmp" ] && mkdir "tmp"
cd tmp
[ ! -d "backup" ] && mkdir "backup"
[ ! -d "swap" ] && mkdir "swap"
[ ! -d "undo" ] && mkdir "undo"
[ ! -d "view" ] && mkdir "view"
cd ~

