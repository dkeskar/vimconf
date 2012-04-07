set nocompatible

set ruler

set encoding=utf-8
set tabstop=2 
set shiftwidth=2
set autoindent
set smarttab
set expandtab
set list listchars=tab:\ \ ,trail:·

set backspace=start,indent,eol
set foldmethod=syntax
set foldlevelstart=99
syntax on

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

filetype plugin indent on

autocmd FileType make		set noexpandtab
autocmd FileType python	set noexpandtab
autocmd FileType eruby set ft=html.eruby

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
au BufRead,BufNewFile *.txt call s:setupWrapping()

autocmd BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn set ai formatoptions=tcroqn2 comments=n:>

let mapleader=","
imap <C-l> <Space>=><Space>
"map <Leader>t :FuzzyFinderTextMate<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <C-S-h> <C-w>h<C-w>_
"map <C-S-j> <C-w>j<C-w>_
"map <C-S-k> <C-w>k<C-w>_
"map <C-S-l> <C-w>l<C-w>_

imap <C-.> <%=<Space>%><Esc>hhha
imap <C-,> <%<Space>%><Esc>hhha

" NERDTree, Command-T, Ctags
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
let g:CommandTMaxHeight=20
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" ragtag - tag matching
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set runtimepath=~/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/after,~/.vim/fuzzyfinder

let g:slime_target = "screen"

