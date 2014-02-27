set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarick/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on


set incsearch
syntax on
set t_Co=256
set t_ut=
let g:synastic_c_checkers=['gcc']
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4
colorscheme molokai
set background=dark
map <C-p> :FufFile<ENTER>
set laststatus=2
let g:Powerline_symbols = 'fancy'

syntax enable
set number
set mouse=a
imap jj <ESC>
command Latex execute "silent !pdflatex % > /dev/null && evince %:r.pdf > /dev/null 2>&1 &" | redraw!
map <F2> :Latex<ENTER>
