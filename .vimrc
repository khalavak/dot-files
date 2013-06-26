set background=dark
colorscheme solarized

syntax on
filetype indent plugin on
filetype plugin indent on

set nocompatible
set number
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set textwidth=0
set tw=0
set colorcolumn=79
set showcmd

autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR> 
cmap w!! %!sudo tee > /dev/null %

call pathogen#infect() 

