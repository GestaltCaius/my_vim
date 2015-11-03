set number
set mouse=a
syntax on
colorscheme Mustang
set nocompatible
set ruler
set smartindent

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
