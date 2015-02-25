set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmark/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'L9'
Bundle 'Lokaltog/vim-powerline'
Bundle 'FuzzyFinder'

let g:syntastic_python_checkers = ['frosted']

filetype plugin indent on
set t_Co=256
set t_ut=
let g:syntastic_c_checkers=['gcc']
map <C-p> :FufFile<ENTER>

set nowrap
set laststatus=2
syntax on
set incsearch
set autoindent
set mouse=a
set cindent
set number
set scrolloff=3
set showmode
set showcmd
set expandtab
set background=dark
colorscheme molokai
set tabstop=4
set wildmenu
set wildmode=list:longest
set ruler
set ignorecase
set smartcase
let g:Powerline_symbols = 'fancy'
inoremap jj <ESC>
inoremap JJ <ESC>
nnoremap <leader>w <C-w>v<C-w>l
