set number
set lines=56
set columns=120
set guioptions-=T
set guifont=Menlo\ Regular:h12.0
set fuoptions=maxvert,maxhorz
colorscheme ir_black
"colorscheme mac_classic
set linespace=3
"set linespace=4

" markdown behaviors
autocmd FileType mdown set ft=mkd
augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

