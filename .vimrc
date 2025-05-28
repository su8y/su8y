let mapleader=" "

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent

set nu
set rnu
set mouse=
set cursorline
set list
set listchars=space:·,tab:▸\ ,eol:↴


function! SearchWordInCFiles()
        let l:word = expand('<cword>')
        execute 'lvimgrep /' . escape(l:word, '/\') . '/ **/*.c **/*.h **/*.cpp'
        execute 'normal! <C-o>'
endfunction

function! GrepWord()
    let l:word = expand('<cword>')
    execute 'vimgrep /' . escape(l:word, '/\') . '/ **/*.c **/*.h **/*.cpp'
endfunction

nnoremap L gt
nnoremap H gT
nnoremap <leader>te :Texplore<CR>
nnoremap <leader>le :Lexplore<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>qo :tabonly<CR>
nnoremap gF :tabe <cfile><CR>

nnoremap * :let @/='<C-r><C-w>'<CR>

nnoremap <leader>g* :call GrepWord()<CR><C-o>:cw<CR>
vnoremap <leader>g* :call GrepWord()<CR><C-o>:cw<CR>

nnoremap <leader>* *:call SearchWordInCFiles()<CR><C-o>:lop<CR>
vnoremap <leader>* *:call SearchWordInCFiles()<CR><C-o>:lop<CR>

" Build
nnoremap <F10> :w<CR>:vert terminal sh -c "gcc % -o %< && ./%< 2>&1"<CR>

