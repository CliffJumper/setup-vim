execute pathogen#infect()
syntax on
filetype plugin indent on

set nu
set ai

map ,fg :cs find g <cword><CR>
map ,fc :cs find c <cword><CR>
map ,fs :cs find s <cword><CR>

map <F8> :TagbarToggle<CR>



