set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
silent! call vundle#begin()
if exists("*vundle#begin")
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-commentary'

    Plugin 'kien/ctrlp.vim'
    let g:ctrlp_map = ''
    let g:ctrlp_regexp = 1
    nnoremap <space>f :CtrlPMixed<cr>

    Plugin 'scrooloose/nerdtree'
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    nnoremap <space>t :NERDTreeToggle<cr>

endif
silent! call vundle#end()
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
set whichwrap+=<,>,h,l
set autochdir
set clipboard=unnamed
set pastetoggle=<F2>
"set magic

inoremap jj <ESC>



