set nocompatible
filetype off

com! -nargs=? Bundle
set runtimepath+=~/.vim/bundle/vundle/
silent! call vundle#rc()
if !exists("*vundle#rc")
    set runtimepath+=~/.vim/bundle/pathogen
    silent! call pathogen#inject()
endif

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'

filetype plugin indent on

" Security
set modelines=0

" Map leader
let mapleader = ","
let g:mapleader = ","

" Reload vimrc on edit
autocmd! bufwritepost vimrc source $MYVIMRC

" sudo save
cmap w!! w !sudo dd of=%

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Backup, undo and other directories
set backup
set undofile
set undoreload=10000
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//
set viewdir=~/.vim/tmp/view//

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>

" Wrapping
set nowrap
set colorcolumn=85

" Tabs and Windows
set switchbuf=usetab

" Other UI
syntax on
set background=dark
colorscheme desert
set showmode
set showcmd
"set ttyfast
set ruler
set relativenumber
set laststatus=2
set scrolloff=3

" Others
set ffs=unix,dos,mac
set history=750
set encoding=utf-8
set hidden
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set autochdir

nnoremap j gj
nnoremap k gk

inoremap jj <ESC>
inoremap kk <ESC>
inoremap hh <ESC>


"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>



