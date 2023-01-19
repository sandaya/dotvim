set nocompatible
set encoding=utf-8
scriptencoding utf-8
language en_US.utf-8
set fileencoding=utf-8

filetype plugin indent on
syntax enable

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
set linebreak
set showbreak=>\

" Windows
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h

" Other UI
set background=dark
colorscheme desert

set confirm
set cursorline
set showmode
set showcmd
set ruler
set laststatus=2
set scrolloff=3
set relativenumber
set colorcolumn=80

set clipboard+=unnamed
set clipboard+=unnamedplus

set splitbelow splitright

set fileformats=unix,dos,mac
set history=750
set hidden
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set autochdir
set pastetoggle=<F2>

set completeopt+=menuone
set pumheight=15

set virtualedit=block

set title
set titlestring=
set titlestring+=%(%{hostname()}\ \ %)
set titlestring+=%(%{expand('%:p')}\ \ %)
set titlestring+=%{strftime('%Y-%m-%d\ %H:%M',getftime(expand('%')))}

inoremap jj <ESC>



