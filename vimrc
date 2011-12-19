filetype plugin indent on

set nocompatible

" Security
set modelines=0

" Map leader
let mapleader = ","
let g:mapleader = ","

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
set colorcolumn=85


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

" sudo save
cmap w!! w !sudo dd of=%

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>



