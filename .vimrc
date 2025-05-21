let mapleader=" "

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent

set nu
set rnu
set foldmethod=syntax
set mouse=
set cursorline

autocmd BufReadPost * normal zR

nmap L gt
nmap H gT
nmap <leader>te :Texplore<CR>
nmap <leader>le :Lexplore<CR>
nmap <leader>e :Explore<CR>
nmap gF :tabe <cfile><CR>

"nnoremap <leader>* viwy:execute ' match Search \@0\ '<CR>:execute ' vertical rightbelow terminal bash -c "grep -rn '@0' --include=\*.{c,h,py,java,cpp} " '<CR>
"vnoremap <leader>* y:execute ' match Search \@0\ '<CR> :execute ' vertical rightbelow terminal bash -c "grep -rn '@0' --include=\*.{c,h,py,java,cpp} " '<CR>
" USE cw, ccl, cdo {command}
nnoremap <leader>* viwy:execute 'vimgrep '@0' * '<CR>:cw<CR>
vnoremap <leader>* viwy:execute 'vimgrep '@0' * '<CR>:cw<CR>
