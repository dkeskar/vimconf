set tabstop=2 
set shiftwidth=2
set autoindent
set smarttab
set expandtab
set backspace=start,indent
set hlsearch
set foldmethod=syntax
set foldlevelstart=99
syntax on

filetype plugin indent on

autocmd FileType make		set noexpandtab
autocmd FileType python	set noexpandtab
autocmd FileType eruby set ft=html.eruby

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

map <C-n> :NERDTree<Enter>

imap <C-.> <%=<Space>%><Esc>hhha
imap <C-,> <%<Space>%><Esc>hhha

set runtimepath=~/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/after,~/.vim/fuzzyfinder

