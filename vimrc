set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/vundle/
silent! call vundle#rc()
if exists("*vundle#rc")
    Bundle 'gmarik/vundle'

    " FuzzyFinder
    if version >= 703
        Bundle 'L9'
        Bundle 'FuzzyFinder'
        let g:fuf_modesDisable = []
        nnoremap <space>h :FufHelp<cr>
        nnoremap <space>f :FufFileWithCurrentBufferDir<cr>
        nnoremap <space>b :FufBuffer<cr>
        nnoremap <space>r :FufMruFile<cr>
        nnoremap <space>n :FufLine<cr>
        nnoremap <space>d :FufDirWithCurrentBufferDir<cr>
    else
        Bundle 'FuzzyFinder1.4.1'
        nnoremap <space>f :FuzzyFinderFile<cr>
        nnoremap <space>b :FuzzyFinderBuffer<cr>
        nnoremap <space>r :FuzzyFinderMruFile<cr>
    endif

    " git
    Bundle 'tpope/vim-git'
    Bundle 'tpope/vim-fugitive'

    " utils
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-commentary'
endif

filetype plugin indent on

" Security
set modelines=0

" Map leader
let mapleader = ","
let g:mapleader = ","

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
if has ("persistent_undo")
    set undofile
    set undodir=~/.vim/tmp/undo//
endif
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set viewdir=~/.vim/tmp/view//

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap n nzzzv
nnoremap N Nzzzv

" Wrapping
set nowrap
nnoremap j gj
nnoremap k gk

" Windows
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h

" Other UI
set background=dark
colorscheme desert
syntax on
set showmode
set showcmd
set ruler
set laststatus=2
set scrolloff=3
if version >= 703
    set relativenumber
    set colorcolumn=85
endif

" Others
set ffs=unix,dos,mac
set history=750
set encoding=utf-8
set hidden
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set autochdir
set clipboard=unnamed
set pastetoggle=<F2>

inoremap jj <ESC>
inoremap kk <ESC>
inoremap hh <ESC>

