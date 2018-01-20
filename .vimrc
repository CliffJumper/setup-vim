execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set expandtab
set nu
set ai

map ,fg :cs find g <cword><CR>
map ,fc :cs find c <cword><CR>
map ,fs :cs find s <cword><CR>

map <F8> :TagbarToggle<CR>



