execute pathogen#infect()
set number
set mouse=a
syntax on
set lbr!
set t_Co=256
colorscheme Mustang
set nocompatible
set ruler
set smartindent
set showcmd
set hlsearch
set visualbell t_vb=
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set fileencoding=utf-8
set laststatus=2
set colorcolumn=80
highlight ColorColumn ctermbg=8
highlight MatchParen ctermbg=NONE ctermfg=93

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

"Made by Youssof Al Aouf (yalaouf)
