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
set nuw=4
set cinoptions=L0,g0,l1,:0
set cin
set hlsearch
set ruler
set vb t_vb=
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
map K <Nop>
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

set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=\ %{StatuslineMode()}
set statusline+=\ 
set statusline+=%1*
set statusline+=\ 
set statusline+=%F
set statusline+=\ 
set statusline+=%=
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 
set statusline+=%{b:gitbranch}
set statusline+=\ 
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ 
set statusline+=%3*
set statusline+=%2*\ 0x%04B\ %*          "character under cursor
hi User1 ctermbg=darkblue ctermfg=white guibg=black guifg=white
hi User2 ctermbg=darkgreen ctermfg=white guibg=lightgreen guifg=black
hi User3 ctermbg=black ctermfg=darkblue guibg=black guifg=lightblue
hi User4 ctermbg=black ctermfg=darkgreen guibg=black guifg=lightgreen
hi User5 ctermbg=darkblue ctermfg=white guibg=black guifg=magenta

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

let g:NERDTreeStatusline = '%#NonText#'
let g:python_recommended_style=0
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$']
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
