set nocompatible            
filetype off               
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
call vundle#end()
filetype plugin indent on 
syntax on
set exrc
set secure
set hidden
set wildmenu
set showcmd
set ts=2
set sts=2
set shiftwidth=2
set expandtab
set smarttab
set si
set ai
set nu
set cin
set cinoptions+=L0
set cinoptions+=g0
set hlsearch
set ruler
set vb t_vb=
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
set backspace=indent,eol,start
set t_Co=256
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum
colorscheme peachpuff
set background=dark
"set termguicolors
set colorcolumn=100
highlight Comment ctermfg=Green
highlight ColorColumn ctermbg=darkgray
highlight CursorLine term=bold cterm=none ctermbg=none ctermfg=none gui=bold
highlight CursorLineNr term=bold cterm=none ctermbg=darkgray ctermfg=yellow gui=bold
highlight Pmenu term=bold cterm=none ctermbg=darkgray ctermfg=None gui=bold
highlight PmenuSel term=bold cterm=none ctermbg=blue ctermfg=None gui=bold
set cursorline

let g:python_recommended_style=0
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$']
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
