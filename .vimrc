set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"
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
set ignorecase
set smartcase

"tab preferences
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4

"make vim look pretty
colorscheme molokai
set background=dark

"ctrl + p to use fuzzy finder
map <C-p> :FufFile<ENTER>

"powerline always visible
set laststatus=2

"make powerline look not terrible
let g:Powerline_symbols = 'fancy'

syntax enable
set number

"mouse use in vim
set mouse=a

"use jj to go into normal mode 
imap jj <ESC>
imap JJ <ESC>

"this shows at least 3 lines above and below the cursor 
set scrolloff=3

"allows for easy latex building. F2 is mapped so that pressing that will
"compile the latex document and display it in evince
command Latex execute "silent !pdflatex % > /dev/null && evince %:r.pdf > /dev/null 2>&1 &" | redraw!
map <F2>  :w <CR> :Latex <ENTER>

"spell check
map <F3> :setlocal spell spelllang=en_us <ENTER>

"ignore files you dont' want to edit with vim
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pdf,*.bak,*.beam
