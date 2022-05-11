syntax on
set ts=2
set sts=2
set shiftwidth=2
set expandtab
set smarttab
set si
set ai
set cin
set nu
set hlsearch
set ruler
set vb t_vb=
set cursorline
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
highlight Comment ctermfg=Green
set backspace=indent,eol,start
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
let g:python_recommended_style = 0
set t_Co=256
set termguicolors
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum
colorscheme xcodedark
