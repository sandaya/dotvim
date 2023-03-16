#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

ln -sfn $(pwd)/vimrc ~/.vimrc
[ ! -d ~/.vim ] && ln -sfn $(pwd) ~/.vim

[ ! -d "tmp" ] && mkdir "tmp"
cd tmp
[ ! -d "backup" ] && mkdir "backup"
[ ! -d "swap" ] && mkdir "swap"
[ ! -d "undo" ] && mkdir "undo"
[ ! -d "view" ] && mkdir "view"
cd ~
